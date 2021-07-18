package §[!8§
{
   import §0!G§.b2Mat22;
   import §0!G§.b2Math;
   import §0!G§.b2Transform;
   import §0!G§.b2Vec2;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   import §`j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §7!"§:b2Vec2;
      
      private var §4!8§:b2Vec2;
      
      private var §"Z§:b2Vec2;
      
      private var §#9§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §]2§:b2Mat22;
      
      private var § !6§:b2Vec2;
      
      private var §4v§:Number;
      
      private var §]!]§:Number;
      
      private var §@!C§:Number;
      
      private var §=!C§:Number;
      
      private var §"`§:Number;
      
      private var §'!E§:Number;
      
      private var §?;§:Boolean;
      
      private var §`a§:Boolean;
      
      private var §,4§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_ || this)
         {
            this.m_localAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
            }
            addr324:
         }
         loop1:
         while(true)
         {
            this.§7!"§ = new b2Vec2();
            loop2:
            while(true)
            {
               this.§4!8§ = new b2Vec2();
               loop3:
               while(!_loc5_)
               {
                  this.§"Z§ = new b2Vec2();
                  loop4:
                  while(true)
                  {
                     this.§#9§ = new b2Vec2();
                     loop5:
                     while(true)
                     {
                        this.§]2§ = new b2Mat22();
                        loop6:
                        while(true)
                        {
                           this.§ !6§ = new b2Vec2();
                           loop7:
                           while(true)
                           {
                              super(param1);
                              loop8:
                              while(true)
                              {
                                 this.m_localAnchor1.SetV(param1.§;9§);
                                 loop9:
                                 while(true)
                                 {
                                    this.m_localAnchor2.SetV(param1.§-y§);
                                    loop10:
                                    while(true)
                                    {
                                       this.§7!"§.SetV(param1.§0v§);
                                       while(true)
                                       {
                                          §§push(this.§4!8§);
                                          while(true)
                                          {
                                             §§push(this.§7!"§);
                                             addr222:
                                             addr239:
                                             while(true)
                                             {
                                                §§push(§§pop().y);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   §§push(-§§pop());
                                                }
                                                addr231:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   continue loop9;
                                                }
                                             }
                                             §§push(this.§4!8§);
                                             if(!_loc6_)
                                             {
                                                continue;
                                             }
                                             §§push(this.§7!"§);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc5_)
                                                {
                                                   §§pop().y = §§pop();
                                                   loop16:
                                                   while(true)
                                                   {
                                                      this.§ !6§.§3a§();
                                                      while(true)
                                                      {
                                                         this.§4v§ = 0;
                                                         continue loop16;
                                                         addr141:
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            continue loop10;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr222);
                                             }
                                             §§goto(addr231);
                                          }
                                          addr166:
                                          loop20:
                                          while(_loc6_ || _loc3_)
                                          {
                                             this.§=!C§ = param1.§>Z§;
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§goto(addr141);
                                                }
                                                §§goto(addr190);
                                                addr58:
                                                if(_loc5_ && param1)
                                                {
                                                   continue;
                                                }
                                                if(_loc5_ && this)
                                                {
                                                   continue loop9;
                                                }
                                                this.§#9§.§3a§();
                                                addr72:
                                                if(!_loc5_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      loop25:
                                                      while(_loc6_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            this.§,4§ = b2internal::%W;
                                                            loop26:
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  addr79:
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     addr86:
                                                                     if(!(_loc5_ && _loc2_))
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              break;
                                                                              addr56:
                                                                           }
                                                                           this.§"Z§.§3a§();
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop26;
                                                                              }
                                                                              §§goto(addr58);
                                                                              §§goto(addr72);
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        continue loop20;
                                                                     }
                                                                     addr129:
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        this.§'!E§ = param1.motorSpeed;
                                                                        §§goto(addr86);
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§?;§ = param1.§1&§;
                                                                     §§goto(addr79);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     this.§`a§ = param1.§^=§;
                                                                     continue loop25;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop8;
                                                   }
                                                   addr44:
                                                   if(_loc6_ || param1)
                                                   {
                                                      return;
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr56);
                                             }
                                             continue loop10;
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
               §§goto(addr324);
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::`p.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%^.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§ !6§.x);
            if(_loc2_)
            {
               §§push(this.§#9§.x);
               if(_loc2_ || this)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this.§]!]§);
                     if(!_loc3_)
                     {
                        §§push(this.§ !6§.y);
                        if(_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc2_ || _loc2_)
                           {
                              §§push(this.§"Z§.x);
                              if(_loc2_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr86:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(!_loc3_)
                                       {
                                          §§push(this.§ !6§.x);
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr100:
                                             §§push(this.§#9§.y);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc3_)
                                                {
                                                   addr108:
                                                   §§push(this.§]!]§);
                                                   if(!_loc3_)
                                                   {
                                                      addr112:
                                                      §§push(this.§ !6§.y);
                                                      if(_loc2_)
                                                      {
                                                         §§goto(addr139);
                                                      }
                                                      addr139:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc2_ || param1)
                                                      {
                                                         addr135:
                                                         §§push(this.§"Z§.y);
                                                      }
                                                      return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr135);
                                                }
                                             }
                                             §§goto(addr139);
                                          }
                                          §§goto(addr108);
                                       }
                                    }
                                 }
                                 §§goto(addr139);
                              }
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr86);
               }
               §§goto(addr108);
            }
         }
         §§goto(addr86);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!_loc3_)
         {
            return §§pop() * this.§ !6§.y;
         }
      }
      
      public function §,1§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::`p;
         var _loc2_:b2Body = b2internal::%^;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(!(_loc11_ && _loc2_))
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc11_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_.y);
         if(!_loc11_)
         {
            §§push(§§pop() - _loc4_.y);
            if(!(_loc11_ && _loc1_))
            {
               addr82:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§!!%§(this.§7!"§)).x);
            if(_loc10_ || _loc1_)
            {
               §§push(_loc6_);
               if(!(_loc11_ && this))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc10_ || _loc1_)
                  {
                     addr115:
                     §§push(_loc8_.y);
                     if(_loc10_ || _loc3_)
                     {
                        §§push(§§pop() * _loc7_);
                        if(_loc10_)
                        {
                           addr138:
                           §§push(§§pop() + §§pop());
                           if(!_loc11_)
                           {
                              addr141:
                              §§push(Number(§§pop()));
                           }
                           §§push(§§pop());
                        }
                        var _loc9_:* = §§pop();
                        return §§pop();
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr141);
               }
               §§goto(addr138);
            }
            §§goto(addr115);
         }
         §§goto(addr82);
      }
      
      public function §<P§() : Number
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::`p;
         var _loc2_:b2Body = b2internal::%^;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc21_ || _loc3_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!_loc22_)
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!(_loc22_ && _loc3_))
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(!_loc22_)
               {
                  addr66:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(_loc3_.col1.x);
               if(_loc21_)
               {
                  §§push(_loc4_);
                  if(!(_loc22_ && this))
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc22_ && _loc3_))
                     {
                        §§push(_loc3_.col2.x);
                        if(_loc21_)
                        {
                           addr94:
                           §§push(§§pop() * _loc5_);
                        }
                        §§push(§§pop() + §§pop());
                        if(!(_loc22_ && _loc2_))
                        {
                           addr104:
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc6_:* = §§pop();
                     if(_loc21_ || this)
                     {
                        §§push(_loc3_.col1.y);
                        if(!(_loc22_ && _loc2_))
                        {
                           §§push(_loc4_);
                           if(_loc21_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc22_ && _loc1_))
                              {
                                 §§push(_loc3_.col2.y);
                                 if(!_loc22_)
                                 {
                                    addr141:
                                    §§push(§§pop() + §§pop() * _loc5_);
                                    if(_loc21_)
                                    {
                                       addr144:
                                       §§push(Number(§§pop()));
                                       if(!_loc22_)
                                       {
                                          addr147:
                                          _loc5_ = §§pop();
                                          if(!_loc22_)
                                          {
                                             addr150:
                                             §§push(_loc6_);
                                             if(!(_loc22_ && this))
                                             {
                                                addr159:
                                                _loc4_ = Number(§§pop());
                                             }
                                             §§goto(addr159);
                                          }
                                          _loc3_ = _loc2_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(!_loc22_)
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                             if(!(_loc22_ && _loc1_))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc7_:* = §§pop();
                                          §§push(this.m_localAnchor2.y);
                                          if(!_loc22_)
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                             if(_loc21_)
                                             {
                                                addr196:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc8_:* = §§pop();
                                             if(!(_loc22_ && _loc3_))
                                             {
                                                §§push(_loc3_.col1);
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!(_loc22_ && _loc2_))
                                                   {
                                                      §§push(_loc7_);
                                                      if(_loc21_)
                                                      {
                                                         addr324:
                                                         §§push(§§pop() * §§pop());
                                                         while(true)
                                                         {
                                                            §§push(_loc3_.col2);
                                                            addr326:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               addr327:
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_);
                                                                  addr328:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr324:
                                                      }
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop3:
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_.col1);
                                                                     if(_loc22_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§push(§§pop().y);
                                                                     if(!_loc22_)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(!(_loc22_ && _loc2_))
                                                                        {
                                                                           if(!_loc21_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc22_ && _loc2_))
                                                                           {
                                                                              §§push(_loc3_.col2);
                                                                              if(_loc21_)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    addr281:
                                                                                    if(!(_loc22_ && _loc1_))
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc22_ && _loc1_))
                                                                                          {
                                                                                             addr299:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             loop6:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr301:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   addr302:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc22_ && this))
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            if(_loc22_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               addr344:
                                                                                                               §§push(§§pop() + _loc4_);
                                                                                                               if(!(_loc22_ && this))
                                                                                                               {
                                                                                                                  addr353:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc9_:* = §§pop();
                                                                                                               §§push(_loc1_.m_sweep.c.y);
                                                                                                               if(!_loc22_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + _loc5_);
                                                                                                                  if(!(_loc22_ && _loc1_))
                                                                                                                  {
                                                                                                                     addr380:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  var _loc10_:* = §§pop();
                                                                                                                  §§push(_loc2_.m_sweep.c.x);
                                                                                                                  if(!(_loc22_ && this))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc7_);
                                                                                                                     if(!(_loc22_ && _loc1_))
                                                                                                                     {
                                                                                                                        addr402:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc11_:* = §§pop();
                                                                                                                     §§push(_loc2_.m_sweep.c.y);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + _loc8_);
                                                                                                                        if(_loc21_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     var _loc12_:* = §§pop();
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(!(_loc22_ && _loc1_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() - _loc9_);
                                                                                                                        if(_loc21_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr438:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc13_:* = §§pop();
                                                                                                                        §§push(_loc12_);
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - _loc10_);
                                                                                                                           if(!_loc22_)
                                                                                                                           {
                                                                                                                              addr447:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc14_:* = §§pop();
                                                                                                                           var _loc15_:b2Vec2 = _loc1_.§!!%§(this.§7!"§);
                                                                                                                           var _loc16_:b2Vec2 = _loc1_.§,?§;
                                                                                                                           var _loc17_:b2Vec2 = _loc2_.§,?§;
                                                                                                                           §§push(_loc1_.m_angularVelocity);
                                                                                                                           if(!_loc22_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc18_:* = §§pop();
                                                                                                                           §§push(_loc2_.m_angularVelocity);
                                                                                                                           if(!_loc22_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc19_:* = §§pop();
                                                                                                                           §§push(_loc13_);
                                                                                                                           if(!_loc22_)
                                                                                                                           {
                                                                                                                              §§push(_loc18_);
                                                                                                                              if(_loc21_ || _loc1_)
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                                 if(!(_loc22_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(_loc15_.y);
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc21_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc22_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(!(_loc22_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr517:
                                                                                                                                                §§push(_loc18_);
                                                                                                                                                if(!_loc22_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc15_.x);
                                                                                                                                                   if(_loc21_ || _loc1_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc21_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc21_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!(_loc22_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc15_.x);
                                                                                                                                                               if(!_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  addr557:
                                                                                                                                                                  §§push(_loc17_.x);
                                                                                                                                                                  if(!_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     addr561:
                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                     if(!(_loc22_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           addr572:
                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                           if(_loc21_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr583:
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(!(_loc22_ && _loc1_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc16_.x);
                                                                                                                                                                                    if(_loc21_ || _loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    addr625:
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    if(_loc21_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc21_ || _loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr641:
                                                                                                                                                                                          §§push(_loc15_.y);
                                                                                                                                                                                          if(_loc21_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr650:
                                                                                                                                                                                             §§push(_loc17_.y);
                                                                                                                                                                                             if(_loc21_ || _loc1_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                if(!_loc22_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr662:
                                                                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                                                                   if(!(_loc22_ && _loc1_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(!(_loc22_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr678:
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(!_loc22_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr681:
                                                                                                                                                                                                            §§push(_loc16_.y);
                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr699);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr699:
                                                                                                                                                                                                            addr700:
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            if(!(_loc22_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr696:
                                                                                                                                                                                                                  §§push(§§pop() * _loc4_);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr703:
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(!(_loc22_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr722:
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr722);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            var _loc20_:* = §§pop();
                                                                                                                                                                                                            return §§pop();
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr699);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr696);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr678);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr699);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr703);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr700);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr650);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              if(!_loc22_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr603:
                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                 if(!_loc22_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                    if(!(_loc22_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc5_);
                                                                                                                                                                                       if(!_loc22_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc21_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr625);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr681);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr625);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr681);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr650);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr662);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr583);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr572);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr650);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr641);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr722);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr703);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr603);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr625);
                                                                                                                                                }
                                                                                                                                                §§goto(addr561);
                                                                                                                                             }
                                                                                                                                             §§goto(addr557);
                                                                                                                                          }
                                                                                                                                          §§goto(addr722);
                                                                                                                                       }
                                                                                                                                       §§goto(addr703);
                                                                                                                                    }
                                                                                                                                    §§goto(addr650);
                                                                                                                                 }
                                                                                                                                 §§goto(addr517);
                                                                                                                              }
                                                                                                                              §§goto(addr703);
                                                                                                                           }
                                                                                                                           §§goto(addr722);
                                                                                                                        }
                                                                                                                        §§goto(addr447);
                                                                                                                     }
                                                                                                                     §§goto(addr438);
                                                                                                                  }
                                                                                                                  §§goto(addr402);
                                                                                                               }
                                                                                                               §§goto(addr380);
                                                                                                            }
                                                                                                         }
                                                                                                         if(!(_loc21_ || _loc2_))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr344);
                                                                                       }
                                                                                       §§goto(addr328);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr299);
                                                                              }
                                                                              §§goto(addr326);
                                                                           }
                                                                           §§goto(addr344);
                                                                        }
                                                                        §§goto(addr281);
                                                                     }
                                                                     §§goto(addr301);
                                                                  }
                                                                  §§goto(addr327);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr324);
                                                }
                                             }
                                             §§goto(addr246);
                                          }
                                          §§goto(addr196);
                                       }
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr94);
               }
               §§goto(addr104);
            }
            §§goto(addr66);
         }
         §§goto(addr47);
      }
      
      public function §&&§() : Boolean
      {
         return this.§?;§;
      }
      
      public function §=<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::`p.SetAwake(true);
            while(true)
            {
               b2internal::%^.SetAwake(true);
               while(!_loc2_)
               {
                  this.§?;§ = param1;
                  if(_loc3_)
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public function §!!E§() : Number
      {
         return this.§@!C§;
      }
      
      public function §@U§() : Number
      {
         return this.§=!C§;
      }
      
      public function §6!L§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            b2internal::`p.SetAwake(true);
            while(true)
            {
               b2internal::%^.SetAwake(true);
               §§goto(addr84);
            }
         }
         addr84:
         while(true)
         {
            this.§@!C§ = param1;
            do
            {
               this.§=!C§ = param2;
            }
            while(!(_loc4_ || param1));
            
            if(_loc4_ || param2)
            {
               if(!(_loc3_ && param1))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §!o§() : Boolean
      {
         return this.§`a§;
      }
      
      public function §?!2§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            b2internal::`p.SetAwake(true);
            while(true)
            {
               b2internal::%^.SetAwake(true);
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            this.§`a§ = param1;
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §;X§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            b2internal::`p.SetAwake(true);
         }
         do
         {
            b2internal::%^.SetAwake(true);
            do
            {
               this.§'!E§ = param1;
            }
            while(!_loc2_);
            
         }
         while(!_loc2_);
         
      }
      
      public function §class§() : Number
      {
         return this.§'!E§;
      }
      
      public function §8,§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            b2internal::`p.SetAwake(true);
            while(true)
            {
               b2internal::%^.SetAwake(true);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§"`§ = param1;
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §9!C§() : Number
      {
         return this.§"`§;
      }
      
      public function §#!?§() : Number
      {
         return this.§]!]§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
