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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!_loc5_)
         {
            this.m_localAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
            }
            addr166:
         }
         loop1:
         while(true)
         {
            this.§]G§ = new b2Vec2();
            loop2:
            while(true)
            {
               super(param1);
               while(true)
               {
                  this.m_localAnchor1.SetV(param1.§'G§);
                  continue loop2;
                  loop10:
                  while(_loc6_ || param1)
                  {
                     this.§`a§ = 0;
                     if(_loc6_)
                     {
                        addr37:
                        if(_loc6_ || _loc3_)
                        {
                           if(_loc6_)
                           {
                              return;
                           }
                           continue loop2;
                        }
                        loop9:
                        while(true)
                        {
                           if(_loc6_ || param1)
                           {
                              if(!_loc5_)
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 this.§4z§ = 0;
                                 continue loop10;
                              }
                              addr98:
                              while(true)
                              {
                                 this.§#!d§ = param1.§&!u§;
                              }
                           }
                           while(_loc6_)
                           {
                              this.§&""§ = 0;
                              continue loop9;
                           }
                           addr120:
                           while(true)
                           {
                              this.§^!q§ = param1.length;
                              break loop9;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
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
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§&""§);
            if(_loc2_ || this)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || _loc3_)
               {
                  §§push(this.§]G§.x);
                  if(!_loc3_)
                  {
                     addr68:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(this.§&""§);
                        if(_loc2_ || param1)
                        {
                           §§goto(addr92);
                        }
                        §§push(§§pop() * §§pop());
                     }
                  }
                  addr92:
                  §§push(§§pop() * §§pop());
                  if(_loc2_ || _loc3_)
                  {
                     §§push(this.§]G§.y);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
               }
            }
         }
         §§goto(addr68);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
         if(!(_loc3_ && param1))
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
         if(!_loc2_)
         {
            this.§#!d§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc9_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         _loc4_ = b2internal::&A;
         _loc5_ = b2internal::4!d;
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc21_ && _loc3_))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc20_)
            {
               addr71:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc20_ || _loc3_)
            {
               §§push(this.m_localAnchor1.y);
               loop0:
               while(true)
               {
                  §§push(_loc4_.m_sweep.localCenter.y);
                  while(true)
                  {
                     §§push(§§pop() - §§pop());
                     loop2:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        while(true)
                        {
                           _loc7_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_.col1);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 loop6:
                                 while(_loc20_)
                                 {
                                    §§push(_loc6_);
                                    if(_loc20_ || this)
                                    {
                                       §§push(§§pop() * §§pop());
                                       while(true)
                                       {
                                          §§push(_loc2_.col2);
                                          addr236:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                          }
                                          addr173:
                                          if(_loc21_ && param1)
                                          {
                                             continue;
                                          }
                                          §§push(_loc2_.col2);
                                          if(_loc20_ || _loc3_)
                                          {
                                             §§push(§§pop().y);
                                             if(!_loc21_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc20_ || this)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      while(!(_loc21_ && param1))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         loop18:
                                                         while(!(_loc21_ && param1))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop19:
                                                            while(true)
                                                            {
                                                               _loc7_ = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc20_ || param1)
                                                                  {
                                                                     if(!_loc20_)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  if(!_loc20_)
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                                  if(!(_loc21_ && this))
                                                                  {
                                                                     if(_loc21_ && param1)
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc6_ = §§pop();
                                                                     if(!(_loc20_ || param1))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc21_)
                                                                     {
                                                                        if(!_loc20_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        while(false)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        _loc2_ = _loc5_.m_xf.R;
                                                                        §§push(this.m_localAnchor2.x);
                                                                        if(!_loc21_)
                                                                        {
                                                                           §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                                           if(!(_loc21_ && _loc2_))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc8_:* = §§pop();
                                                                        if(_loc20_ || this)
                                                                        {
                                                                           §§push(this.m_localAnchor2.y);
                                                                           if(_loc20_ || _loc2_)
                                                                           {
                                                                              §§push(_loc5_.m_sweep.localCenter.y);
                                                                              if(!(_loc21_ && param1))
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc9_ = §§pop();
                                                                                       loop25:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.col1);
                                                                                          loop26:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr495:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(!(_loc21_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_.col2);
                                                                                                      addr506:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr507:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc9_);
                                                                                                            addr508:
                                                                                                            addr580:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            addr580:
                                                                                                            var _loc10_:* = §§pop();
                                                                                                            if(_loc20_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(b2Settings.b2_linearSlop);
                                                                                                               if(!_loc21_)
                                                                                                               {
                                                                                                                  if(§§pop() > §§pop())
                                                                                                                  {
                                                                                                                     if(_loc20_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(this.§]G§);
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           §§pop().§9""§(1 / _loc10_);
                                                                                                                           if(_loc20_ || param1)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr618:
                                                                                                                           §§pop().§+J§();
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(!(_loc21_ && param1))
                                                                                                                     {
                                                                                                                        §§push(this.§]G§.y);
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr656:
                                                                                                                           var _loc11_:Number = §§pop();
                                                                                                                           addr655:
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(!(_loc21_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(this.§]G§.y);
                                                                                                                              if(!(_loc21_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       addr685:
                                                                                                                                       §§push(§§pop() - §§pop() * this.§]G§.x);
                                                                                                                                       if(_loc21_ && _loc3_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       var _loc12_:* = §§pop();
                                                                                                                                       §§push(_loc4_.§3!q§);
                                                                                                                                       if(_loc20_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_.§2!1§);
                                                                                                                                          if(!_loc21_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc11_);
                                                                                                                                             if(!(_loc21_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc21_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!(_loc21_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc5_.§3!q§);
                                                                                                                                                            if(_loc20_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr752:
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_.§2!1§);
                                                                                                                                                                  if(_loc20_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr764:
                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           addr771:
                                                                                                                                                                           §§push(§§pop() * _loc12_);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           addr776:
                                                                                                                                                                           var _loc13_:Number = §§pop();
                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this);
                                                                                                                                                                              if(_loc20_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc13_);
                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() != 0)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1476:
                                                                                                                                                                                       §§push(1 / _loc13_);
                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1481:
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1494:
                                                                                                                                                                                          §§pop().§"X§ = §§pop();
                                                                                                                                                                                          loop38:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§=§);
                                                                                                                                                                                             loop39:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                loop40:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop41:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                                                                         loop42:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§^!q§);
                                                                                                                                                                                                            loop43:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               loop44:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  loop45:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc14_ = §§pop();
                                                                                                                                                                                                                     loop46:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(2);
                                                                                                                                                                                                                        loop47:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * Math.PI);
                                                                                                                                                                                                                           loop48:
                                                                                                                                                                                                                           while(!(_loc21_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§=§);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 addr1436:
                                                                                                                                                                                                                                 while(_loc20_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                                                                                                                       continue loop47;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop42;
                                                                                                                                                                                                                                 addr1350:
                                                                                                                                                                                                                                 if(_loc21_ && this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 while(_loc20_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc20_ || _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop44;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                                                                    loop61:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc21_ && param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop40;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                             loop62:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc17_ = §§pop();
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this);
                                                                                                                                                                                                                                                   §§push(param1.§?!C§);
                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                                                                                                                      if(_loc20_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(param1.§?!C§);
                                                                                                                                                                                                                                                         if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * _loc17_);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§pop().§4z§ = §§pop();
                                                                                                                                                                                                                                                   loop64:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§4z§);
                                                                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(§§pop() != 0)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1283:
                                                                                                                                                                                                                                                               §§push(1 / this.§4z§);
                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1296:
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§pop().§4z§ = §§pop();
                                                                                                                                                                                                                                                            loop65:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this);
                                                                                                                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                                                                                                                               if(_loc20_ || _loc2_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(param1.§?!C§);
                                                                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     if(_loc20_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1262:
                                                                                                                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1270:
                                                                                                                                                                                                                                                                              §§push(§§pop() * this.§4z§);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().§`a§ = §§pop();
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this);
                                                                                                                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() + this.§4z§);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§pop().§"X§ = §§pop();
                                                                                                                                                                                                                                                                              loop67:
                                                                                                                                                                                                                                                                              while(_loc20_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop47;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                                                                                                                 if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(this.§"X§);
                                                                                                                                                                                                                                                                                    if(_loc20_ || _loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(§§pop() != 0)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1195:
                                                                                                                                                                                                                                                                                          §§push(1 / this.§"X§);
                                                                                                                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                             if(_loc21_ && param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1218:
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                                                                                                                          if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1218);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§pop().§"X§ = §§pop();
                                                                                                                                                                                                                                                                                       loop68:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1150:
                                                                                                                                                                                                                                                                                          loop69:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!param1.§9!w§)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                this.§&""§ = 0;
                                                                                                                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc20_ || this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      loop70:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop41;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop38;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§push(_loc4_.§%!<§);
                                                                                                                                                                                                                                                                                                               loop71:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc4_.§%!<§);
                                                                                                                                                                                                                                                                                                                  addr1016:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                     loop73:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc4_.§3!q§);
                                                                                                                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                              loop74:
                                                                                                                                                                                                                                                                                                                              for(; !(_loc21_ && this); while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!(_loc20_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop74;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    addr967:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                          while(!_loc21_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop46;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr976);
                                                                                                                                                                                                                                                                                                                                             if(!(_loc20_ || this))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr857);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop69;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop73;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1057);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              })
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                 while(_loc20_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                    while(!_loc21_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                       loop77:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                             §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc4_.§2!1§);
                                                                                                                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                      if(_loc20_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1008:
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr1001:
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1004:
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc5_.§%!<§);
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc5_.§%!<§);
                                                                                                                                                                                                                                                                                                                                                               addr947:
                                                                                                                                                                                                                                                                                                                                                               while(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc5_.§3!q§);
                                                                                                                                                                                                                                                                                                                                                                     addr957:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                                        continue loop74;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr1056:
                                                                                                                                                                                                                                                                                                                                                               addr976:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                                  addr1057:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc4_.§3!q§);
                                                                                                                                                                                                                                                                                                                                                                     addr1059:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                                        break loop74;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc5_.§%!<§);
                                                                                                                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue loop71;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr1010:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1004);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1001);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1008);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   break loop77;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(this.§&""§);
                                                                                                                                                                                                                                                                                                                                                   continue loop62;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                loop58:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(this.§"X§);
                                                                                                                                                                                                                                                                                                                                                   loop59:
                                                                                                                                                                                                                                                                                                                                                   while(_loc20_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1333:
                                                                                                                                                                                                                                                                                                                                                      if(_loc21_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         while(_loc20_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(this.§#!d§);
                                                                                                                                                                                                                                                                                                                                                            if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                               break loop59;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1333);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop48;
                                                                                                                                                                                                                                                                                                                                                         addr1395:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop61;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1350);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      while(_loc20_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                         break loop61;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop43;
                                                                                                                                                                                                                                                                                                                                                      if(_loc21_ && this)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop39;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§push(this.§]G§);
                                                                                                                                                                                                                                                                                                                                                      loop92:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                         addr1142:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1146:
                                                                                                                                                                                                                                                                                                                                                            loop94:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               _loc18_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                               addr1147:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop64;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§&""§);
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        continue loop92;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     addr1419:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                        continue loop58;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr1118:
                                                                                                                                                                                                                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc4_.§%!<§);
                                                                                                                                                                                                                                                                                                                                                                        addr1054:
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1056);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     addr1119:
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop94;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               continue loop62;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1408);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr1170:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr857:
                                                                                                                                                                                                                                                                                                                                          if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr780:
                                                                                                                                                                                                                                                                                                                                             return;
                                                                                                                                                                                                                                                                                                                                             addr864:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop65;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop70;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                    continue loop70;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1061);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1059);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1037);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     break loop70;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                                                                                                                  §§push(this.§&""§);
                                                                                                                                                                                                                                                                                                                  if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * param1.§[!4§);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§pop().§&""§ = §§pop();
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1154:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1170);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1119);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop67;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr780);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr843);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1154);
                                                                                                                                                                                                                                                                                             continue loop68;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1218);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1195);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1270);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1262);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1296);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1283);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1381:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1381);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(!_loc21_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1419);
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1436);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1439);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop45;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1150);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       if(_loc20_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1494);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1481);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1476);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr941);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr776);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr771);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr776);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr771);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr776);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr771);
                                                                                                                                                }
                                                                                                                                                §§goto(addr752);
                                                                                                                                             }
                                                                                                                                             §§goto(addr771);
                                                                                                                                          }
                                                                                                                                          §§goto(addr764);
                                                                                                                                       }
                                                                                                                                       §§goto(addr776);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr685);
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr685);
                                                                                                                        }
                                                                                                                        addr643:
                                                                                                                        §§push(§§pop() - §§pop() * this.§]G§.x);
                                                                                                                        if(!(_loc21_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§goto(addr655);
                                                                                                                        }
                                                                                                                        §§goto(addr656);
                                                                                                                     }
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(_loc21_ && _loc3_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr643);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(this.§]G§);
                                                                                                                  }
                                                                                                                  §§goto(addr618);
                                                                                                               }
                                                                                                               §§goto(addr643);
                                                                                                            }
                                                                                                            §§goto(addr656);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr504:
                                                                                                }
                                                                                                addr511:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc20_ || this)
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   addr579:
                                                                                                   addr579:
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                                continue loop23;
                                                                                             }
                                                                                             loop34:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_.col1);
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   continue loop26;
                                                                                                }
                                                                                                §§push(§§pop().y);
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   if(!(_loc21_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(!(_loc21_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc21_ && _loc2_))
                                                                                                         {
                                                                                                            addr441:
                                                                                                            §§push(_loc2_.col2);
                                                                                                            if(_loc20_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(_loc20_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(!(_loc21_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc20_)
                                                                                                                     {
                                                                                                                        if(!(_loc21_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              while(!(_loc21_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    _loc9_ = §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          if(!_loc20_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!(_loc21_ && this))
                                                                                                                                          {
                                                                                                                                             _loc8_ = §§pop();
                                                                                                                                             loop37:
                                                                                                                                             while(_loc20_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   loop106:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§]G§);
                                                                                                                                                      loop107:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_.m_sweep);
                                                                                                                                                         loop108:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                            loop109:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               if(_loc20_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     loop110:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_.m_sweep);
                                                                                                                                                                        loop111:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().c);
                                                                                                                                                                           loop112:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    addr384:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr383:
                                                                                                                                                                              }
                                                                                                                                                                              loop113:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 loop114:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop37;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop25;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(this.§]G§);
                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop107;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc5_.m_sweep);
                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop108;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop().c);
                                                                                                                                                                                       if(!(_loc20_ || _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop109;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc9_);
                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc20_ || _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop113;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop110;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc4_.m_sweep);
                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop111;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop().c);
                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop112;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr338:
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc21_ && this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop114;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!(_loc20_ || param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop34;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop106;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr579);
                                                                                                                                                                                                   §§push(Number(Math.sqrt(this.§]G§.x * this.§]G§.x + this.§]G§.y * this.§]G§.y)));
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr338);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr338);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr384);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr383);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr384);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr579);
                                                                                                                                    }
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§goto(addr504);
                                                                                                                              }
                                                                                                                              while(!(_loc21_ && param1))
                                                                                                                              {
                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                 continue loop34;
                                                                                                                                 §§goto(addr480);
                                                                                                                              }
                                                                                                                              addr480:
                                                                                                                              continue loop24;
                                                                                                                              addr527:
                                                                                                                           }
                                                                                                                           §§goto(addr579);
                                                                                                                        }
                                                                                                                        §§goto(addr507);
                                                                                                                     }
                                                                                                                     §§goto(addr580);
                                                                                                                  }
                                                                                                                  §§goto(addr508);
                                                                                                               }
                                                                                                               §§goto(addr580);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr579);
                                                                                                      }
                                                                                                      §§goto(addr580);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr495);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr441);
                                                                                             }
                                                                                             §§goto(addr506);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr580);
                                                                           }
                                                                           §§goto(addr579);
                                                                        }
                                                                        §§goto(addr409);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        addr244:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr166:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc21_ && param1))
                                                                        {
                                                                           §§goto(addr173);
                                                                        }
                                                                        addr240:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           break loop18;
                                                                        }
                                                                     }
                                                                     §§goto(addr236);
                                                                     addr166:
                                                                  }
                                                               }
                                                               continue loop6;
                                                            }
                                                         }
                                                         while(!_loc21_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            §§goto(addr244);
                                                         }
                                                         continue loop0;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr240);
                                                      }
                                                      addr239:
                                                      addr201:
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr239);
                                                }
                                                addr238:
                                                addr192:
                                             }
                                             §§goto(addr201);
                                          }
                                          §§goto(addr236);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr238);
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr121);
         }
         §§goto(addr71);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::&A;
         var _loc4_:b2Body = b2internal::4!d;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc18_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc18_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc18_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
            if(!_loc19_)
            {
               addr61:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(!_loc19_)
            {
               §§push(_loc5_);
               if(!_loc19_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc19_ && _loc3_))
                  {
                     §§push(_loc2_.col2.x);
                     if(!(_loc19_ && this))
                     {
                        addr91:
                        §§push(§§pop() + §§pop() * _loc6_);
                        if(!(_loc19_ && this))
                        {
                           addr99:
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr91);
                  }
                  var _loc7_:* = §§pop();
                  if(!(_loc19_ && this))
                  {
                     §§push(_loc2_.col1.y);
                     if(_loc18_ || _loc2_)
                     {
                        §§push(_loc5_);
                        if(_loc18_ || this)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc19_)
                           {
                              §§push(_loc2_.col2.y);
                              if(_loc18_ || _loc2_)
                              {
                                 addr141:
                                 §§push(§§pop() + §§pop() * _loc6_);
                                 if(!_loc19_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc19_)
                                    {
                                       addr147:
                                       _loc6_ = §§pop();
                                       if(_loc18_ || param1)
                                       {
                                          §§push(_loc7_);
                                          if(_loc18_ || param1)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       _loc2_ = _loc4_.m_xf.R;
                                       §§push(this.m_localAnchor2.x);
                                       if(_loc18_)
                                       {
                                          §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                          if(_loc18_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc8_:* = §§pop();
                                       §§push(this.m_localAnchor2.y);
                                       if(_loc18_)
                                       {
                                          §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                          if(_loc18_ || _loc2_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc9_:* = §§pop();
                                       if(!_loc19_)
                                       {
                                          §§push(_loc2_.col1);
                                          loop0:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             loop1:
                                             while(true)
                                             {
                                                §§push(_loc8_);
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
                                                         if(_loc18_ || this)
                                                         {
                                                            §§push(_loc9_);
                                                            if(_loc18_ || _loc2_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc18_ || _loc2_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc18_)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           addr251:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.col1);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(_loc8_);
                                                                                 if(!(_loc19_ && _loc3_))
                                                                                 {
                                                                                    if(_loc19_ && _loc3_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                                 addr367:
                                                                                 addr368:
                                                                                 addr369:
                                                                                 §§push(§§pop() + §§pop() * _loc6_);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    break loop5;
                                                                                 }
                                                                                 var _loc10_:* = §§pop();
                                                                                 §§push(_loc3_.§%!<§.y);
                                                                                 if(!(_loc19_ && param1))
                                                                                 {
                                                                                    §§push(_loc3_.m_angularVelocity);
                                                                                    if(!(_loc19_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() * _loc5_);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc19_ && param1))
                                                                                    {
                                                                                       addr403:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc11_:* = §§pop();
                                                                                    §§push(_loc4_.§%!<§.x);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(_loc4_.m_angularVelocity);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             addr417:
                                                                                             §§push(§§pop() * _loc9_);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             addr422:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc12_:* = §§pop();
                                                                                          §§push(_loc4_.§%!<§.y);
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             §§push(_loc4_.m_angularVelocity);
                                                                                             if(!(_loc19_ && _loc2_))
                                                                                             {
                                                                                                §§push(§§pop() * _loc8_);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          var _loc13_:* = §§pop();
                                                                                          §§push(this.§]G§.x);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(_loc12_);
                                                                                             if(!(_loc19_ && param1))
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                if(_loc18_ || _loc2_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc19_ && this))
                                                                                                      {
                                                                                                         §§push(this.§]G§.y);
                                                                                                         if(!(_loc19_ && this))
                                                                                                         {
                                                                                                            addr503:
                                                                                                            §§push(_loc13_);
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               addr500:
                                                                                                               §§push(§§pop() - _loc11_);
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop() * §§pop());
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               addr506:
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr503);
                                                                                                      }
                                                                                                      var _loc14_:* = §§pop();
                                                                                                      §§push(this.§"X§);
                                                                                                      if(!(_loc19_ && this))
                                                                                                      {
                                                                                                         §§push(-§§pop());
                                                                                                         if(_loc18_ || this)
                                                                                                         {
                                                                                                            addr525:
                                                                                                            §§push(_loc14_);
                                                                                                            if(_loc18_ || param1)
                                                                                                            {
                                                                                                               §§push(this.§`a§);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     addr553:
                                                                                                                     §§push(this.§4z§);
                                                                                                                     if(!(_loc19_ && this))
                                                                                                                     {
                                                                                                                        addr549:
                                                                                                                        §§push(§§pop() * this.§&""§);
                                                                                                                     }
                                                                                                                     §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                     if(!(_loc19_ && this))
                                                                                                                     {
                                                                                                                        addr561:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc15_:* = §§pop();
                                                                                                                     if(_loc18_ || param1)
                                                                                                                     {
                                                                                                                        §§push(this);
                                                                                                                        §§push(this.§&""§);
                                                                                                                        if(_loc18_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + _loc15_);
                                                                                                                        }
                                                                                                                        §§pop().§&""§ = §§pop();
                                                                                                                     }
                                                                                                                     §§push(_loc15_);
                                                                                                                     if(_loc18_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * this.§]G§.x);
                                                                                                                        if(!(_loc19_ && this))
                                                                                                                        {
                                                                                                                           addr602:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc16_:* = §§pop();
                                                                                                                        §§push(_loc15_);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * this.§]G§.y);
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        var _loc17_:* = §§pop();
                                                                                                                        if(!(_loc19_ && param1))
                                                                                                                        {
                                                                                                                           §§push(_loc3_.§%!<§);
                                                                                                                           loop12:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_.§%!<§);
                                                                                                                              loop13:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 if(_loc18_ || param1)
                                                                                                                                 {
                                                                                                                                    addr909:
                                                                                                                                    §§push(_loc3_.§3!q§);
                                                                                                                                    if(_loc18_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(_loc16_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                       }
                                                                                                                                       addr908:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                    }
                                                                                                                                    addr909:
                                                                                                                                 }
                                                                                                                                 loop16:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_.§%!<§);
                                                                                                                                       while(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.§%!<§);
                                                                                                                                          loop19:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().y);
                                                                                                                                             loop20:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_.§3!q§);
                                                                                                                                                loop21:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                   loop22:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         loop23:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            loop24:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                               loop25:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                  §§push(_loc3_.m_angularVelocity);
                                                                                                                                                                  if(_loc18_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.§2!1§);
                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              addr855:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!(_loc19_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * _loc16_);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                                                              loop26:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc4_.§%!<§);
                                                                                                                                                                                 loop27:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_.§%!<§);
                                                                                                                                                                                    addr778:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop19;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc19_ && this)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop20;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(_loc4_.§3!q§);
                                                                                                                                                                                          if(!(_loc19_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                             while(!(_loc19_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop22;
                                                                                                                                                                                             addr804:
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             addr718:
                                                                                                                                                                                             if(!(_loc18_ || _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc17_);
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr729:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop23;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!(_loc19_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr739:
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc19_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc18_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop26;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop27;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop25;
                                                                                                                                                                                                            addr751:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop16;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop24;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                      continue loop27;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr813:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr909);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr804);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr813);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop13;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr855);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr908);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr909);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          if(!(_loc18_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§push(_loc4_.§%!<§);
                                                                                                                                          if(!(_loc19_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().y);
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_.§3!q§);
                                                                                                                                                if(_loc18_ || this)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr718);
                                                                                                                                                }
                                                                                                                                                §§goto(addr729);
                                                                                                                                             }
                                                                                                                                             §§goto(addr739);
                                                                                                                                          }
                                                                                                                                          §§goto(addr778);
                                                                                                                                       }
                                                                                                                                       continue loop12;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr684);
                                                                                                                     }
                                                                                                                     §§goto(addr602);
                                                                                                                  }
                                                                                                                  §§goto(addr553);
                                                                                                               }
                                                                                                               §§goto(addr549);
                                                                                                            }
                                                                                                            §§goto(addr553);
                                                                                                         }
                                                                                                         §§goto(addr561);
                                                                                                      }
                                                                                                      §§goto(addr525);
                                                                                                   }
                                                                                                   §§goto(addr503);
                                                                                                }
                                                                                                §§goto(addr500);
                                                                                             }
                                                                                             §§goto(addr503);
                                                                                          }
                                                                                          §§goto(addr506);
                                                                                       }
                                                                                       §§goto(addr417);
                                                                                    }
                                                                                    §§goto(addr422);
                                                                                 }
                                                                                 §§goto(addr403);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.col2);
                                                                                 if(!(_loc18_ || param1))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc18_ || param1)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr367);
                                                                                    }
                                                                                    §§goto(addr368);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc9_ = §§pop();
                                                                                    addr305:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(!(_loc19_ && this))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc18_ || _loc3_)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             addr350:
                                                                                             §§push(_loc3_.m_angularVelocity);
                                                                                             if(!(_loc19_ && _loc2_))
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                if(_loc18_ || _loc2_)
                                                                                                {
                                                                                                   §§goto(addr367);
                                                                                                }
                                                                                                §§goto(addr369);
                                                                                             }
                                                                                             §§goto(addr367);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    §§goto(addr367);
                                                                                 }
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     break;
                                                                     if(_loc19_ && param1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc19_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     _loc8_ = §§pop();
                                                                     if(!(_loc19_ && _loc2_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr251);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(_loc3_.§%!<§.x);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§goto(addr350);
                                                                              }
                                                                           }
                                                                           §§goto(addr367);
                                                                        }
                                                                        addr249:
                                                                     }
                                                                     §§goto(addr305);
                                                                  }
                                                                  §§goto(addr367);
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr367);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr249);
                                    }
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr141);
                           }
                           _loc5_ = §§pop();
                           §§goto(addr147);
                        }
                        §§goto(addr141);
                     }
                  }
                  §§goto(addr147);
               }
               §§goto(addr91);
            }
            §§goto(addr99);
         }
         §§goto(addr61);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         if(_loc17_ || param1)
         {
            if(this.§=§ > 0)
            {
               if(!_loc18_)
               {
                  §§goto(addr32);
               }
            }
            var _loc3_:b2Body = b2internal::&A;
            var _loc4_:b2Body = b2internal::4!d;
            _loc2_ = _loc3_.m_xf.R;
            §§push(this.m_localAnchor1.x);
            if(!(_loc18_ && _loc3_))
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
               if(_loc17_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc18_)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
               if(_loc17_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(!(_loc18_ && param1))
            {
               §§push(_loc5_);
               if(_loc17_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc17_ || _loc3_)
                  {
                     addr104:
                     §§push(_loc2_.col2.x);
                     if(!_loc18_)
                     {
                        addr111:
                        §§push(§§pop() + §§pop() * _loc6_);
                        if(_loc17_ || this)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr111);
                  }
                  var _loc7_:* = §§pop();
                  if(!(_loc18_ && _loc3_))
                  {
                     §§push(_loc2_.col1.y);
                     if(_loc17_ || this)
                     {
                        §§push(_loc5_);
                        if(!_loc18_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc17_)
                           {
                              §§push(_loc2_.col2.y);
                              if(!_loc18_)
                              {
                                 addr151:
                                 §§push(§§pop() + §§pop() * _loc6_);
                                 if(!(_loc18_ && _loc3_))
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc18_)
                                    {
                                       addr162:
                                       _loc6_ = §§pop();
                                       if(!(_loc18_ && _loc2_))
                                       {
                                          §§push(_loc7_);
                                          if(_loc18_ && _loc2_)
                                          {
                                          }
                                          addr179:
                                          _loc5_ = §§pop();
                                          addr180:
                                          _loc2_ = _loc4_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(!_loc18_)
                                          {
                                             §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                             if(!_loc18_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc8_:* = §§pop();
                                          §§push(this.m_localAnchor2.y);
                                          if(!(_loc18_ && _loc2_))
                                          {
                                             §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                             if(_loc17_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc9_:* = §§pop();
                                          if(_loc17_)
                                          {
                                             §§push(_loc2_.col1);
                                             loop0:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr324:
                                                addr372:
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   if(!(_loc17_ || _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc17_)
                                                   {
                                                      §§push(_loc2_.col2);
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc17_ || this)
                                                         {
                                                            §§push(_loc9_);
                                                            loop3:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc17_)
                                                               {
                                                                  break;
                                                               }
                                                               addr294:
                                                               §§push(§§pop().y);
                                                               if(!(_loc17_ || _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               §§push(_loc9_);
                                                               if(_loc17_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc18_)
                                                                  {
                                                                     addr308:
                                                                     §§push(§§pop() + §§pop());
                                                                     loop9:
                                                                     while(!(_loc18_ && _loc3_))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc17_)
                                                                        {
                                                                           _loc9_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!(_loc18_ && _loc2_))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    break loop3;
                                                                                 }
                                                                                 addr384:
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              addr394:
                                                                              var _loc10_:* = §§pop();
                                                                              §§push(_loc4_.m_sweep.c.y);
                                                                              if(_loc17_)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 if(!(_loc18_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       §§push(_loc3_.m_sweep.c.y);
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          addr430:
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                          }
                                                                                          var _loc11_:* = Number(§§pop());
                                                                                          var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                                                                          if(_loc17_ || _loc3_)
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             if(_loc17_ || _loc2_)
                                                                                             {
                                                                                                §§push(_loc12_);
                                                                                                if(!(_loc18_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(_loc17_ || this)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc17_ || _loc2_)
                                                                                                      {
                                                                                                         addr482:
                                                                                                         _loc10_ = §§pop();
                                                                                                         if(!(_loc18_ && _loc3_))
                                                                                                         {
                                                                                                            addr500:
                                                                                                            §§push(_loc11_);
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               §§push(_loc12_);
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        addr517:
                                                                                                                        _loc11_ = §§pop();
                                                                                                                        addr518:
                                                                                                                        §§push(_loc12_);
                                                                                                                        if(_loc18_ && _loc2_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr537:
                                                                                                                        var _loc13_:* = §§pop();
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           §§push(b2Math);
                                                                                                                           §§push(_loc13_);
                                                                                                                           §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                           if(_loc17_ || param1)
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                           }
                                                                                                                           §§push(§§pop().§?!?§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!(_loc18_ && _loc3_))
                                                                                                                              {
                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                 addr566:
                                                                                                                                 §§push(this.§"X§);
                                                                                                                                 if(_loc17_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr575:
                                                                                                                                    §§push(-§§pop());
                                                                                                                                    if(_loc17_ || this)
                                                                                                                                    {
                                                                                                                                       addr583:
                                                                                                                                       §§push(§§pop() * _loc13_);
                                                                                                                                       if(_loc18_ && this)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr593:
                                                                                                                                       var _loc14_:* = §§pop();
                                                                                                                                       if(!(_loc18_ && this))
                                                                                                                                       {
                                                                                                                                          this.§]G§.Set(_loc10_,_loc11_);
                                                                                                                                       }
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * this.§]G§.x);
                                                                                                                                          if(!(_loc18_ && param1))
                                                                                                                                          {
                                                                                                                                             addr620:
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          var _loc15_:* = §§pop();
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * this.§]G§.y);
                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                             {
                                                                                                                                                addr641:
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             var _loc16_:* = §§pop();
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_.m_sweep);
                                                                                                                                                loop11:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                   loop12:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_.m_sweep);
                                                                                                                                                      loop13:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().c);
                                                                                                                                                         loop14:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            if(_loc17_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc3_.§3!q§);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                  addr1009:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     addr1010:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr1008:
                                                                                                                                                            }
                                                                                                                                                            loop18:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                               loop19:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_.m_sweep);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().c);
                                                                                                                                                                     loop21:
                                                                                                                                                                     while(_loc17_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_.m_sweep);
                                                                                                                                                                        while(_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().c);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                              loop24:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_.§3!q§);
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                    loop25:
                                                                                                                                                                                    for(; _loc17_ || _loc2_; while(_loc17_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       while(!(_loc18_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                             §§goto(addr921);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    })
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          addr988:
                                                                                                                                                                                          while(_loc17_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                             loop28:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc3_.m_sweep);
                                                                                                                                                                                                loop29:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc3_.m_sweep);
                                                                                                                                                                                                   addr929:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().a);
                                                                                                                                                                                                      addr930:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc3_.§2!1§);
                                                                                                                                                                                                         addr932:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                            addr933:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                               addr934:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                        addr939:
                                                                                                                                                                                                                        addr779:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           addr940:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr779:
                                                                                                                                                                                                                        if(!(_loc17_ || _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().a = §§pop() + §§pop() * (§§pop() - §§pop());
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc3_.§@!1§();
                                                                                                                                                                                                                           loop55:
                                                                                                                                                                                                                           for(; _loc17_ || param1; while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc4_.§@!1§();
                                                                                                                                                                                                                              if(_loc17_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop55;
                                                                                                                                                                                                                           },return b2Math.§0@§(_loc13_) < b2Settings.b2_linearSlop)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr921:
                                                                                                                                                                                                                                 while(_loc17_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                    while(_loc17_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                       continue loop11;
                                                                                                                                                                                                                                       if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop29;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop19;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr867:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc18_ && this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(!_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop28;
                                                                                                                                                                                                                                    addr944:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr874);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr940);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().c);
                                                                                                                                                                                                                                 addr879:
                                                                                                                                                                                                                                 while(_loc17_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().c);
                                                                                                                                                                                                                                       addr889:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                                                                          addr890:
                                                                                                                                                                                                                                          while(_loc17_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc4_.§3!q§);
                                                                                                                                                                                                                                             while(!_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                   continue loop25;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1008);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1010);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop24;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop21;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr941:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     addr942:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        addr943:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().a = §§pop();
                                                                                                                                                                                                                           §§goto(addr944);
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
                                                                                                                                                                                          continue loop18;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1009);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr987);
                                                                                                                                                                              }
                                                                                                                                                                              addr830:
                                                                                                                                                                              if(!(_loc17_ || _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop14;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                              if(_loc17_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_.§3!q§);
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr859:
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr862:
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                      §§goto(addr867);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr988);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr920);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr912);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr904);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr899);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr859);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr890);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr862);
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc18_ && _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop().c);
                                                                                                                                                                           if(_loc17_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr830);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr889);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop13;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop12;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr681);
                                                                                                                                          }
                                                                                                                                          §§goto(addr641);
                                                                                                                                       }
                                                                                                                                       §§goto(addr620);
                                                                                                                                    }
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 §§goto(addr593);
                                                                                                                              }
                                                                                                                              §§goto(addr575);
                                                                                                                           }
                                                                                                                           §§goto(addr583);
                                                                                                                        }
                                                                                                                        §§goto(addr566);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr528:
                                                                                                                  §§push(§§pop() - this.§^!q§);
                                                                                                                  if(_loc17_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§goto(addr537);
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  §§goto(addr537);
                                                                                                               }
                                                                                                               §§goto(addr528);
                                                                                                            }
                                                                                                            §§goto(addr517);
                                                                                                         }
                                                                                                         §§goto(addr518);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr517);
                                                                                                }
                                                                                                §§goto(addr528);
                                                                                             }
                                                                                             §§goto(addr482);
                                                                                          }
                                                                                          §§goto(addr500);
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc17_ || _loc2_)
                                                                                       {
                                                                                          §§goto(addr430);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr430);
                                                                           }
                                                                           addr320:
                                                                        }
                                                                        §§push(_loc3_.m_sweep.c.x);
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§goto(addr381);
                                                                        }
                                                                        break loop3;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        addr351:
                                                                        while(true)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           §§goto(addr352);
                                                                        }
                                                                        §§goto(addr309);
                                                                     }
                                                                     addr309:
                                                                     addr350:
                                                                  }
                                                                  break;
                                                               }
                                                            }
                                                            addr385:
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc18_ && _loc3_))
                                                            {
                                                               §§goto(addr381);
                                                            }
                                                            §§goto(addr394);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr350);
                                                         }
                                                         addr285:
                                                         §§push(_loc2_.col2);
                                                         if(!(_loc17_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr294);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr375);
                                                   }
                                                   §§goto(addr385);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc18_)
                                                {
                                                   §§goto(addr375);
                                                }
                                                §§goto(addr381);
                                                while(true)
                                                {
                                                   §§push(_loc2_.col1);
                                                   if(!(_loc17_ || this))
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(§§pop().y);
                                                   if(_loc17_)
                                                   {
                                                      §§push(_loc8_);
                                                      if(_loc17_ || _loc2_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc17_)
                                                         {
                                                            if(_loc17_ || this)
                                                            {
                                                               if(_loc17_ || _loc2_)
                                                               {
                                                                  §§goto(addr285);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr324);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr394);
                                                      }
                                                      §§goto(addr308);
                                                   }
                                                   §§goto(addr375);
                                                }
                                                §§goto(addr351);
                                             }
                                          }
                                          §§goto(addr320);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr179);
               }
               §§goto(addr111);
            }
            §§goto(addr104);
         }
         addr32:
         return true;
      }
   }
}
