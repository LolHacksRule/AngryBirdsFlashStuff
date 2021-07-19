package §1!2§
{
   import §+#$§.b2Body;
   import §+#$§.b2TimeStep;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Mat22;
   import §[R§.b2Mat33;
   import §[R§.b2Math;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   import §[R§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §"j§:b2Vec2;
      
      private var §-#=§:b2Vec2;
      
      private var §7"H§:Number;
      
      private var §<#§:b2Vec2;
      
      private var §2#U§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §<i§:b2Mat33;
      
      private var §##,§:b2Vec3;
      
      private var §99§:Number;
      
      private var §4#5§:Number;
      
      private var §2!<§:Number;
      
      private var §%!N§:Number;
      
      private var §'!9§:Number;
      
      private var §7#R§:Number;
      
      private var §'s§:Boolean;
      
      private var §9!X§:Boolean;
      
      private var §<!G§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc5_ && _loc3_))
         {
            this.m_localAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§"j§ = new b2Vec2();
                  while(true)
                  {
                     this.§-#=§ = new b2Vec2();
                     loop3:
                     while(_loc6_)
                     {
                        if(!_loc6_)
                        {
                           continue loop1;
                        }
                        this.§<#§ = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§2#U§ = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§<i§ = new b2Mat33();
                              loop6:
                              while(true)
                              {
                                 this.§##,§ = new b2Vec3();
                                 loop7:
                                 while(true)
                                 {
                                    super(param1);
                                    while(_loc6_)
                                    {
                                       this.m_localAnchor1.SetV(param1.§!"4§);
                                       loop9:
                                       for(; _loc6_ || this; if(!(_loc6_ || this))
                                       {
                                          continue;
                                       },this.§'s§ = param1.§#d§,loop27:
                                       while(true)
                                       {
                                          this.§9!X§ = param1.§!#G§;
                                          loop28:
                                          while(!_loc5_)
                                          {
                                             this.§<!G§ = b2internal::"!G;
                                             loop29:
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop27;
                                                }
                                                if(_loc5_ && _loc3_)
                                                {
                                                   break;
                                                }
                                                if(!_loc5_)
                                                {
                                                   this.§<#§.§&"Q§();
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop29;
                                                      addr77:
                                                      this.§2#U§.§&"Q§();
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         if(_loc5_ && param1)
                                                         {
                                                            continue loop28;
                                                         }
                                                         §§goto(addr54);
                                                         continue loop28;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      this.§'!9§ = param1.§0A§;
                                                      §§goto(addr140);
                                                   }
                                                   addr159:
                                                }
                                                §§goto(addr254);
                                             }
                                             continue loop7;
                                          }
                                          §§goto(addr192);
                                       })
                                       {
                                          this.m_localAnchor2.SetV(param1.§#"B§);
                                          loop10:
                                          while(true)
                                          {
                                             this.§"j§.SetV(param1.§&#M§);
                                             while(true)
                                             {
                                                §§push(this.§-#=§);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(this.§"j§);
                                                   addr251:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().y);
                                                      addr252:
                                                      while(true)
                                                      {
                                                         §§push(-§§pop());
                                                         addr253:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            addr254:
                                                            while(!_loc5_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                   }
                                                }
                                                loop17:
                                                while(!(_loc5_ && _loc3_))
                                                {
                                                   this.§7"H§ = param1.§!#W§;
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      this.§##,§.§&"Q§();
                                                      while(true)
                                                      {
                                                         this.§99§ = 0;
                                                         addr192:
                                                         while(true)
                                                         {
                                                            this.§4#5§ = 0;
                                                            addr187:
                                                            while(true)
                                                            {
                                                               this.§2!<§ = param1.§2!@§;
                                                               continue loop7;
                                                            }
                                                         }
                                                         addr120:
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            continue loop9;
                                                         }
                                                      }
                                                      addr142:
                                                      if(!(_loc6_ || param1))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         continue loop17;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§7#R§ = param1.motorSpeed;
                                                         addr113:
                                                         addr140:
                                                         while(_loc6_ || _loc3_)
                                                         {
                                                            §§goto(addr120);
                                                            if(!(_loc5_ && this))
                                                            {
                                                               return;
                                                            }
                                                         }
                                                         while(!_loc5_)
                                                         {
                                                            §§goto(addr142);
                                                            §§goto(addr113);
                                                         }
                                                         §§goto(addr187);
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                              if(!(_loc6_ || this))
                              {
                                 continue;
                              }
                              §§goto(addr77);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr153);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!g.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: "z.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§##,§.x);
            if(!_loc3_)
            {
               §§push(this.§2#U§.x);
               if(!_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc3_)
                  {
                     §§push(this.§4#5§);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(this.§##,§.z);
                        if(!_loc3_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              addr50:
                              §§push(this.§<#§.x);
                              if(_loc2_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_ || this)
                                    {
                                       addr76:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr85:
                                          §§push(this.§##,§.x);
                                          if(_loc2_)
                                          {
                                             addr90:
                                             §§push(this.§2#U§.y);
                                             if(_loc2_ || this)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc2_)
                                                {
                                                   §§push(this.§4#5§);
                                                   if(!_loc3_)
                                                   {
                                                      addr107:
                                                      §§push(this.§##,§.z);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         §§goto(addr139);
                                                      }
                                                      addr139:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         addr135:
                                                         §§push(this.§<#§.y);
                                                      }
                                                      return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr135);
                                                }
                                                §§goto(addr139);
                                             }
                                             §§goto(addr107);
                                          }
                                       }
                                       §§goto(addr139);
                                    }
                                    §§goto(addr85);
                                 }
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr90);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr50);
                  }
                  §§goto(addr76);
               }
               §§goto(addr139);
            }
            §§goto(addr85);
         }
         §§goto(addr76);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_ || param1)
         {
            return §§pop() * this.§##,§.y;
         }
      }
      
      public function §##2§() : Number
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::2!g;
         var _loc2_:b2Body = b2internal:: "z;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(_loc11_)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc11_)
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(!(_loc10_ && _loc2_))
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc11_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§8!b§(this.§"j§)).x);
            if(_loc11_ || _loc2_)
            {
               §§push(_loc6_);
               if(!(_loc10_ && _loc3_))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc10_)
                  {
                     §§push(_loc8_.y);
                     if(_loc11_)
                     {
                        §§push(§§pop() * _loc7_);
                        if(_loc11_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc11_ || this)
                           {
                              addr128:
                              §§push(Number(§§pop()));
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr128);
                        }
                     }
                  }
                  §§goto(addr128);
               }
               var _loc9_:* = §§pop();
               return §§pop();
            }
            §§goto(addr128);
         }
         §§goto(addr47);
      }
      
      public function §&!Z§() : Number
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::2!g;
         var _loc2_:b2Body = b2internal:: "z;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(_loc21_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
            if(_loc21_)
            {
               addr56:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(!(_loc22_ && _loc3_))
            {
               §§push(_loc4_);
               if(_loc21_ || this)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc21_ || _loc1_)
                  {
                     §§push(_loc3_.col2.x);
                     if(_loc21_ || _loc2_)
                     {
                        addr94:
                        §§push(§§pop() * _loc5_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc22_ && _loc1_)
                     {
                     }
                     addr105:
                     var _loc6_:* = §§pop();
                     if(_loc21_)
                     {
                        §§push(_loc3_.col1.y);
                        if(!(_loc22_ && this))
                        {
                           §§push(_loc4_);
                           if(_loc21_ || _loc2_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc22_ && this))
                              {
                                 §§push(_loc3_.col2.y);
                                 if(_loc21_)
                                 {
                                    addr141:
                                    §§push(§§pop() + §§pop() * _loc5_);
                                    if(_loc21_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc22_)
                                       {
                                          addr147:
                                          _loc5_ = §§pop();
                                          addr155:
                                          if(!_loc22_)
                                          {
                                             §§push(_loc6_);
                                             if(!_loc22_)
                                             {
                                                addr153:
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          _loc3_ = _loc2_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(_loc21_ || this)
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                             if(_loc21_ || _loc1_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc7_:* = §§pop();
                                          §§push(this.m_localAnchor2.y);
                                          if(!(_loc22_ && _loc2_))
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                             if(_loc21_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc8_:* = §§pop();
                                          if(!_loc22_)
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
                                                   if(_loc21_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.col2);
                                                         addr322:
                                                         addr360:
                                                         do
                                                         {
                                                            §§push(§§pop().x);
                                                         }
                                                         while(!(_loc22_ && _loc2_));
                                                         
                                                         addr369:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc21_ || _loc3_)
                                                         {
                                                            addr368:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         addr369:
                                                         var _loc9_:* = §§pop();
                                                         §§push(_loc1_.m_sweep.c.y);
                                                         if(!(_loc22_ && _loc2_))
                                                         {
                                                            §§push(§§pop() + _loc5_);
                                                            if(!_loc22_)
                                                            {
                                                               addr385:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc10_:* = §§pop();
                                                            §§push(_loc2_.m_sweep.c.x);
                                                            if(!(_loc22_ && _loc1_))
                                                            {
                                                               §§push(§§pop() + _loc7_);
                                                               if(_loc21_)
                                                               {
                                                                  addr402:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(_loc2_.m_sweep.c.y);
                                                               if(!(_loc22_ && _loc1_))
                                                               {
                                                                  §§push(§§pop() + _loc8_);
                                                                  if(_loc21_ || _loc3_)
                                                                  {
                                                                     addr424:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc12_:* = §§pop();
                                                                  §§push(_loc11_);
                                                                  if(!(_loc22_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() - _loc9_);
                                                                     if(!_loc22_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  var _loc13_:* = §§pop();
                                                                  §§push(_loc12_);
                                                                  if(!_loc22_)
                                                                  {
                                                                     §§push(§§pop() - _loc10_);
                                                                     if(!(_loc22_ && this))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  var _loc14_:* = §§pop();
                                                                  var _loc15_:b2Vec2 = _loc1_.§8!b§(this.§"j§);
                                                                  var _loc16_:b2Vec2 = _loc1_.§ #`§;
                                                                  var _loc17_:b2Vec2 = _loc2_.§ #`§;
                                                                  §§push(_loc1_.m_angularVelocity);
                                                                  if(_loc21_)
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
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push(_loc18_);
                                                                     if(!_loc22_)
                                                                     {
                                                                        §§push(-§§pop());
                                                                        if(!_loc22_)
                                                                        {
                                                                           §§push(_loc15_.y);
                                                                           if(!(_loc22_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc22_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    §§push(_loc14_);
                                                                                    if(!_loc22_)
                                                                                    {
                                                                                       §§push(_loc18_);
                                                                                       if(!(_loc22_ && _loc1_))
                                                                                       {
                                                                                          §§push(_loc15_.x);
                                                                                          if(!_loc22_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc22_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   addr525:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      addr528:
                                                                                                      §§push(_loc15_.x);
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         addr532:
                                                                                                         §§push(_loc17_.x);
                                                                                                         if(!(_loc22_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(_loc19_);
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                               if(!(_loc22_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        addr558:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           addr561:
                                                                                                                           §§push(_loc16_.x);
                                                                                                                           if(_loc21_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(!_loc22_)
                                                                                                                              {
                                                                                                                                 addr573:
                                                                                                                                 §§push(_loc18_);
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    §§push(-§§pop());
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       addr579:
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc22_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(!_loc22_)
                                                                                                                                             {
                                                                                                                                                addr588:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc21_)
                                                                                                                                                {
                                                                                                                                                   addr591:
                                                                                                                                                   §§push(_loc15_.y);
                                                                                                                                                   if(_loc21_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc17_.y);
                                                                                                                                                      if(_loc21_)
                                                                                                                                                      {
                                                                                                                                                         addr599:
                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                         if(!(_loc22_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                            if(_loc21_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  addr613:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(_loc21_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     addr621:
                                                                                                                                                                     §§push(_loc16_.y);
                                                                                                                                                                     if(_loc21_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr644);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr641);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr644);
                                                                                                                                                               }
                                                                                                                                                               addr644:
                                                                                                                                                               addr645:
                                                                                                                                                               addr630:
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(!_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  addr633:
                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                  if(!(_loc22_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr641:
                                                                                                                                                                     §§push(§§pop() * _loc4_);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                               if(!_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  addr648:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(_loc21_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr667:
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr667);
                                                                                                                                                               }
                                                                                                                                                               var _loc20_:* = §§pop();
                                                                                                                                                               return §§pop();
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr641);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr621);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr645);
                                                                                                                                                }
                                                                                                                                                §§goto(addr648);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr644);
                                                                                                                                       }
                                                                                                                                       §§goto(addr613);
                                                                                                                                    }
                                                                                                                                    §§goto(addr621);
                                                                                                                                 }
                                                                                                                                 §§goto(addr579);
                                                                                                                              }
                                                                                                                              §§goto(addr588);
                                                                                                                           }
                                                                                                                           §§goto(addr599);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr644);
                                                                                                                  }
                                                                                                                  §§goto(addr630);
                                                                                                               }
                                                                                                               §§goto(addr633);
                                                                                                            }
                                                                                                            §§goto(addr599);
                                                                                                         }
                                                                                                         §§goto(addr644);
                                                                                                      }
                                                                                                      §§goto(addr648);
                                                                                                   }
                                                                                                   §§goto(addr667);
                                                                                                }
                                                                                                §§goto(addr532);
                                                                                             }
                                                                                             §§goto(addr573);
                                                                                          }
                                                                                          §§goto(addr558);
                                                                                       }
                                                                                       §§goto(addr573);
                                                                                    }
                                                                                    §§goto(addr591);
                                                                                 }
                                                                                 §§goto(addr667);
                                                                              }
                                                                              §§goto(addr525);
                                                                           }
                                                                           §§goto(addr561);
                                                                        }
                                                                     }
                                                                     §§goto(addr532);
                                                                  }
                                                                  §§goto(addr528);
                                                               }
                                                               §§goto(addr424);
                                                            }
                                                            §§goto(addr402);
                                                         }
                                                         §§goto(addr385);
                                                      }
                                                      addr320:
                                                   }
                                                   while(true)
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
                                                            if(!(_loc22_ && _loc1_))
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               addr352:
                                                               while(true)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr292:
                                                               if(!(_loc21_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               _loc8_ = §§pop();
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  if(_loc21_ || _loc2_)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(!_loc22_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc22_ && _loc2_))
                                                                        {
                                                                           addr218:
                                                                           if(_loc21_ || _loc1_)
                                                                           {
                                                                              if(!_loc22_)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§push(_loc1_.m_sweep.c.x);
                                                                                    if(!_loc22_)
                                                                                    {
                                                                                       break loop11;
                                                                                    }
                                                                                    §§goto(addr369);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr320);
                                                                              }
                                                                              §§goto(addr369);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 §§push(_loc7_);
                                                                                 if(_loc21_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc21_ || _loc1_)
                                                                                    {
                                                                                       §§push(_loc3_.col2);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             addr268:
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                       §§goto(addr360);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr289:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr292);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr268);
                                                                                 §§goto(addr218);
                                                                              }
                                                                              addr243:
                                                                           }
                                                                           §§goto(addr368);
                                                                        }
                                                                        §§goto(addr369);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr352);
                                                               }
                                                               §§goto(addr360);
                                                               §§push(_loc4_);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr230);
                                       }
                                       §§goto(addr153);
                                    }
                                    _loc4_ = §§pop();
                                    §§goto(addr155);
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr147);
                  }
                  §§goto(addr105);
                  §§push(Number(§§pop()));
               }
               §§goto(addr94);
            }
            §§goto(addr105);
         }
         §§goto(addr56);
      }
      
      public function §['§() : Boolean
      {
         return this.§'s§;
      }
      
      public function §8""§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            b2internal::2!g.SetAwake(true);
            while(true)
            {
               b2internal:: "z.SetAwake(true);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§'s§ = param1;
                     if(!(_loc2_ && param1))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §3!;§() : Number
      {
         return this.§2!<§;
      }
      
      public function §+"!§() : Number
      {
         return this.§%!N§;
      }
      
      public function § !L§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            b2internal::2!g.SetAwake(true);
            loop0:
            while(true)
            {
               b2internal:: "z.SetAwake(true);
               loop1:
               while(true)
               {
                  this.§2!<§ = param1;
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.§%!N§ = param2;
                        if(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr58);
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§9!X§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            b2internal::2!g.SetAwake(true);
            while(true)
            {
               b2internal:: "z.SetAwake(true);
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§9!X§ = param1;
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
      
      public function §8#S§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::2!g.SetAwake(true);
            while(true)
            {
               b2internal:: "z.SetAwake(true);
               while(!(_loc2_ && _loc2_))
               {
                  this.§7#R§ = param1;
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      public function §+#0§() : Number
      {
         return this.§7#R§;
      }
      
      public function §8"#§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            b2internal::2!g.SetAwake(true);
            while(true)
            {
               b2internal:: "z.SetAwake(true);
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.§'!9§ = param1;
            if(_loc2_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §]@§() : Number
      {
         return this.§4#5§;
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
