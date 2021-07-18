package §1!2§
{
   import §+#$§.b2Body;
   import §+#$§.b2TimeStep;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Mat22;
   import §[R§.b2Math;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §"j§:b2Vec2;
      
      private var §-#=§:b2Vec2;
      
      private var §<#§:b2Vec2;
      
      private var §2#U§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §<i§:b2Mat22;
      
      private var §##,§:b2Vec2;
      
      private var §99§:Number;
      
      private var §4#5§:Number;
      
      private var §2!<§:Number;
      
      private var §%!N§:Number;
      
      private var §'!9§:Number;
      
      private var §7#R§:Number;
      
      private var §'s§:Boolean;
      
      private var §9!X§:Boolean;
      
      private var §<!G§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_ || _loc2_)
         {
            this.m_localAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§"j§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§-#=§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§<#§ = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§2#U§ = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§<i§ = new b2Mat22();
                              loop6:
                              while(true)
                              {
                                 this.§##,§ = new b2Vec2();
                                 while(true)
                                 {
                                    super(param1);
                                    while(!(_loc6_ && _loc3_))
                                    {
                                       this.m_localAnchor1.SetV(param1.§!"4§);
                                       loop9:
                                       while(true)
                                       {
                                          this.m_localAnchor2.SetV(param1.§#"B§);
                                          addr292:
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
                                                   addr273:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().y);
                                                      addr274:
                                                      while(true)
                                                      {
                                                         §§push(-§§pop());
                                                         addr275:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            addr276:
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop12;
                                                         }
                                                      }
                                                   }
                                                }
                                                addr99:
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   this.§2#U§.§&"Q§();
                                                   addr106:
                                                   if(!(_loc6_ && this))
                                                   {
                                                      continue loop9;
                                                   }
                                                   addr60:
                                                   while(true)
                                                   {
                                                      if(_loc5_ || this)
                                                      {
                                                         addr67:
                                                         if(_loc6_ && param1)
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         addr76:
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            addr83:
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  while(!_loc6_)
                                                                  {
                                                                     this.§%!N§ = param1.§5!F§;
                                                                  }
                                                                  while(_loc5_)
                                                                  {
                                                                     this.§4#5§ = 0;
                                                                     while(!(_loc6_ && param1))
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        this.§2!<§ = param1.§2!@§;
                                                                        §§goto(addr192);
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                     §§goto(addr276);
                                                                  }
                                                                  addr192:
                                                                  continue loop10;
                                                                  addr213:
                                                               }
                                                               if(_loc6_ && param1)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§goto(addr99);
                                                            }
                                                            while(true)
                                                            {
                                                               this.§'!9§ = param1.§0A§;
                                                               §§goto(addr83);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            this.§7#R§ = param1.motorSpeed;
                                                            continue loop6;
                                                            §§goto(addr76);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         loop27:
                                                         while(true)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§goto(addr118);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§<!G§ = b2internal::"!G;
                                                                  continue loop27;
                                                               }
                                                               addr138:
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr199);
                                                      §§goto(addr106);
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
            }
         }
         §§goto(addr292);
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc2_ && this))
         {
            §§push(this.§##,§.x);
            if(!(_loc2_ && _loc3_))
            {
               §§push(this.§2#U§.x);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.§4#5§);
                     if(!_loc2_)
                     {
                        §§push(this.§##,§.y);
                        if(_loc3_ || param1)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc2_)
                           {
                              §§push(this.§<#§.x);
                              if(_loc3_ || this)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr102:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(_loc3_ || param1)
                                       {
                                          §§push(this.§##,§.x);
                                          if(!_loc2_)
                                          {
                                             addr116:
                                             §§push(this.§2#U§.y);
                                             if(_loc3_)
                                             {
                                                addr121:
                                                §§push(§§pop() * §§pop());
                                                if(_loc3_ || param1)
                                                {
                                                   addr129:
                                                   §§push(this.§4#5§);
                                                   if(_loc3_)
                                                   {
                                                      addr133:
                                                      §§push(this.§##,§.y);
                                                      if(!_loc2_)
                                                      {
                                                         §§goto(addr155);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                                §§goto(addr155);
                                             }
                                             §§goto(addr133);
                                          }
                                          §§goto(addr129);
                                       }
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr116);
                  }
                  addr155:
                  §§push(§§pop() + §§pop());
                  if(_loc3_)
                  {
                     addr151:
                     §§push(this.§<#§.y);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
               }
               §§goto(addr129);
            }
         }
         §§goto(addr102);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_)
         {
            return §§pop() * this.§##,§.y;
         }
      }
      
      public function §##2§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::2!g;
         var _loc2_:b2Body = b2internal:: "z;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(_loc10_ || this)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc10_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_.y);
         if(!(_loc11_ && this))
         {
            §§push(§§pop() - _loc4_.y);
            if(!_loc11_)
            {
               addr77:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§8!b§(this.§"j§)).x);
            if(!(_loc11_ && _loc3_))
            {
               §§push(_loc6_);
               if(!_loc11_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc11_)
                  {
                     addr100:
                     §§push(_loc8_.y);
                     if(_loc11_)
                     {
                     }
                     §§goto(addr133);
                  }
                  §§push(§§pop());
               }
               addr133:
               §§push(§§pop() * _loc7_);
               if(!(_loc11_ && _loc3_))
               {
                  §§push(§§pop() + §§pop());
                  if(!(_loc11_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc9_:* = §§pop();
               return §§pop();
            }
            §§goto(addr100);
         }
         §§goto(addr77);
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
         if(!(_loc22_ && _loc1_))
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!(_loc22_ && _loc1_))
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc22_)
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(_loc21_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(_loc21_)
            {
               §§push(_loc4_);
               if(!(_loc22_ && _loc1_))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc22_ && _loc1_))
                  {
                     addr89:
                     §§push(_loc3_.col2.x);
                     if(!(_loc22_ && _loc2_))
                     {
                        addr101:
                        §§push(§§pop() + §§pop() * _loc5_);
                        if(_loc21_ || this)
                        {
                           addr109:
                           §§push(Number(§§pop()));
                        }
                        var _loc6_:* = §§pop();
                        if(_loc21_ || _loc3_)
                        {
                           §§push(_loc3_.col1.y);
                           if(!(_loc22_ && _loc3_))
                           {
                              §§push(_loc4_);
                              if(!(_loc22_ && _loc2_))
                              {
                                 addr168:
                                 addr169:
                                 §§push(§§pop() * §§pop());
                                 if(!_loc22_)
                                 {
                                    §§push(_loc3_.col2.y);
                                    if(_loc21_)
                                    {
                                       §§push(§§pop() * _loc5_);
                                    }
                                 }
                                 _loc4_ = Number(§§pop());
                                 _loc3_ = _loc2_.m_xf.R;
                                 §§push(this.m_localAnchor2.x);
                                 if(!_loc22_)
                                 {
                                    §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                    if(!_loc22_)
                                    {
                                       addr187:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    §§push(this.m_localAnchor2.y);
                                    if(_loc21_ || this)
                                    {
                                       §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                       if(!(_loc22_ && _loc3_))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc8_:* = §§pop();
                                    if(!(_loc22_ && _loc3_))
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
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(_loc8_);
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
                                                                  if(_loc21_)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.col1);
                                                                           if(_loc22_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§push(§§pop().y);
                                                                           if(!(_loc22_ && this))
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!_loc22_)
                                                                              {
                                                                                 if(_loc21_ || _loc2_)
                                                                                 {
                                                                                    if(!(_loc22_ && this))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc22_ && this))
                                                                                       {
                                                                                          if(!(_loc21_ || _loc3_))
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          §§push(_loc3_.col2);
                                                                                          if(_loc22_ && this)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             addr290:
                                                                                             §§push(_loc8_);
                                                                                             if(!(_loc22_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr301:
                                                                                                if(_loc21_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc22_ && _loc2_)
                                                                                                   {
                                                                                                      break loop8;
                                                                                                   }
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      if(!(_loc22_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc22_ && _loc1_)
                                                                                                         {
                                                                                                            break loop8;
                                                                                                         }
                                                                                                         addr333:
                                                                                                         _loc8_ = §§pop();
                                                                                                         loop11:
                                                                                                         while(_loc21_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        continue loop11;
                                                                                                                     }
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        continue loop10;
                                                                                                                     }
                                                                                                                     addr384:
                                                                                                                     addr384:
                                                                                                                     §§push(_loc1_.m_sweep.c.x);
                                                                                                                     if(_loc21_ || _loc1_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     var _loc9_:* = §§pop();
                                                                                                                     §§push(_loc1_.m_sweep.c.y);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + _loc5_);
                                                                                                                        if(_loc21_ || _loc1_)
                                                                                                                        {
                                                                                                                           addr400:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc10_:* = §§pop();
                                                                                                                        §§push(_loc2_.m_sweep.c.x);
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + _loc7_);
                                                                                                                           if(_loc21_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr417:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc11_:* = §§pop();
                                                                                                                           §§push(_loc2_.m_sweep.c.y);
                                                                                                                           if(!(_loc22_ && _loc1_))
                                                                                                                           {
                                                                                                                              §§push(§§pop() + _loc8_);
                                                                                                                              if(_loc21_ || this)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           var _loc12_:* = §§pop();
                                                                                                                           §§push(_loc11_);
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - _loc9_);
                                                                                                                              if(!(_loc22_ && _loc1_))
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           var _loc13_:* = §§pop();
                                                                                                                           §§push(_loc12_);
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - _loc10_);
                                                                                                                              if(!_loc22_)
                                                                                                                              {
                                                                                                                                 addr462:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc14_:* = §§pop();
                                                                                                                              var _loc15_:b2Vec2 = _loc1_.§8!b§(this.§"j§);
                                                                                                                              var _loc16_:b2Vec2 = _loc1_.§ #`§;
                                                                                                                              var _loc17_:b2Vec2 = _loc2_.§ #`§;
                                                                                                                              §§push(_loc1_.m_angularVelocity);
                                                                                                                              if(!(_loc22_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc18_:* = §§pop();
                                                                                                                              §§push(_loc2_.m_angularVelocity);
                                                                                                                              if(!(_loc22_ && this))
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc19_:* = §§pop();
                                                                                                                              §§push(_loc13_);
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 §§push(_loc18_);
                                                                                                                                 if(_loc21_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    §§push(-§§pop());
                                                                                                                                    if(_loc21_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc15_.y);
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc21_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc21_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc14_);
                                                                                                                                                if(!(_loc22_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                   if(_loc21_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_.x);
                                                                                                                                                      if(!(_loc22_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc21_)
                                                                                                                                                         {
                                                                                                                                                            addr562:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!_loc22_)
                                                                                                                                                            {
                                                                                                                                                               addr565:
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  addr568:
                                                                                                                                                                  §§push(_loc15_.x);
                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     addr572:
                                                                                                                                                                     §§push(_loc17_.x);
                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                        if(_loc21_ || _loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              if(_loc21_ || _loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(_loc21_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(!_loc22_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr606:
                                                                                                                                                                                       §§push(_loc16_.x);
                                                                                                                                                                                       if(_loc21_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr615:
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc18_);
                                                                                                                                                                                             if(!(_loc22_ && _loc1_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                if(!_loc22_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr629:
                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                   if(_loc21_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(!(_loc22_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr645:
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                         if(!_loc22_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr648:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!_loc22_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr651:
                                                                                                                                                                                                               §§push(_loc15_.y);
                                                                                                                                                                                                               if(_loc21_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr660:
                                                                                                                                                                                                                  §§push(_loc17_.y);
                                                                                                                                                                                                                  if(_loc21_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr669:
                                                                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(!(_loc22_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr683:
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              if(!_loc22_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr686:
                                                                                                                                                                                                                                 §§push(_loc16_.y);
                                                                                                                                                                                                                                 if(!(_loc22_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr695:
                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                    if(!(_loc22_ && _loc1_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr703:
                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr709:
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr713:
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          if(_loc21_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr733:
                                                                                                                                                                                                                                             return Number(§§pop());
                                                                                                                                                                                                                                             addr732:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr732);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr733);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr709);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr707:
                                                                                                                                                                                                                                 §§push(§§pop() * _loc4_);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr709);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr707);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr695);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr703);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr713);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr703);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr695);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr669);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr629);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr648);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr645);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr648);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr615);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr683);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr615);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr686);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr660);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr733);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr651);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr648);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr703);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr562);
                                                                                                                                                }
                                                                                                                                                §§goto(addr565);
                                                                                                                                             }
                                                                                                                                             §§goto(addr733);
                                                                                                                                          }
                                                                                                                                          §§goto(addr565);
                                                                                                                                       }
                                                                                                                                       §§goto(addr606);
                                                                                                                                    }
                                                                                                                                    §§goto(addr572);
                                                                                                                                 }
                                                                                                                                 §§goto(addr651);
                                                                                                                              }
                                                                                                                              §§goto(addr568);
                                                                                                                           }
                                                                                                                           §§goto(addr462);
                                                                                                                        }
                                                                                                                        §§goto(addr417);
                                                                                                                     }
                                                                                                                     §§goto(addr400);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(_loc4_);
                                                                                                            break loop10;
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                                continue loop5;
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                          §§goto(addr301);
                                                                                       }
                                                                                       break loop8;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              §§goto(addr290);
                                                                           }
                                                                           §§goto(addr333);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc22_ && this))
                                                                        {
                                                                           break loop8;
                                                                        }
                                                                        §§goto(addr384);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr384);
                                                            }
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
                                 §§goto(addr187);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc21_ || _loc1_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc22_ && this))
                                 {
                                    _loc5_ = §§pop();
                                    if(!_loc22_)
                                    {
                                       §§push(_loc6_);
                                       if(!_loc22_)
                                       {
                                          §§goto(addr168);
                                       }
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr169);
                              }
                           }
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr109);
               }
               §§goto(addr101);
            }
            §§goto(addr89);
         }
         §§goto(addr52);
      }
      
      public function §['§() : Boolean
      {
         return this.§'s§;
      }
      
      public function §8""§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            b2internal::2!g.SetAwake(true);
            while(true)
            {
               b2internal:: "z.SetAwake(true);
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            this.§'s§ = param1;
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
         }
         while(true)
         {
            b2internal:: "z.SetAwake(true);
            while(!_loc4_)
            {
               this.§2!<§ = param1;
               while(_loc3_ || param1)
               {
                  this.§%!N§ = param2;
                  if(_loc3_ || param1)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§9!X§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            b2internal::2!g.SetAwake(true);
         }
         while(true)
         {
            b2internal:: "z.SetAwake(true);
            while(_loc2_ || _loc2_)
            {
               this.§9!X§ = param1;
               if(!(_loc3_ && this))
               {
                  return;
               }
            }
         }
      }
      
      public function §8#S§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            b2internal::2!g.SetAwake(true);
            while(true)
            {
               b2internal:: "z.SetAwake(true);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§7#R§ = param1;
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
         §§goto(addr56);
      }
      
      public function §+#0§() : Number
      {
         return this.§7#R§;
      }
      
      public function §8"#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            b2internal::2!g.SetAwake(true);
            while(true)
            {
               b2internal:: "z.SetAwake(true);
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            this.§'!9§ = param1;
            if(_loc3_)
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §?!V§() : Number
      {
         return this.§'!9§;
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
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:b2Vec2 = null;
         var _loc19_:b2Vec2 = null;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc2_:b2Body = b2internal::2!g;
         var _loc3_:b2Body = b2internal:: "z;
         var _loc4_:b2Vec2 = _loc2_.§ #`§;
         §§push(_loc2_.m_angularVelocity);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:b2Vec2 = _loc3_.§ #`§;
         §§push(_loc3_.m_angularVelocity);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!(_loc24_ && param1))
         {
            §§push(this.§9!X§);
            if(_loc23_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr669:
                        while(true)
                        {
                           §§push(this.§<!G§ == b2internal::?!b);
                           if(!(_loc23_ || _loc2_))
                           {
                              if(!_loc23_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              addr576:
                           }
                           continue loop0;
                        }
                     }
                     addr668:
                  }
                  while(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§<#§.x);
                        if(!_loc24_)
                        {
                           §§push(_loc6_.x);
                           if(_loc23_)
                           {
                              §§push(_loc4_.x);
                              if(!_loc24_)
                              {
                                 §§push(§§pop() - §§pop());
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc24_)
                                    {
                                       §§push(this.§<#§);
                                       loop134:
                                       while(true)
                                       {
                                          §§push(§§pop().y);
                                          if(_loc23_ || param1)
                                          {
                                             §§push(_loc6_.y);
                                             if(!(_loc24_ && param1))
                                             {
                                                §§push(_loc4_.y);
                                                if(_loc23_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc23_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc24_ && _loc3_))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         while(true)
                                                         {
                                                            §§push(this.m_a2);
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     loop139:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_a1);
                                                                        if(!_loc24_)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(!(_loc24_ && this))
                                                                           {
                                                                              addr654:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 loop141:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       addr659:
                                                                                       §§push(Number(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          _loc13_ = §§pop();
                                                                                          addr660:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§99§);
                                                                                             if(_loc23_ || _loc3_)
                                                                                             {
                                                                                                §§push(this.§7#R§);
                                                                                                if(!(_loc24_ && param1))
                                                                                                {
                                                                                                   continue loop141;
                                                                                                }
                                                                                                addr696:
                                                                                                addr767:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   addr699:
                                                                                                   §§push(this.§2#U§.y);
                                                                                                   if(!(_loc24_ && param1))
                                                                                                   {
                                                                                                      break loop139;
                                                                                                   }
                                                                                                   §§push(§§pop() - §§pop() * _loc5_);
                                                                                                   if(!_loc24_)
                                                                                                   {
                                                                                                      addr766:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                var _loc12_:* = §§pop();
                                                                                                if(!(_loc24_ && this))
                                                                                                {
                                                                                                   §§push(this.§'s§);
                                                                                                   if(!(_loc24_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(_loc23_ || param1)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc23_ || param1)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                                  §§push(this.§<!G§ == b2internal::"!G);
                                                                                                                  if(_loc23_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr816:
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc24_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(this.§<#§.x);
                                                                                                                           if(_loc23_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.x);
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_.x);
                                                                                                                                 if(_loc23_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(_loc23_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§<#§.y);
                                                                                                                                          if(!_loc24_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_.y);
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - _loc4_.y);
                                                                                                                                                if(_loc23_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc23_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc23_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.m_a2);
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                            if(!(_loc24_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr905:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.m_a1);
                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        addr916:
                                                                                                                                                                        §§push(§§pop() * _loc5_);
                                                                                                                                                                        if(!(_loc24_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              if(!(_loc24_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 _loc17_ = §§pop();
                                                                                                                                                                                 if(_loc23_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§##,§);
                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc18_ = §§pop().Copy();
                                                                                                                                                                                       _loc19_ = this.§<i§.§=#6§(new b2Vec2(),-_loc12_,-_loc17_);
                                                                                                                                                                                       if(!(_loc24_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§##,§);
                                                                                                                                                                                          loop46:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().§ true§(_loc19_);
                                                                                                                                                                                             loop47:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§<!G§);
                                                                                                                                                                                                loop48:
                                                                                                                                                                                                while(§§pop() != b2internal::5#C)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§<!G§);
                                                                                                                                                                                                   if(!(_loc23_ || param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(§§pop() == b2internal::#"e)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§##,§);
                                                                                                                                                                                                         addr1550:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc24_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop46;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1586:
                                                                                                                                                                                                            loop55:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(b2Math.§<#N§(this.§##,§.y,0));
                                                                                                                                                                                                               addr1592:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                                                                  addr1593:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop55;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop46;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1548:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   loop56:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                                                                      loop57:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                                                                         loop58:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§##,§.y);
                                                                                                                                                                                                            loop59:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc18_.y);
                                                                                                                                                                                                               loop60:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                  loop61:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§<i§.col2.x);
                                                                                                                                                                                                                     loop62:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        loop63:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                           loop64:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              loop65:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc20_ = §§pop();
                                                                                                                                                                                                                                 addr1526:
                                                                                                                                                                                                                                 loop66:
                                                                                                                                                                                                                                 while(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§<i§.col1.x);
                                                                                                                                                                                                                                    loop67:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                                                                       loop68:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(§§pop() == §§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc18_.x);
                                                                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             loop69:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc21_ = §§pop();
                                                                                                                                                                                                                                                loop70:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   loop71:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§##,§);
                                                                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(_loc21_);
                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                                                                                                                            §§push(this.§##,§.x);
                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() - _loc18_.x);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                                                                            loop72:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc24_ && this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                                                                                                                     §§push(this.§##,§.y);
                                                                                                                                                                                                                                                                     if(_loc23_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() - _loc18_.y);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                                                                     while(_loc23_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc19_.x);
                                                                                                                                                                                                                                                                              loop84:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.§2#U§);
                                                                                                                                                                                                                                                                                 loop85:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                                                                    loop86:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop57;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                       loop87:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.§<#§);
                                                                                                                                                                                                                                                                                          addr1402:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                                                                                                                             loop89:
                                                                                                                                                                                                                                                                                             while(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                while(_loc23_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                      continue loop57;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   loop106:
                                                                                                                                                                                                                                                                                                   for(; !(_loc24_ && param1); if(!(_loc23_ || _loc2_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                                                                   },§§goto(addr1210))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      loop107:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                         addr1309:
                                                                                                                                                                                                                                                                                                         loop108:
                                                                                                                                                                                                                                                                                                         while(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                                            while(_loc23_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                                               loop110:
                                                                                                                                                                                                                                                                                                               while(_loc23_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(this.m_s2);
                                                                                                                                                                                                                                                                                                                  loop111:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     loop112:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                                           if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop106;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr1227:
                                                                                                                                                                                                                                                                                                                           loop113:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc23_ || param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 while(_loc23_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop61;
                                                                                                                                                                                                                                                                                                                                 addr1274:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1234:
                                                                                                                                                                                                                                                                                                                              if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop63;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                 loop114:
                                                                                                                                                                                                                                                                                                                                 for(; !(_loc24_ && this); if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop67;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                                          if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(false)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() + b2internal::`"? * _loc9_);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1073:
                                                                                                                                                                                                                                                                                                                                                      if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc23_ || param1))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            break loop48;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         if(_loc24_ && this)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop47;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop110;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr1016:
                                                                                                                                                                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1018);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1129);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1073);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr1423:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1323);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr2003);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop57;
                                                                                                                                                                                                                                                                                                                                                addr1060:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr1974:
                                                                                                                                                                                                                                                                                                                                             §§push(_loc2_.§ #`§);
                                                                                                                                                                                                                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§pop().SetV(_loc4_);
                                                                                                                                                                                                                                                                                                                                                if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   _loc2_.m_angularVelocity = _loc5_;
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr2025);
                                                                                                                                                                                                                                                                                                                                                   addr1992:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr2003);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr2017);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr2021);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       break loop72;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop57;
                                                                                                                                                                                                                                                                                                                                 })
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                    loop115:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                                             if(_loc24_ && this)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                _loc3_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                                                                                                                addr2021:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr2003:
                                                                                                                                                                                                                                                                                                                                                addr2021:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop66;
                                                                                                                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   while(_loc23_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr2021);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc3_.§ #`§);
                                                                                                                                                                                                                                                                                                                                                      addr2017:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§pop().SetV(_loc6_);
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr2019);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr2019:
                                                                                                                                                                                                                                                                                                                                                   addr2025:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr1176:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                             §§push(_loc4_.x);
                                                                                                                                                                                                                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() - b2internal::<M * _loc8_);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                             while(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                §§push(_loc4_.y);
                                                                                                                                                                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() - b2internal::<M * _loc9_);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                   addr1120:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(b2internal::]r * _loc10_);
                                                                                                                                                                                                                                                                                                                                                      addr1123:
                                                                                                                                                                                                                                                                                                                                                      while(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                         while(_loc23_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  while(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc23_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        break loop112;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1288);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop64;
                                                                                                                                                                                                                                                                                                                                                                  addr1277:
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue loop69;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr1331:
                                                                                                                                                                                                                                                                                                                                                               addr1331:
                                                                                                                                                                                                                                                                                                                                                               loop96:
                                                                                                                                                                                                                                                                                                                                                               while(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop87;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  addr1505:
                                                                                                                                                                                                                                                                                                                                                                  addr1362:
                                                                                                                                                                                                                                                                                                                                                                  loop98:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                           break loop114;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        addr1502:
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                           break loop115;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                                                                     addr1288:
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc23_ || this))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§push(this.m_a1);
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                           break loop112;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§push(this.m_a2);
                                                                                                                                                                                                                                                                                                                                                                        addr1210:
                                                                                                                                                                                                                                                                                                                                                                        continue loop89;
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr1219:
                                                                                                                                                                                                                                                                                                                                                                           if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                              continue loop113;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr1359:
                                                                                                                                                                                                                                                                                                                                                                           while(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                              continue loop98;
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1219);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           continue loop62;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                     addr1506:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                        break loop96;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  _loc21_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                  addr1508:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop71;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1362);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            continue loop69;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop112;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop111;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop72;
                                                                                                                                                                                                                                                                                                                                             return;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop107;
                                                                                                                                                                                                                                                                                                                                       addr1018:
                                                                                                                                                                                                                                                                                                                                       if(_loc24_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1025:
                                                                                                                                                                                                                                                                                                                                       if(_loc24_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(this.§2#U§);
                                                                                                                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1234);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1414);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1025);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop85;
                                                                                                                                                                                                                                                                                                                                          addr1323:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop114;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1120);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1126);
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1331);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1505);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                       break loop108;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1246);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr1246:
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1506);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1330);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1277);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop86;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop84;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop106;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!(_loc23_ || param1))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc24_ && this)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop65;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(b2internal::-w * _loc11_);
                                                                                                                                                                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop59;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr1016);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1033);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1227);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1123);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr1274);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop108;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1548);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc9_ = §§pop();
                                                                                                                                                                                                                                                                                                            continue loop72;
                                                                                                                                                                                                                                                                                                            §§goto(addr1309);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop68;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop60;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1444:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1508);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop70;
                                                                                                                                                                                                                                                                     addr1440:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc20_);
                                                                                                                                                                                                                                                                     break loop72;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1497:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr1502);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1992);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                                                                               break loop66;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1592);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1570:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1593);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1550);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1497);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop58;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop56;
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
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1586);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1444);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       loop45:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§##,§.x);
                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + _loc22_);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                          loop21:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc22_);
                                                                                                                                                                                             addr1946:
                                                                                                                                                                                             loop22:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§2#U§);
                                                                                                                                                                                                addr1948:
                                                                                                                                                                                                addr1952:
                                                                                                                                                                                                loop16:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                   addr1949:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      addr1950:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop16;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1971:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            addr1972:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc22_ = §§pop();
                                                                                                                                                                                                               addr1973:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1957:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop45;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop22;
                                                                                                                                                                                                }
                                                                                                                                                                                                loop126:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   addr1953:
                                                                                                                                                                                                   loop15:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                                                                      addr1954:
                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§2#U§);
                                                                                                                                                                                                            if(_loc23_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop15;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1948);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1923:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1973);
                                                                                                                                                                                                      continue loop126;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1933:
                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                   loop43:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      addr1934:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1935:
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         if(_loc23_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1953);
                                                                                                                                                                                                         continue loop43;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc9_ = §§pop();
                                                                                                                                                                                                      loop25:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                         loop26:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.m_s1);
                                                                                                                                                                                                            loop27:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               addr1918:
                                                                                                                                                                                                               loop28:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  loop11:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc10_ = §§pop();
                                                                                                                                                                                                                     loop12:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                        loop36:
                                                                                                                                                                                                                        while(_loc23_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.m_s2);
                                                                                                                                                                                                                           loop30:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc24_ && _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop27;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc23_ || _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop28;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!(_loc23_ || this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop26;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          loop31:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc11_ = §§pop();
                                                                                                                                                                                                                                             loop13:
                                                                                                                                                                                                                                             for(; !(_loc24_ && _loc3_); loop129:
                                                                                                                                                                                                                                             while(!(_loc24_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                                                                   loop3:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc23_ || param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop11;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(b2internal::]r * _loc10_);
                                                                                                                                                                                                                                                            loop4:
                                                                                                                                                                                                                                                            while(!_loc24_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                  loop5:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     loop6:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop31;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        _loc5_ = §§pop();
                                                                                                                                                                                                                                                                        loop7:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                                                                           §§push(_loc6_.x);
                                                                                                                                                                                                                                                                           if(_loc23_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + b2internal::`"? * _loc8_);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                                                                           loop8:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc24_ && param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop129;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1742:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                          if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() + b2internal::`"? * _loc9_);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                          loop10:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop8;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(_loc24_ && _loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                                                                                                                             if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop3;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(b2internal::-w * _loc11_);
                                                                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop4;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!(_loc23_ || _loc2_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop30;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop43;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop5;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop6;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop36;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop10;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1950);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop21;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop7;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1800:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1973);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr1858);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop129;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop31;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1949);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1817:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1935);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1954);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop11;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             })
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                                                                   §§push(_loc4_.x);
                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() - b2internal::<M * _loc8_);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                                                                   addr1858:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc24_ && _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop25;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                                                                                                                         §§push(_loc4_.y);
                                                                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() - b2internal::<M * _loc9_);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                                                                         continue loop13;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop12;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1904:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1972);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1934);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1923);
                                                                                                                                                                                                                     continue loop28;
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
                                                                                                                                                                                    §§goto(addr1974);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1622:
                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                       if(!(_loc24_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§<i§.col1.x);
                                                                                                                                                                                          if(!(_loc24_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1644:
                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                             if(_loc23_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc22_ = §§pop();
                                                                                                                                                                                                   if(_loc23_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1957);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1912);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1675);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1689);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1725);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1934);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1725);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1918);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1822);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1949);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1904);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1689);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr916);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1884);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1946);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr1614:
                                                                                                                                                      if(§§pop() != §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc24_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1622);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1800);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1971);
                                                                                                                                                }
                                                                                                                                                §§goto(addr916);
                                                                                                                                             }
                                                                                                                                             §§goto(addr905);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1644);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr1611:
                                                                                                                                          §§push(0);
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1614);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1933);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1822);
                                                                                                                                 }
                                                                                                                                 §§goto(addr905);
                                                                                                                              }
                                                                                                                              §§goto(addr1614);
                                                                                                                           }
                                                                                                                           §§goto(addr1952);
                                                                                                                        }
                                                                                                                        §§goto(addr1973);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(this.§<i§.col1.x);
                                                                                                                        if(!(_loc24_ && param1))
                                                                                                                        {
                                                                                                                           §§goto(addr1611);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1817);
                                                                                                                  }
                                                                                                                  §§goto(addr816);
                                                                                                               }
                                                                                                               §§goto(addr1846);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr816);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr816);
                                                                                                }
                                                                                                §§goto(addr1865);
                                                                                             }
                                                                                             §§goto(addr766);
                                                                                          }
                                                                                       }
                                                                                       addr659:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 addr734:
                                                                                 §§push(this.m_s2);
                                                                                 if(!_loc24_)
                                                                                 {
                                                                                    addr738:
                                                                                    §§push(_loc7_);
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       §§goto(addr741);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr699);
                                                                              }
                                                                              addr654:
                                                                           }
                                                                           §§goto(addr699);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§push(_loc6_.y);
                                                                     if(!(_loc24_ && this))
                                                                     {
                                                                        addr720:
                                                                        §§push(§§pop() - _loc4_.y);
                                                                        if(!_loc24_)
                                                                        {
                                                                           addr723:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc23_ || _loc3_)
                                                                           {
                                                                              break loop134;
                                                                           }
                                                                        }
                                                                        §§goto(addr699);
                                                                     }
                                                                     §§goto(addr741);
                                                                  }
                                                               }
                                                            }
                                                            if(_loc24_ && param1)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr378);
                                                         }
                                                      }
                                                      §§goto(addr738);
                                                   }
                                                   §§goto(addr654);
                                                }
                                                §§goto(addr720);
                                             }
                                             §§goto(addr699);
                                          }
                                          break;
                                          if(!(_loc23_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          §§push(§§pop().y);
                                          if(!(_loc24_ && this))
                                          {
                                             if(!_loc24_)
                                             {
                                                if(!_loc24_)
                                                {
                                                   §§goto(addr407);
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§goto(addr502);
                                             }
                                             §§goto(addr430);
                                          }
                                          §§goto(addr699);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc24_)
                                       {
                                          §§goto(addr734);
                                       }
                                       §§goto(addr757);
                                    }
                                    break;
                                 }
                                 addr680:
                                 §§push(_loc6_.x);
                                 if(!(_loc24_ && this))
                                 {
                                    §§push(_loc4_.x);
                                    if(!_loc24_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc23_)
                                       {
                                          §§goto(addr696);
                                       }
                                       §§goto(addr738);
                                    }
                                    §§goto(addr723);
                                 }
                                 §§goto(addr696);
                              }
                              §§goto(addr654);
                           }
                           §§goto(addr699);
                        }
                        §§goto(addr659);
                     }
                  }
                  §§push(this.§2#U§.x);
                  if(!(_loc24_ && this))
                  {
                     §§goto(addr680);
                  }
                  §§goto(addr757);
               }
            }
            §§goto(addr668);
         }
         §§goto(addr580);
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
