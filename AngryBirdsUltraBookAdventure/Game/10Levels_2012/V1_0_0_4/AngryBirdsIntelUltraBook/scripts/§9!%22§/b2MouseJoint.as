package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Mat22;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   import §`w§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §]_§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §7F§:b2Vec2;
      
      private var §0!!§:b2Vec2;
      
      private var §,!2§:b2Vec2;
      
      private var §,0§:b2Mat22;
      
      private var §<!f§:b2Vec2;
      
      private var §;!?§:Number;
      
      private var §7! §:Number;
      
      private var §`!H§:Number;
      
      private var §@Q§:Number;
      
      private var §=R§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc4_:b2Mat22 = null;
         if(!_loc5_)
         {
            this.§]_§ = new b2Mat22();
            loop0:
            while(true)
            {
               this.K1 = new b2Mat22();
               loop1:
               while(true)
               {
                  this.K2 = new b2Mat22();
                  while(true)
                  {
                     this.§7F§ = new b2Vec2();
                     while(true)
                     {
                        this.§0!!§ = new b2Vec2();
                        continue loop1;
                        addr114:
                        while(_loc6_ || _loc2_)
                        {
                           continue loop0;
                        }
                     }
                     addr96:
                     if(_loc5_ && param1)
                     {
                        continue;
                     }
                     §§push(this.§0!!§);
                     if(_loc6_ || param1)
                     {
                        if(_loc6_)
                        {
                           §§push(§§pop().x);
                           if(_loc6_)
                           {
                              §§push(§§pop() - b2internal::0!w.m_xf.position.x);
                              if(!(_loc5_ && _loc2_))
                              {
                                 addr52:
                                 §§push(Number(§§pop()));
                                 if(_loc6_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc6_ || _loc3_)
                                    {
                                       if(_loc6_)
                                       {
                                          if(false)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§push(this.§0!!§);
                                                addr70:
                                                while(true)
                                                {
                                                   §§pop().SetV(param1.target);
                                                   addr73:
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         addr75:
                                                         if(_loc6_ || param1)
                                                         {
                                                            addr82:
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               addr89:
                                                               if(!(_loc6_ || _loc3_))
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr96);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§,0§ = new b2Mat22();
                                                                  break loop12;
                                                                  §§goto(addr82);
                                                               }
                                                               addr140:
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      addr108:
                                                      while(true)
                                                      {
                                                         continue loop10;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      this.§<!f§ = new b2Vec2();
                                                      §§goto(addr114);
                                                      §§goto(addr75);
                                                   }
                                                }
                                             }
                                          }
                                          addr189:
                                          §§push(this.§0!!§.y);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() - b2internal::0!w.m_xf.position.y);
                                             if(!_loc5_)
                                             {
                                                addr199:
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc3_:* = §§pop();
                                          _loc4_ = b2internal::0!w.m_xf.R;
                                          if(_loc6_ || this)
                                          {
                                             addr354:
                                             §§push(this.§7F§);
                                             §§push(_loc2_);
                                             §§push(_loc4_.col1.x);
                                             if(_loc6_ || this)
                                             {
                                                addr378:
                                                §§push(§§pop() * §§pop());
                                                if(_loc6_ || param1)
                                                {
                                                   addr373:
                                                   §§push(§§pop() + _loc3_ * _loc4_.col1.y);
                                                }
                                                §§pop().x = §§pop();
                                                addr379:
                                                §§push(this.§7F§);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            §§push(_loc4_.col2.x);
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc6_)
                                                               {
                                                                  addr320:
                                                                  §§push(_loc3_);
                                                                  if(_loc6_)
                                                                  {
                                                                     addr323:
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(_loc4_.col2.y);
                                                                        if(_loc6_ || _loc2_)
                                                                        {
                                                                           addr336:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr339:
                                                                              §§pop().y = §§pop() + §§pop();
                                                                              this.§;!?§ = param1.§`z§;
                                                                              this.§,!2§.§`!5§();
                                                                              this.§7! § = param1.§ y§;
                                                                              addr340:
                                                                              addr283:
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 this.§`!H§ = param1.§`!X§;
                                                                                 addr249:
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          this.§@Q§ = 0;
                                                                                          addr236:
                                                                                          if(!(_loc5_ && param1))
                                                                                          {
                                                                                             this.§=R§ = 0;
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§goto(addr379);
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr236);
                                                                                          }
                                                                                          §§goto(addr249);
                                                                                          addr265:
                                                                                       }
                                                                                       §§goto(addr340);
                                                                                    }
                                                                                    §§goto(addr283);
                                                                                 }
                                                                                 §§goto(addr340);
                                                                              }
                                                                              addr289:
                                                                              §§goto(addr289);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr373);
                                                                  }
                                                                  §§goto(addr336);
                                                               }
                                                               §§goto(addr339);
                                                            }
                                                            §§goto(addr323);
                                                         }
                                                         §§goto(addr354);
                                                      }
                                                      §§goto(addr378);
                                                   }
                                                   §§goto(addr320);
                                                }
                                                §§goto(addr354);
                                             }
                                             §§goto(addr373);
                                          }
                                          §§goto(addr265);
                                       }
                                       §§goto(addr114);
                                    }
                                    §§goto(addr73);
                                 }
                              }
                              §§goto(addr199);
                           }
                           §§goto(addr52);
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr189);
                  }
               }
            }
         }
         while(true)
         {
            super(param1);
            §§goto(addr108);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§0!!§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::0!w.GetWorldPoint(this.§7F§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc2_)
         {
            §§push(this.§,!2§.x);
            if(!_loc2_)
            {
               addr37:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() * this.§,!2§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr37);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §,@§() : b2Vec2
      {
         return this.§0!!§;
      }
      
      public function §'G§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(b2internal::0!w.IsAwake() == false)
            {
               if(_loc3_ || this)
               {
                  addr72:
                  b2internal::0!w.SetAwake(true);
               }
               while(true)
               {
                  §§goto(addr49);
               }
            }
            addr49:
            while(true)
            {
               this.§0!!§ = param1;
               if(!(_loc2_ && this))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function §3!§() : Number
      {
         return this.§;!?§;
      }
      
      public function §+l§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§;!?§ = param1;
         }
      }
      
      public function §8!?§() : Number
      {
         return this.§7! §;
      }
      
      public function §3!s§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§7! § = param1;
         }
      }
      
      public function §-!8§() : Number
      {
         return this.§`!H§;
      }
      
      public function §1!T§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§`!H§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc7_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc2_:b2Body = b2internal::0!w;
         §§push(_loc2_.GetMass());
         if(!(_loc13_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(_loc14_)
         {
            §§push(§§pop() * this.§7! §);
            if(_loc14_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(2 * _loc3_);
         if(_loc14_)
         {
            §§push(this.§`!H§);
            if(!(_loc13_ && this))
            {
               §§push(§§pop() * §§pop());
               if(!_loc13_)
               {
                  addr74:
                  §§push(§§pop() * _loc4_);
                  if(_loc13_ && _loc2_)
                  {
                  }
                  addr83:
                  var _loc5_:* = §§pop();
                  §§push(_loc3_);
                  if(!_loc13_)
                  {
                     §§push(_loc4_);
                     if(!_loc13_)
                     {
                        addr98:
                        §§push(§§pop() * §§pop());
                        if(!_loc13_)
                        {
                           §§push(_loc4_);
                        }
                        var _loc6_:* = §§pop();
                        if(!_loc13_)
                        {
                           §§push(this);
                           §§push(param1.§^Z§);
                           if(!(_loc13_ && param1))
                           {
                              §§push(_loc5_);
                              if(!_loc13_)
                              {
                                 §§push(param1.§^Z§);
                                 if(_loc14_)
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§pop().§=R§ = §§pop();
                           loop0:
                           while(true)
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(this);
                                 if(_loc14_)
                                 {
                                    §§push(this.§=R§);
                                    if(!(_loc13_ && this))
                                    {
                                       if(§§pop() != 0)
                                       {
                                          addr147:
                                          §§push(1 / this.§=R§);
                                          if(_loc14_ || param1)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc14_)
                                             {
                                                addr166:
                                                §§pop().§=R§ = Number(§§pop());
                                                addr165:
                                                do
                                                {
                                                   if(_loc14_)
                                                   {
                                                      §§push(this);
                                                      §§push(param1.§^Z§);
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc14_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc13_ && param1)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(this.§=R§);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      continue;
                                                   }
                                                   continue loop0;
                                                }
                                                while(§§pop().§@Q§ = §§pop(), !_loc14_);
                                                
                                                while(false)
                                                {
                                                   continue loop1;
                                                }
                                                _loc7_ = _loc2_.m_xf.R;
                                                §§push(this.§7F§.x);
                                                if(_loc14_ || this)
                                                {
                                                   §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                                   if(!(_loc13_ && _loc3_))
                                                   {
                                                      addr220:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   §§push(this.§7F§.y);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                                      if(_loc14_)
                                                      {
                                                         addr234:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc9_:* = §§pop();
                                                      §§push(_loc7_.col1.x);
                                                      if(!_loc13_)
                                                      {
                                                         §§push(_loc8_);
                                                         if(!(_loc13_ && _loc3_))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc14_)
                                                            {
                                                               §§push(_loc7_.col2.x);
                                                               if(_loc14_ || _loc2_)
                                                               {
                                                                  addr262:
                                                                  §§push(§§pop() * _loc9_);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc14_ || param1)
                                                               {
                                                               }
                                                               addr273:
                                                               var _loc10_:* = §§pop();
                                                               if(_loc14_ || _loc2_)
                                                               {
                                                                  §§push(_loc7_.col1);
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(_loc14_ || this)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop6:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc7_.col2.y);
                                                                              if(_loc14_ || param1)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * _loc9_);
                                                                                 }
                                                                                 addr1059:
                                                                              }
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
                                                                                       _loc9_ = §§pop();
                                                                                       loop9:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          loop10:
                                                                                          while(_loc14_ || _loc2_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop11:
                                                                                             for(; !_loc13_; while(true)
                                                                                             {
                                                                                                if(!(_loc14_ || param1))
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr1011);
                                                                                                §§push(Number(§§pop()));
                                                                                             },continue loop10)
                                                                                             {
                                                                                                _loc8_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_.§7n§);
                                                                                                   continue loop11;
                                                                                                   addr953:
                                                                                                   if(_loc13_ && param1)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(this.K1);
                                                                                                   loop25:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().col1);
                                                                                                      loop26:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         addr934:
                                                                                                         while(_loc14_ || _loc2_)
                                                                                                         {
                                                                                                            §§pop().y = §§pop();
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                         loop19:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            loop20:
                                                                                                            while(_loc14_)
                                                                                                            {
                                                                                                               §§push(this.K1);
                                                                                                               loop21:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().col2);
                                                                                                                     loop22:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           addr951:
                                                                                                                           while(_loc14_)
                                                                                                                           {
                                                                                                                              §§goto(addr953);
                                                                                                                           }
                                                                                                                           loop15:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc2_.§;5§);
                                                                                                                              if(_loc14_ || param1)
                                                                                                                              {
                                                                                                                                 if(_loc14_)
                                                                                                                                 {
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       continue loop6;
                                                                                                                                    }
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                                 addr1011:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc11_ = §§pop();
                                                                                                                                    continue loop15;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr994:
                                                                                                                                 if(_loc13_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.K1);
                                                                                                                                    break loop21;
                                                                                                                                    addr844:
                                                                                                                                    if(!(_loc14_ || _loc2_))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    addr851:
                                                                                                                                    §§push(this.K2);
                                                                                                                                    if(!(_loc13_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().col2);
                                                                                                                                          loop55:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc12_);
                                                                                                                                             loop56:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc8_);
                                                                                                                                                loop57:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc14_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      loop58:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc13_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            loop59:
                                                                                                                                                            while(!_loc13_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               loop60:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§]_§);
                                                                                                                                                                     loop62:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().§1c§(this.K1);
                                                                                                                                                                        addr781:
                                                                                                                                                                        loop63:
                                                                                                                                                                        while(_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§]_§);
                                                                                                                                                                           loop64:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().§ !Y§(this.K2);
                                                                                                                                                                              addr770:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(this.§]_§);
                                                                                                                                                                                    loop66:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().col1);
                                                                                                                                                                                       if(_loc14_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc14_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc14_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop26;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc14_ || param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                while(_loc14_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                   continue loop19;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop4;
                                                                                                                                                                                                addr965:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(this.§]_§.col1.x);
                                                                                                                                                                                             if(!(_loc13_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc14_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc14_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop19;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr736:
                                                                                                                                                                                                      §§push(this.§=R§);
                                                                                                                                                                                                      if(!(_loc13_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc14_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc14_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr755:
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                                                                  addr763:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§]_§);
                                                                                                                                                                                                                     addr635:
                                                                                                                                                                                                                     loop68:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().col2);
                                                                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr640:
                                                                                                                                                                                                                              if(!(_loc13_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§]_§.col2.y);
                                                                                                                                                                                                                                 if(_loc13_ && this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop60;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop58;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!(_loc14_ || param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop56;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§=R§);
                                                                                                                                                                                                                                    if(!_loc13_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          continue loop60;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop57;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop59;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr887:
                                                                                                                                                                                                                                 addr887:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                                                                    addr888:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.K2);
                                                                                                                                                                                                                                       addr823:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().col1);
                                                                                                                                                                                                                                          addr824:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc12_);
                                                                                                                                                                                                                                             if(_loc14_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr833:
                                                                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                                                                   addr834:
                                                                                                                                                                                                                                                   addr900:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               addr841:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                                                                                                                  break loop63;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr736);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr840:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr841);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                                                                                                                      addr901:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         addr902:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                                                                            addr903:
                                                                                                                                                                                                                                                            while(!_loc13_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.K2);
                                                                                                                                                                                                                                                                  addr855:
                                                                                                                                                                                                                                                                  addr892:
                                                                                                                                                                                                                                                                  while(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop().col2);
                                                                                                                                                                                                                                                                     break loop68;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop().col1);
                                                                                                                                                                                                                                                                     break loop66;
                                                                                                                                                                                                                                                                     §§goto(addr855);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr928:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr892);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr755);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr833:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr833);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr851);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop55;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop66;
                                                                                                                                                                                                                        addr686:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§]_§);
                                                                                                                                                                                                                           if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop64;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop68;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop62;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr924:
                                                                                                                                                                                                                     while(!_loc13_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                                                                        if(_loc14_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr876:
                                                                                                                                                                                                                              if(_loc14_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    addr885:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                                                                       break loop59;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop57;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr884:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                                                                    §§goto(addr928);
                                                                                                                                                                                                                                    §§goto(addr876);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr927:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr887);
                                                                                                                                                                                                                        §§goto(addr640);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(!_loc13_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr927);
                                                                                                                                                                                                                        §§push(_loc11_);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop22;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr763:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr833);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr901);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr834);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr840);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr902);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr841);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr755);
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr824);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc12_);
                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc9_);
                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr900);
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr901);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr902);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr888);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop20;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr844);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr903);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr887);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr885);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr884);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr855);
                                                                                                                                    }
                                                                                                                                    §§goto(addr823);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  addr916:
                                                                                                                  if(_loc13_ && _loc2_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr924);
                                                                                                                  §§push(§§pop().col2);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr965);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                          continue loop8;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr1059);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr905);
                                                            }
                                                            §§goto(addr273);
                                                            §§push(Number(§§pop()));
                                                         }
                                                         §§goto(addr262);
                                                      }
                                                      §§goto(addr273);
                                                   }
                                                   §§goto(addr234);
                                                }
                                                §§goto(addr220);
                                                addr130:
                                             }
                                             §§goto(addr166);
                                          }
                                       }
                                       else
                                       {
                                          §§push(0);
                                          if(_loc14_)
                                          {
                                             §§goto(addr165);
                                          }
                                       }
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr147);
                              }
                           }
                        }
                        §§goto(addr130);
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc14_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr98);
               }
               §§goto(addr83);
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr74);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = b2internal::0!w;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§7F§.x);
         if(_loc16_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc16_ || param1)
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(this.§7F§.y);
            if(!_loc15_)
            {
               §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
               if(!(_loc15_ && param1))
               {
                  addr68:
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(!(_loc15_ && param1))
               {
                  §§push(_loc3_.col1);
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
                              §§push(_loc3_.col2);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 if(!(_loc15_ && _loc2_))
                                 {
                                    §§push(_loc7_);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc16_ || param1)
                                       {
                                          §§push(§§pop() + §§pop());
                                          loop6:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc16_ || param1)
                                             {
                                                _loc4_ = §§pop();
                                                loop7:
                                                while(true)
                                                {
                                                   addr95:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.col1);
                                                      if(_loc15_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop().y);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc16_)
                                                         {
                                                            break loop4;
                                                         }
                                                         if(_loc16_ || this)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc15_ && param1))
                                                            {
                                                               if(!_loc16_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               if(!(_loc16_ || _loc3_))
                                                               {
                                                                  continue loop3;
                                                               }
                                                               if(!_loc16_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§push(_loc3_.col2);
                                                               if(!_loc16_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§push(§§pop().y);
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(!(_loc16_ || _loc2_))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     break loop5;
                                                                  }
                                                                  addr230:
                                                                  continue loop5;
                                                               }
                                                               addr157:
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc15_ && _loc2_))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc15_ && _loc3_)
                                                                  {
                                                                     addr222:
                                                                     §§push(_loc2_.m_angularVelocity);
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(-§§pop());
                                                                        if(_loc16_)
                                                                        {
                                                                           break loop4;
                                                                        }
                                                                        break loop5;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr222:
                                                                  }
                                                                  _loc7_ = §§pop();
                                                                  continue loop7;
                                                                  break loop4;
                                                               }
                                                               §§goto(addr222);
                                                            }
                                                            break loop7;
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                   continue loop0;
                                                }
                                                addr234:
                                                §§push(Number(§§pop()));
                                                break;
                                             }
                                             break;
                                          }
                                          addr235:
                                          var _loc8_:* = §§pop();
                                          §§push(_loc2_.§^O§.y);
                                          if(_loc16_ || param1)
                                          {
                                             §§push(_loc2_.m_angularVelocity);
                                             if(!(_loc15_ && _loc2_))
                                             {
                                                §§push(§§pop() * _loc6_);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc15_)
                                             {
                                                addr260:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc9_:* = §§pop();
                                             _loc3_ = this.§,0§;
                                             if(_loc16_ || _loc2_)
                                             {
                                                §§push(_loc8_);
                                                if(_loc16_)
                                                {
                                                   §§push(this.§@Q§);
                                                   if(!_loc15_)
                                                   {
                                                      §§push(this.§<!f§);
                                                      if(_loc16_ || _loc3_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc15_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc16_ || this)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc16_ || _loc2_)
                                                               {
                                                                  §§push(this.§=R§);
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(this.§,!2§);
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc16_ || param1)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc16_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc15_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!(_loc15_ && _loc3_))
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    if(!(_loc15_ && param1))
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          §§push(this.§@Q§);
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             addr355:
                                                                                             §§push(this.§<!f§.y);
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   addr361:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc15_ && param1))
                                                                                                   {
                                                                                                      §§push(this.§=R§);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         addr375:
                                                                                                         §§push(this.§,!2§.y);
                                                                                                         if(_loc16_ || this)
                                                                                                         {
                                                                                                            addr383:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc16_ || _loc2_)
                                                                                                            {
                                                                                                               addr391:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc16_ || this)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     _loc5_ = §§pop();
                                                                                                                     addr403:
                                                                                                                     §§push(_loc3_.col1.x);
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        addr408:
                                                                                                                        §§push(_loc4_);
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           addr411:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              addr414:
                                                                                                                              §§push(_loc3_.col2.x);
                                                                                                                              if(_loc16_ || param1)
                                                                                                                              {
                                                                                                                                 addr436:
                                                                                                                                 addr434:
                                                                                                                                 addr435:
                                                                                                                                 §§push(§§pop() + §§pop() * _loc5_);
                                                                                                                                 if(_loc16_ || this)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 var _loc10_:* = Number(§§pop());
                                                                                                                                 §§push(_loc3_.col1.y);
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    if(_loc16_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!(_loc15_ && this))
                                                                                                                                       {
                                                                                                                                          addr475:
                                                                                                                                          §§push(_loc3_.col2.y);
                                                                                                                                          if(!(_loc15_ && this))
                                                                                                                                          {
                                                                                                                                             addr487:
                                                                                                                                             §§push(§§pop() + §§pop() * _loc5_);
                                                                                                                                             if(!(_loc15_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(-§§pop());
                                                                                                                                                if(_loc15_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                addr499:
                                                                                                                                                var _loc11_:* = §§pop();
                                                                                                                                                §§push(this.§,!2§.x);
                                                                                                                                                if(_loc16_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                var _loc12_:* = §§pop();
                                                                                                                                                §§push(this.§,!2§.y);
                                                                                                                                                if(!_loc15_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                var _loc13_:* = §§pop();
                                                                                                                                                if(!(_loc15_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§,!2§);
                                                                                                                                                   if(_loc16_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§,!2§);
                                                                                                                                                      if(_loc16_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         if(_loc16_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                            if(!(_loc15_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc16_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     addr565:
                                                                                                                                                                     §§push(this.§,!2§);
                                                                                                                                                                     §§push(this.§,!2§.y);
                                                                                                                                                                     if(!(_loc15_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr573:
                                                                                                                                                                        §§push(§§pop() + _loc11_);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                  }
                                                                                                                                                                  §§push(param1.§^Z§);
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * this.§;!?§);
                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  var _loc14_:* = §§pop();
                                                                                                                                                                  if(_loc16_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§,!2§);
                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().§ !W§());
                                                                                                                                                                        loop11:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc14_);
                                                                                                                                                                           loop12:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * _loc14_);
                                                                                                                                                                              loop13:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§,!2§);
                                                                                                                                                                                       addr860:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc14_);
                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() / this.§,!2§.§>!7§());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§^$§(§§pop());
                                                                                                                                                                                          addr868:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr858:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§,!2§);
                                                                                                                                                                                    loop16:
                                                                                                                                                                                    while(!_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                          addr821:
                                                                                                                                                                                          while(_loc16_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             continue loop11;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr805:
                                                                                                                                                                                          continue loop12;
                                                                                                                                                                                          if(_loc15_ && _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc2_.§^O§);
                                                                                                                                                                                             loop25:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc2_.§^O§);
                                                                                                                                                                                                addr746:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                   addr747:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc2_.§7n§);
                                                                                                                                                                                                      addr749:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                                                                         addr750:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            addr751:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               addr752:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                                                                  continue loop25;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             for(; _loc16_ || this; §§pop().m_angularVelocity = §§pop(),if(_loc15_ && param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             },if(_loc16_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc15_ && param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop21:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§,!2§);
                                                                                                                                                                                                      if(_loc15_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                      if(_loc16_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr767:
                                                                                                                                                                                                         if(_loc15_ && _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop11;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                                                                         if(_loc16_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc16_ || _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop13;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            if(!(_loc15_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr821);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr798:
                                                                                                                                                                                                      if(!(_loc15_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr805);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc10_ = §§pop();
                                                                                                                                                                                                            continue loop21;
                                                                                                                                                                                                            §§goto(addr798);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr847:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop16;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc16_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      return;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr858);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr868);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr753);
                                                                                                                                                                                             })
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc2_);
                                                                                                                                                                                                §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                                if(_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc2_.§;5§);
                                                                                                                                                                                                if(!_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                   if(_loc16_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                      if(_loc16_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc16_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr634:
                                                                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                                                                            if(_loc16_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr631:
                                                                                                                                                                                                               §§push(§§pop() * _loc10_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr634);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr631);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr634);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr860);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr813);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr573);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr565);
                                                                                                                                             }
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          §§goto(addr487);
                                                                                                                                       }
                                                                                                                                       §§goto(addr499);
                                                                                                                                    }
                                                                                                                                    §§goto(addr487);
                                                                                                                                 }
                                                                                                                                 §§goto(addr475);
                                                                                                                              }
                                                                                                                              §§goto(addr436);
                                                                                                                           }
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(_loc16_ || _loc2_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           §§goto(addr436);
                                                                                                                        }
                                                                                                                        §§goto(addr434);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr436);
                                                                                                         }
                                                                                                         §§goto(addr435);
                                                                                                      }
                                                                                                      §§goto(addr391);
                                                                                                   }
                                                                                                   §§goto(addr414);
                                                                                                }
                                                                                                §§goto(addr436);
                                                                                             }
                                                                                             §§goto(addr383);
                                                                                          }
                                                                                          §§goto(addr361);
                                                                                       }
                                                                                       §§goto(addr408);
                                                                                    }
                                                                                    §§goto(addr403);
                                                                                 }
                                                                                 §§goto(addr436);
                                                                              }
                                                                              §§goto(addr408);
                                                                           }
                                                                           §§goto(addr436);
                                                                        }
                                                                        §§goto(addr383);
                                                                     }
                                                                     §§goto(addr375);
                                                                  }
                                                                  §§goto(addr391);
                                                               }
                                                               §§goto(addr436);
                                                            }
                                                            §§goto(addr411);
                                                         }
                                                         §§goto(addr436);
                                                      }
                                                      §§goto(addr355);
                                                   }
                                                }
                                                §§goto(addr436);
                                             }
                                             §§goto(addr403);
                                          }
                                          §§goto(addr260);
                                       }
                                       break;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc15_)
                                    {
                                       §§goto(addr234);
                                    }
                                    §§goto(addr235);
                                 }
                                 break;
                              }
                              §§goto(addr230);
                           }
                        }
                     }
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr68);
         }
         §§goto(addr49);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
