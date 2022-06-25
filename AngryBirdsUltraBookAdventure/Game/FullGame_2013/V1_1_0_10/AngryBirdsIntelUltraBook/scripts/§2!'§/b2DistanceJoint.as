package §2!'§
{
   import §#I§.b2Body;
   import §#I§.b2TimeStep;
   import §&H§.b2Mat22;
   import §&H§.b2Math;
   import §&H§.b2Vec2;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §]G§:b2Vec2;
      
      private var §=§:Number;
      
      private var §#!d§:Number;
      
      private var §4z§:Number;
      
      private var §`a§:Number;
      
      private var §&""§:Number;
      
      private var §"X§:Number;
      
      private var §^!q§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc6_ && _loc3_))
         {
            this.m_localAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§]G§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super(param1);
                     addr153:
                     while(true)
                     {
                        this.m_localAnchor1.SetV(param1.§'G§);
                        addr148:
                        while(true)
                        {
                           this.m_localAnchor2.SetV(param1.§true§);
                           addr139:
                           while(_loc5_)
                           {
                              this.§^!q§ = param1.length;
                           }
                           continue loop1;
                        }
                        addr94:
                        if(!(_loc6_ && _loc3_))
                        {
                           this.§&""§ = 0;
                           continue loop2;
                        }
                     }
                  }
               }
               if(!(_loc5_ || _loc3_))
               {
                  continue;
               }
               this.§#!d§ = param1.§6V§;
               §§goto(addr90);
            }
         }
         §§goto(addr122);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::&A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4!d.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && param1))
         {
            §§push(this.§&""§);
            if(_loc2_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && _loc3_))
               {
                  addr52:
                  §§push(this.§]G§.x);
                  if(!(_loc3_ && param1))
                  {
                     addr73:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc2_)
                     {
                        addr76:
                        §§push(this.§&""§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr92);
                        }
                        addr92:
                        §§push(§§pop() * §§pop());
                        if(!_loc3_)
                        {
                           addr88:
                           §§push(this.§]G§.y);
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() * §§pop());
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr76);
               }
               §§goto(addr73);
            }
            §§goto(addr92);
         }
         §§goto(addr52);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §,!H§() : Number
      {
         return this.§^!q§;
      }
      
      public function §2G§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§^!q§ = param1;
         }
      }
      
      public function §!K§() : Number
      {
         return this.§=§;
      }
      
      public function §3!D§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=§ = param1;
         }
      }
      
      public function §?!Y§() : Number
      {
         return this.§#!d§;
      }
      
      public function §7!F§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#!d§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc9_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         _loc4_ = b2internal::&A;
         _loc5_ = b2internal::4!d;
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc20_ && _loc3_))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc20_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         if(_loc21_)
         {
            §§push(this.m_localAnchor1.y);
            if(!_loc20_)
            {
               §§push(_loc4_.m_sweep.localCenter.y);
               while(true)
               {
                  §§push(§§pop() - §§pop());
               }
               addr228:
            }
            loop1:
            while(true)
            {
               §§push(Number(§§pop()));
               loop2:
               while(true)
               {
                  _loc7_ = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(_loc2_.col1);
                     loop4:
                     while(true)
                     {
                        §§push(§§pop().x);
                        loop5:
                        while(true)
                        {
                           §§push(_loc6_);
                           loop6:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc21_)
                              {
                                 §§push(_loc2_.col2);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    loop8:
                                    while(!_loc20_)
                                    {
                                       §§push(_loc7_);
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr206:
                                          addr167:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc21_ || _loc3_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          addr167:
                                          §§push(_loc7_);
                                          if(_loc20_ && param1)
                                          {
                                             continue;
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc20_ && param1))
                                          {
                                             if(!_loc21_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(§§pop() + §§pop());
                                             loop14:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop15:
                                                while(true)
                                                {
                                                   _loc7_ = §§pop();
                                                   loop16:
                                                   while(_loc21_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc21_ || _loc3_)
                                                         {
                                                            if(!_loc21_)
                                                            {
                                                               continue loop14;
                                                            }
                                                            if(!_loc21_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§push(Number(§§pop()));
                                                         }
                                                         if(!(_loc21_ || param1))
                                                         {
                                                            continue loop15;
                                                         }
                                                         if(_loc21_ || _loc2_)
                                                         {
                                                            if(_loc20_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            _loc6_ = §§pop();
                                                            if(!_loc21_)
                                                            {
                                                               continue loop16;
                                                            }
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.col1);
                                                               if(_loc20_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§push(§§pop().y);
                                                               if(_loc20_)
                                                               {
                                                                  continue loop15;
                                                               }
                                                               if(_loc20_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§push(_loc6_);
                                                               if(!(_loc20_ && this))
                                                               {
                                                                  if(!(_loc20_ && this))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc20_ && _loc3_))
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr167);
                                                            }
                                                            §§goto(addr206);
                                                         }
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            break loop16;
                                                         }
                                                      }
                                                      _loc2_ = _loc5_.m_xf.R;
                                                      §§push(this.m_localAnchor2.x);
                                                      if(!(_loc20_ && _loc2_))
                                                      {
                                                         §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                         if(_loc21_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc8_:* = §§pop();
                                                      if(!_loc20_)
                                                      {
                                                         §§push(this.m_localAnchor2.y);
                                                         if(_loc21_ || _loc3_)
                                                         {
                                                            §§push(_loc5_.m_sweep.localCenter.y);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               addr513:
                                                               if(!(_loc21_ || _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.col2);
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     loop25:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc9_);
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop27:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              loop28:
                                                                              while(!(_loc20_ && param1))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    loop29:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_.col1);
                                                                                       if(!(_loc21_ || this))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(§§pop().y);
                                                                                       loop30:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             if(!(_loc21_ || this))
                                                                                             {
                                                                                                continue loop27;
                                                                                             }
                                                                                             if(_loc20_ && this)
                                                                                             {
                                                                                                continue loop25;
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§push(_loc2_.col2);
                                                                                                if(_loc20_ && param1)
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                                §§push(§§pop().y);
                                                                                                if(_loc21_ || _loc2_)
                                                                                                {
                                                                                                   addr487:
                                                                                                   §§push(_loc9_);
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      loop31:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop32:
                                                                                                         while(_loc21_)
                                                                                                         {
                                                                                                            _loc9_ = §§pop();
                                                                                                            loop33:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               if(_loc21_ || _loc2_)
                                                                                                               {
                                                                                                                  if(_loc20_ && _loc2_)
                                                                                                                  {
                                                                                                                     continue loop32;
                                                                                                                  }
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     continue loop31;
                                                                                                                  }
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(_loc21_ || param1)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!(_loc21_ || param1))
                                                                                                                     {
                                                                                                                        addr575:
                                                                                                                        var _loc10_:*;
                                                                                                                        §§push(_loc10_ = §§pop());
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           §§push(b2Settings.b2_linearSlop);
                                                                                                                           if(_loc21_ || param1)
                                                                                                                           {
                                                                                                                              if(§§pop() > §§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc20_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(this.§]G§);
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       §§pop().§9""§(1 / _loc10_);
                                                                                                                                       if(_loc20_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr609:
                                                                                                                                       §§pop().§+J§();
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 if(_loc21_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(this.§]G§.y);
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc21_ || param1)
                                                                                                                                       {
                                                                                                                                          addr631:
                                                                                                                                          §§push(_loc7_);
                                                                                                                                          if(!_loc20_)
                                                                                                                                          {
                                                                                                                                             addr638:
                                                                                                                                             §§push(§§pop() - §§pop() * this.§]G§.x);
                                                                                                                                             if(_loc21_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr638);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr638);
                                                                                                                                 }
                                                                                                                                 var _loc11_:* = §§pop();
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§]G§.y);
                                                                                                                                    if(_loc21_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          addr664:
                                                                                                                                          §§push(_loc9_);
                                                                                                                                          if(_loc21_)
                                                                                                                                          {
                                                                                                                                             addr671:
                                                                                                                                             §§push(§§pop() - §§pop() * this.§]G§.x);
                                                                                                                                             if(!(_loc20_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr679:
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             var _loc12_:* = §§pop();
                                                                                                                                             §§push(_loc4_.§3!q§);
                                                                                                                                             if(_loc21_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_.§2!1§);
                                                                                                                                                if(!(_loc20_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   if(_loc21_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc21_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr731:
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  addr734:
                                                                                                                                                                  §§push(_loc5_.§3!q§);
                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     addr738:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc5_.§2!1§);
                                                                                                                                                                        if(_loc21_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr750:
                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              addr763:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!(_loc20_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr761:
                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(_loc21_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr771:
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              var _loc13_:* = §§pop();
                                                                                                                                                                              if(!(_loc20_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() != 0)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1462:
                                                                                                                                                                                          §§push(1 / _loc13_);
                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1479:
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1470:
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                          if(_loc21_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1479);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().§"X§ = §§pop();
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§=§);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§^!q§);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            loop54:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc14_ = §§pop();
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(2);
                                                                                                                                                                                                                     loop57:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * Math.PI);
                                                                                                                                                                                                                        addr1419:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§=§);
                                                                                                                                                                                                                           addr1421:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              addr1422:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 addr1423:
                                                                                                                                                                                                                                 while(_loc21_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc15_ = §§pop();
                                                                                                                                                                                                                                    continue loop57;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop54;
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
                                                                                                                                                                                                §§goto(addr1173);
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc21_ || _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1126);
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1470);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1462);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1177);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr763);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr771);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr750);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr771);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr738);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr763);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr761);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr763);
                                                                                                                                                }
                                                                                                                                                §§goto(addr731);
                                                                                                                                             }
                                                                                                                                             §§goto(addr734);
                                                                                                                                          }
                                                                                                                                          §§goto(addr671);
                                                                                                                                       }
                                                                                                                                       §§goto(addr679);
                                                                                                                                    }
                                                                                                                                    §§goto(addr671);
                                                                                                                                 }
                                                                                                                                 §§goto(addr664);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(this.§]G§);
                                                                                                                              }
                                                                                                                              §§goto(addr609);
                                                                                                                           }
                                                                                                                           §§goto(addr638);
                                                                                                                        }
                                                                                                                        §§goto(addr631);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc9_ = §§pop();
                                                                                                                        addr556:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc2_.col1);
                                                                                                                           break loop29;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr555:
                                                                                                                  }
                                                                                                               }
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  loop34:
                                                                                                                  for(; !_loc20_; loop43:
                                                                                                                  while(!(_loc20_ && param1))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§]G§);
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.m_sweep);
                                                                                                                           if(_loc21_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop().c);
                                                                                                                              if(!(_loc20_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       if(_loc21_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc21_ || this)
                                                                                                                                          {
                                                                                                                                             addr302:
                                                                                                                                             if(_loc21_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_.m_sweep);
                                                                                                                                                if(!(_loc20_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                   if(_loc21_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      if(!(_loc20_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            addr332:
                                                                                                                                                            if(!(_loc20_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr340:
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(!_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  addr343:
                                                                                                                                                                  §§pop().y = §§pop() - §§pop();
                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop33;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop43;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr372);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr389);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr343);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr340);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr383);
                                                                                                                                                }
                                                                                                                                                §§goto(addr382);
                                                                                                                                             }
                                                                                                                                             §§goto(addr387);
                                                                                                                                          }
                                                                                                                                          §§goto(addr332);
                                                                                                                                       }
                                                                                                                                       §§goto(addr388);
                                                                                                                                    }
                                                                                                                                    §§goto(addr340);
                                                                                                                                 }
                                                                                                                                 §§goto(addr302);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr363);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr362);
                                                                                                                           }
                                                                                                                           §§goto(addr363);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr360);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  })
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§]G§);
                                                                                                                        addr360:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.m_sweep);
                                                                                                                           addr362:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().c);
                                                                                                                              addr363:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 if(_loc21_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc21_ || this)
                                                                                                                                       {
                                                                                                                                          addr380:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc4_.m_sweep);
                                                                                                                                             addr382:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().c);
                                                                                                                                                addr383:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   if(_loc21_)
                                                                                                                                                   {
                                                                                                                                                      addr387:
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                      }
                                                                                                                                                      addr387:
                                                                                                                                                   }
                                                                                                                                                   addr388:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      addr389:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         continue loop34;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr380:
                                                                                                                                       }
                                                                                                                                       §§goto(addr387);
                                                                                                                                    }
                                                                                                                                    addr372:
                                                                                                                                 }
                                                                                                                                 §§goto(addr380);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop29;
                                                                                                               }
                                                                                                               continue loop23;
                                                                                                               if(!(_loc21_ || param1))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr357);
                                                                                                                  }
                                                                                                                  §§goto(addr575);
                                                                                                                  §§push(Number(Math.sqrt(this.§]G§.x * this.§]G§.x + this.§]G§.y * this.§]G§.y)));
                                                                                                               }
                                                                                                               §§goto(addr556);
                                                                                                            }
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      addr494:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr575);
                                                                                             }
                                                                                             §§goto(addr494);
                                                                                          }
                                                                                          §§goto(addr487);
                                                                                       }
                                                                                       continue loop26;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc20_ && this)
                                                                                       {
                                                                                          continue loop28;
                                                                                       }
                                                                                       §§push(_loc8_);
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§goto(addr513);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr575);
                                                                                       }
                                                                                    }
                                                                                    addr538:
                                                                                 }
                                                                                 §§goto(addr575);
                                                                              }
                                                                              addr554:
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr555);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr554);
                                                      }
                                                      §§goto(addr397);
                                                   }
                                                   while(!_loc20_)
                                                   {
                                                      §§goto(addr117);
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          §§goto(addr206);
                                       }
                                    }
                                    §§goto(addr228);
                                 }
                              }
                              §§goto(addr215);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr190);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::&A;
         var _loc4_:b2Body = b2internal::4!d;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc18_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc19_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc19_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
            if(_loc19_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc2_.col1.x);
         if(_loc19_)
         {
            §§push(_loc5_);
            if(!_loc18_)
            {
               addr91:
               §§push(§§pop() * §§pop());
               if(!_loc18_)
               {
                  §§push(_loc2_.col2.x);
                  if(_loc19_)
                  {
                     §§push(§§pop() * _loc6_);
                  }
               }
               var _loc7_:* = §§pop();
               if(!(_loc18_ && param1))
               {
                  §§push(_loc2_.col1.y);
                  if(_loc19_ || this)
                  {
                     §§push(_loc5_);
                     if(_loc19_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc18_)
                        {
                           §§push(_loc2_.col2.y);
                           if(_loc19_)
                           {
                              addr122:
                              §§push(§§pop() + §§pop() * _loc6_);
                              if(!_loc18_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc18_ && _loc3_))
                                 {
                                    addr133:
                                    _loc6_ = §§pop();
                                    if(_loc19_)
                                    {
                                       §§push(_loc7_);
                                       if(_loc18_)
                                       {
                                       }
                                       addr140:
                                       _loc5_ = §§pop();
                                       addr141:
                                       _loc2_ = _loc4_.m_xf.R;
                                       §§push(this.m_localAnchor2.x);
                                       if(_loc19_ || _loc3_)
                                       {
                                          §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                          if(_loc19_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc8_:* = §§pop();
                                       §§push(this.m_localAnchor2.y);
                                       if(_loc19_)
                                       {
                                          §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                          if(_loc19_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc9_:* = §§pop();
                                       if(_loc19_ || this)
                                       {
                                          §§push(_loc2_.col1);
                                          loop0:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc19_)
                                             {
                                                §§push(_loc8_);
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc19_)
                                                   {
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.col2);
                                                         loop3:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc19_)
                                                            {
                                                               §§push(_loc9_);
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc19_ || param1)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc18_ && _loc2_))
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              addr228:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.col1);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!(_loc18_ && param1))
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!(_loc19_ || this))
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          addr346:
                                                                                          §§push(_loc3_.m_angularVelocity);
                                                                                          if(!(_loc18_ && _loc3_))
                                                                                          {
                                                                                             break loop4;
                                                                                          }
                                                                                          break loop3;
                                                                                       }
                                                                                    }
                                                                                    §§push(_loc2_.col2);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc18_ && _loc2_)
                                                                                       {
                                                                                          break loop3;
                                                                                       }
                                                                                       continue loop1;
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              addr219:
                                                                              continue loop2;
                                                                              if(_loc18_ && param1)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(true)
                                                                              {
                                                                                 §§push(_loc3_.§%!<§.x);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§goto(addr346);
                                                                                 }
                                                                                 break loop5;
                                                                              }
                                                                              §§goto(addr228);
                                                                              §§goto(addr346);
                                                                           }
                                                                           addr340:
                                                                        }
                                                                        break;
                                                                        addr298:
                                                                        while(true)
                                                                        {
                                                                           if(_loc19_ || _loc3_)
                                                                           {
                                                                              _loc9_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc19_ || _loc2_)
                                                                                 {
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr346);
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                     addr368:
                                                                     §§push(Number(§§pop()));
                                                                     break loop1;
                                                                  }
                                                                  break;
                                                               }
                                                               addr355:
                                                               §§push(-§§pop());
                                                               if(_loc19_)
                                                               {
                                                                  addr359:
                                                                  §§push(§§pop() * _loc6_);
                                                                  break;
                                                               }
                                                               break;
                                                               addr322:
                                                            }
                                                            break;
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc19_ || param1)
                                                         {
                                                            §§goto(addr368);
                                                         }
                                                         break loop1;
                                                      }
                                                      addr316:
                                                   }
                                                   break;
                                                }
                                                var _loc10_:* = §§pop();
                                                §§push(_loc3_.§%!<§.y);
                                                if(!(_loc18_ && this))
                                                {
                                                   §§push(_loc3_.m_angularVelocity);
                                                   if(!(_loc18_ && this))
                                                   {
                                                      §§push(§§pop() * _loc5_);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc18_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc11_:* = §§pop();
                                                §§push(_loc4_.§%!<§.x);
                                                if(_loc19_ || _loc3_)
                                                {
                                                   §§push(_loc4_.m_angularVelocity);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(-§§pop());
                                                      if(!(_loc18_ && param1))
                                                      {
                                                         §§push(§§pop() * _loc9_);
                                                      }
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc18_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc12_:* = §§pop();
                                                §§push(_loc4_.§%!<§.y);
                                                if(_loc19_ || _loc3_)
                                                {
                                                   §§push(_loc4_.m_angularVelocity);
                                                   if(!(_loc18_ && param1))
                                                   {
                                                      §§push(§§pop() * _loc8_);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc18_ && _loc2_))
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc13_:* = §§pop();
                                                §§push(this.§]G§.x);
                                                if(!(_loc18_ && _loc2_))
                                                {
                                                   §§push(_loc12_);
                                                   if(_loc19_ || param1)
                                                   {
                                                      §§push(_loc10_);
                                                      if(!_loc18_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc19_ || _loc3_)
                                                         {
                                                            addr495:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc19_)
                                                            {
                                                               addr498:
                                                               §§push(this.§]G§.y);
                                                               if(_loc19_)
                                                               {
                                                                  §§push(_loc13_);
                                                                  if(!_loc18_)
                                                                  {
                                                                     addr508:
                                                                     §§push(§§pop() + §§pop() * (§§pop() - _loc11_));
                                                                     if(_loc19_ || param1)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr508);
                                                            }
                                                            var _loc14_:* = §§pop();
                                                            §§push(this.§"X§);
                                                            if(!_loc18_)
                                                            {
                                                               §§push(-§§pop());
                                                               if(_loc19_)
                                                               {
                                                                  §§push(_loc14_);
                                                                  if(_loc19_ || _loc2_)
                                                                  {
                                                                     §§push(this.§`a§);
                                                                     if(_loc19_ || this)
                                                                     {
                                                                        addr554:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(this.§4z§);
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(§§pop() * this.§&""§);
                                                                           }
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc19_)
                                                                        {
                                                                           addr558:
                                                                           var _loc15_:Number = §§pop();
                                                                           addr557:
                                                                           if(_loc19_ || param1)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.§&""§);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§push(§§pop() + _loc15_);
                                                                              }
                                                                              §§pop().§&""§ = §§pop();
                                                                           }
                                                                           §§push(_loc15_);
                                                                           if(_loc19_ || this)
                                                                           {
                                                                              §§push(§§pop() * this.§]G§.x);
                                                                              if(!(_loc18_ && _loc2_))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           var _loc16_:* = §§pop();
                                                                           §§push(_loc15_);
                                                                           if(!_loc18_)
                                                                           {
                                                                              §§push(§§pop() * this.§]G§.y);
                                                                              if(_loc19_ || this)
                                                                              {
                                                                                 addr609:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc17_:* = §§pop();
                                                                              if(_loc19_)
                                                                              {
                                                                                 addr871:
                                                                                 addr856:
                                                                                 addr858:
                                                                                 §§push(_loc3_.§%!<§);
                                                                                 §§push(_loc3_.§%!<§.x);
                                                                                 if(_loc19_ || param1)
                                                                                 {
                                                                                    addr870:
                                                                                    §§push(§§pop() - _loc3_.§3!q§ * _loc16_);
                                                                                 }
                                                                                 §§pop().x = §§pop();
                                                                                 addr872:
                                                                                 §§push(_loc3_.§%!<§);
                                                                                 §§push(_loc3_.§%!<§);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    addr830:
                                                                                    §§push(§§pop().y);
                                                                                    §§push(_loc3_.§3!q§);
                                                                                    §§push(_loc17_);
                                                                                    if(_loc19_ || this)
                                                                                    {
                                                                                       addr852:
                                                                                       §§pop().y = §§pop() - §§pop() * §§pop();
                                                                                       addr853:
                                                                                       addr851:
                                                                                       §§push(_loc3_);
                                                                                       §§push(_loc3_.m_angularVelocity);
                                                                                       if(_loc19_ || param1)
                                                                                       {
                                                                                          §§push(_loc3_.§2!1§);
                                                                                          if(_loc19_ || _loc3_)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                §§push(_loc17_);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   addr819:
                                                                                                   addr820:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc19_ || _loc2_)
                                                                                                   {
                                                                                                      addr812:
                                                                                                      §§push(_loc6_);
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         addr815:
                                                                                                         §§push(§§pop() * _loc16_);
                                                                                                      }
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                   }
                                                                                                   §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                   addr821:
                                                                                                   §§push(_loc4_.§%!<§);
                                                                                                   if(_loc19_ || _loc2_)
                                                                                                   {
                                                                                                      addr758:
                                                                                                      §§push(_loc4_.§%!<§.x);
                                                                                                      §§push(_loc4_.§3!q§);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         addr761:
                                                                                                         §§push(_loc16_);
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            addr764:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               addr767:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc19_ || param1)
                                                                                                               {
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     addr777:
                                                                                                                     §§push(_loc4_.§%!<§);
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           §§push(_loc4_.§%!<§);
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 if(!(_loc18_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    if(!(_loc18_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_.§3!q§);
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc18_ && param1))
                                                                                                                                          {
                                                                                                                                             if(!(_loc18_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                   if(_loc19_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr723:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         addr726:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc18_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                               addr736:
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                        §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc4_.§2!1§);
                                                                                                                                                                           if(_loc19_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc17_);
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr653:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!(_loc18_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * _loc16_);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                    if(_loc19_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr853);
                                                                                                                                                                                       }
                                                                                                                                                                                       return;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr736);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr653);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr872);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr821);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr777);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr852);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr767);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr764);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr761);
                                                                                                                                                }
                                                                                                                                                §§goto(addr870);
                                                                                                                                             }
                                                                                                                                             §§goto(addr851);
                                                                                                                                          }
                                                                                                                                          §§goto(addr758);
                                                                                                                                       }
                                                                                                                                       §§goto(addr723);
                                                                                                                                    }
                                                                                                                                    §§goto(addr758);
                                                                                                                                 }
                                                                                                                                 §§goto(addr726);
                                                                                                                              }
                                                                                                                              §§goto(addr872);
                                                                                                                           }
                                                                                                                           §§goto(addr758);
                                                                                                                        }
                                                                                                                        §§goto(addr872);
                                                                                                                     }
                                                                                                                     §§goto(addr821);
                                                                                                                  }
                                                                                                                  §§goto(addr871);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr830);
                                                                                                      }
                                                                                                      §§goto(addr870);
                                                                                                   }
                                                                                                   §§goto(addr856);
                                                                                                }
                                                                                                §§goto(addr815);
                                                                                             }
                                                                                             §§goto(addr812);
                                                                                          }
                                                                                          §§goto(addr819);
                                                                                       }
                                                                                       §§goto(addr820);
                                                                                    }
                                                                                    §§goto(addr870);
                                                                                 }
                                                                                 §§goto(addr858);
                                                                              }
                                                                              §§goto(addr819);
                                                                           }
                                                                           §§goto(addr609);
                                                                        }
                                                                        §§goto(addr558);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§goto(addr554);
                                                               }
                                                               §§goto(addr558);
                                                            }
                                                            §§goto(addr557);
                                                         }
                                                      }
                                                      §§goto(addr508);
                                                   }
                                                   §§goto(addr495);
                                                }
                                                §§goto(addr498);
                                             }
                                             §§goto(addr316);
                                          }
                                       }
                                       §§goto(addr340);
                                    }
                                    §§goto(addr141);
                                 }
                              }
                              §§goto(addr140);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr122);
                  }
               }
               §§goto(addr140);
            }
            §§push(§§pop() + §§pop());
            if(_loc19_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr91);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         if(!_loc18_)
         {
            if(this.§=§ > 0)
            {
               if(_loc17_)
               {
                  return true;
               }
            }
         }
         var _loc3_:b2Body = b2internal::&A;
         var _loc4_:b2Body = b2internal::4!d;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc17_ || param1)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc17_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc17_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
            if(!(_loc18_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc2_.col1.x);
         if(!_loc18_)
         {
            §§push(_loc5_);
            if(_loc17_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(_loc17_)
               {
                  §§push(_loc2_.col2.x);
                  if(!(_loc18_ && _loc3_))
                  {
                     addr109:
                     §§push(§§pop() * _loc6_);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc17_ || param1)
                  {
                     addr119:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(_loc17_ || param1)
                  {
                     §§push(_loc2_.col1.y);
                     if(_loc17_ || this)
                     {
                        §§push(_loc5_);
                        if(_loc17_ || this)
                        {
                           addr178:
                           addr179:
                           §§push(§§pop() * §§pop());
                           if(!_loc18_)
                           {
                              §§push(_loc2_.col2.y);
                              if(_loc17_ || param1)
                              {
                                 §§push(§§pop() * _loc6_);
                              }
                           }
                           _loc5_ = Number(§§pop());
                           _loc2_ = _loc4_.m_xf.R;
                           §§push(this.m_localAnchor2.x);
                           if(!(_loc18_ && _loc3_))
                           {
                              §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                              if(!(_loc18_ && _loc2_))
                              {
                                 addr207:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(this.m_localAnchor2.y);
                              if(_loc17_ || _loc2_)
                              {
                                 §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                 if(!(_loc18_ && this))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc9_:* = §§pop();
                              if(!_loc18_)
                              {
                                 §§push(_loc2_.col1);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc17_)
                                    {
                                       §§push(_loc8_);
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc17_)
                                          {
                                             addr348:
                                             while(true)
                                             {
                                                §§push(_loc2_.col2);
                                                addr350:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(_loc9_);
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc17_)
                                                         {
                                                            addr357:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr358:
                                                               addr374:
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc17_ || param1))
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc7_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     continue loop0;
                                                                     addr261:
                                                                     if(_loc18_ && _loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     addr408:
                                                                     addr408:
                                                                     addr409:
                                                                     §§push(_loc4_.m_sweep.c.x);
                                                                     if(!_loc18_)
                                                                     {
                                                                        break loop2;
                                                                     }
                                                                     addr409:
                                                                     var _loc10_:* = Number(§§pop());
                                                                     addr408:
                                                                     §§push(_loc4_.m_sweep.c.y);
                                                                     if(!(_loc18_ && _loc3_))
                                                                     {
                                                                        §§push(_loc9_);
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc18_ && _loc2_))
                                                                           {
                                                                              §§push(_loc3_.m_sweep.c.y);
                                                                              if(_loc17_ || _loc2_)
                                                                              {
                                                                                 addr460:
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(_loc17_ || _loc3_)
                                                                                 {
                                                                                    addr451:
                                                                                    §§push(_loc6_);
                                                                                 }
                                                                                 var _loc11_:* = Number(§§pop());
                                                                                 var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                                                                 if(_loc17_ || _loc2_)
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc17_ || _loc2_)
                                                                                             {
                                                                                                _loc10_ = §§pop();
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   §§push(_loc11_);
                                                                                                   if(_loc17_ || param1)
                                                                                                   {
                                                                                                      §§push(_loc12_);
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(_loc17_ || _loc3_)
                                                                                                         {
                                                                                                            addr529:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               _loc11_ = §§pop();
                                                                                                               addr533:
                                                                                                               §§push(_loc12_);
                                                                                                               if(!(_loc18_ && param1))
                                                                                                               {
                                                                                                                  addr541:
                                                                                                                  §§push(§§pop() - this.§^!q§);
                                                                                                                  if(_loc17_ || this)
                                                                                                                  {
                                                                                                                     addr551:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            var _loc13_:* = §§pop();
                                                                                                            if(!(_loc18_ && param1))
                                                                                                            {
                                                                                                               §§push(b2Math);
                                                                                                               §§push(_loc13_);
                                                                                                               §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                               if(_loc17_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(-§§pop());
                                                                                                               }
                                                                                                               §§push(§§pop().§?!?§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                               if(!(_loc18_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!(_loc18_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr590:
                                                                                                                     _loc13_ = §§pop();
                                                                                                                     addr591:
                                                                                                                     §§push(this.§"X§);
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        §§push(-§§pop());
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc13_);
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              addr602:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr602);
                                                                                                                     }
                                                                                                                     var _loc14_:* = §§pop();
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        this.§]G§.Set(_loc10_,_loc11_);
                                                                                                                     }
                                                                                                                     §§push(_loc14_);
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * this.§]G§.x);
                                                                                                                        if(_loc17_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr625:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc15_:* = §§pop();
                                                                                                                        §§push(_loc14_);
                                                                                                                        if(_loc17_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * this.§]G§.y);
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              addr641:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc16_:* = §§pop();
                                                                                                                           if(_loc17_ || param1)
                                                                                                                           {
                                                                                                                              §§push(_loc3_.m_sweep);
                                                                                                                              loop10:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_.m_sweep);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().c);
                                                                                                                                       loop13:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.§3!q§);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc15_);
                                                                                                                                                loop16:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      loop18:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.m_sweep);
                                                                                                                                                            loop20:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().c);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_.m_sweep);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().c);
                                                                                                                                                                     while(!(_loc18_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_.§3!q§);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                              loop26:
                                                                                                                                                                              while(!(_loc18_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    addr1020:
                                                                                                                                                                                    while(!(_loc18_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop18;
                                                                                                                                                                                    addr837:
                                                                                                                                                                                    if(!(_loc17_ || param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr844:
                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                    if(_loc17_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc18_ && param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop26;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr860:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr862:
                                                                                                                                                                                          if(_loc17_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr870:
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(_loc17_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                loop52:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr880:
                                                                                                                                                                                                      §§push(_loc4_.m_sweep);
                                                                                                                                                                                                      if(!(_loc18_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr704:
                                                                                                                                                                                                         if(!(_loc18_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop10;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().a);
                                                                                                                                                                                                               if(_loc17_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_.§2!1§);
                                                                                                                                                                                                                  if(_loc17_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                                                                        if(_loc17_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                              if(!(_loc18_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(_loc17_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr769:
                                                                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr772:
                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc15_);
                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr778:
                                                                                                                                                                                                                                                §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr781:
                                                                                                                                                                                                                                                   if(_loc17_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr789:
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop().a = §§pop();
                                                                                                                                                                                                                                                            loop53:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc3_.§@!1§();
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop52;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop53;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr982:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                                                  addr884:
                                                                                                                                                                                                                                                                  while(!(_loc18_ && this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr892);
                                                                                                                                                                                                                                                                     §§push(§§pop().c);
                                                                                                                                                                                                                                                                     §§goto(addr704);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop20;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc3_.§2!1§);
                                                                                                                                                                                                                                                               if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                                                                           addr976:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                                                                                                                              addr977:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 addr978:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                    break loop52;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr975:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr976);
                                                                                                                                                                                                                                                                     §§goto(addr781);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr971:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr980:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                  addr981:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop().a = §§pop();
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr961:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr982);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr981);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr971);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr977);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr978);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr778);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr976);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr772);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr975);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr769);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr980);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr789);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr960:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr961);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr884);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr799);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1028:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc3_.m_sweep);
                                                                                                                                                                                                      continue loop20;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr980);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1020);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr918);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr927);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr926);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop16;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop13;
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
                                                                                                                           §§goto(addr1028);
                                                                                                                        }
                                                                                                                        §§goto(addr641);
                                                                                                                     }
                                                                                                                     §§goto(addr625);
                                                                                                                  }
                                                                                                                  §§goto(addr602);
                                                                                                               }
                                                                                                               §§goto(addr590);
                                                                                                            }
                                                                                                            §§goto(addr591);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr541);
                                                                                                   }
                                                                                                   §§goto(addr551);
                                                                                                }
                                                                                                §§goto(addr533);
                                                                                             }
                                                                                             §§goto(addr541);
                                                                                          }
                                                                                          §§goto(addr529);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr541);
                                                                                 }
                                                                                 §§goto(addr533);
                                                                              }
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc17_ || _loc3_)
                                                                              {
                                                                              }
                                                                              §§goto(addr460);
                                                                           }
                                                                           §§goto(addr451);
                                                                        }
                                                                     }
                                                                     §§goto(addr460);
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc17_ || param1)
                                                                  {
                                                                     §§goto(addr408);
                                                                  }
                                                                  §§goto(addr409);
                                                               }
                                                               §§push(_loc8_);
                                                               if(!_loc18_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc17_ || _loc3_)
                                                                  {
                                                                     addr385:
                                                                     §§push(_loc3_.m_sweep.c.x);
                                                                     if(_loc17_ || this)
                                                                     {
                                                                        break loop5;
                                                                     }
                                                                     §§goto(addr400);
                                                                  }
                                                                  §§goto(addr409);
                                                               }
                                                               §§goto(addr400);
                                                            }
                                                            addr357:
                                                         }
                                                         break;
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc18_)
                                                      {
                                                         §§goto(addr400);
                                                         §§push(_loc5_);
                                                      }
                                                      §§goto(addr408);
                                                      addr354:
                                                   }
                                                   §§goto(addr357);
                                                }
                                             }
                                             addr348:
                                          }
                                          §§goto(addr358);
                                          addr288:
                                          if(_loc18_ && param1)
                                          {
                                             continue;
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc18_ && param1))
                                          {
                                             §§push(_loc2_.col2);
                                             if(!(_loc18_ && _loc2_))
                                             {
                                                §§push(§§pop().y);
                                                if(!_loc18_)
                                                {
                                                   addr315:
                                                   §§push(_loc9_);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc17_)
                                                      {
                                                         addr321:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc17_ || _loc2_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc18_ && param1))
                                                            {
                                                               _loc9_ = §§pop();
                                                               do
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(!(_loc17_ || _loc3_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc18_ && _loc3_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr408);
                                                               }
                                                               while(_loc8_ = §§pop(), _loc18_ && _loc2_);
                                                               
                                                               §§goto(addr261);
                                                            }
                                                            §§goto(addr374);
                                                         }
                                                         §§goto(addr408);
                                                      }
                                                      §§goto(addr400);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr354);
                                                   }
                                                }
                                                §§goto(addr321);
                                             }
                                             else
                                             {
                                                §§goto(addr350);
                                             }
                                          }
                                          §§goto(addr385);
                                       }
                                    }
                                    §§goto(addr348);
                                 }
                              }
                              §§goto(addr367);
                           }
                           §§goto(addr207);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc17_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc18_)
                           {
                              _loc6_ = §§pop();
                              if(_loc17_)
                              {
                                 addr170:
                                 §§push(_loc7_);
                                 if(_loc17_ || _loc2_)
                                 {
                                    §§goto(addr178);
                                 }
                                 §§goto(addr179);
                              }
                           }
                        }
                     }
                     §§goto(addr178);
                  }
                  §§goto(addr170);
               }
               §§goto(addr119);
            }
            §§goto(addr109);
         }
         §§goto(addr119);
      }
   }
}
