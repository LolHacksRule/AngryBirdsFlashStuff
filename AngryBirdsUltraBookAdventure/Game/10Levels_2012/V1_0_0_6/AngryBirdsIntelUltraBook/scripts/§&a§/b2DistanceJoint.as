package §&a§
{
   import §#V§.b2Body;
   import §#V§.b2TimeStep;
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §;%§.b2Mat22;
   import §;%§.b2Math;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §=>§:b2Vec2;
      
      private var §^Z§:Number;
      
      private var §`!"§:Number;
      
      private var §'!h§:Number;
      
      private var §"a§:Number;
      
      private var §<<§:Number;
      
      private var § ,§:Number;
      
      private var §1e§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc5_ && this))
         {
            this.m_localAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
            }
            addr171:
         }
         loop1:
         while(true)
         {
            this.§=>§ = new b2Vec2();
            while(true)
            {
               super(param1);
               loop3:
               while(!_loc5_)
               {
                  this.m_localAnchor1.SetV(param1.§4!%§);
                  loop4:
                  while(true)
                  {
                     this.m_localAnchor2.SetV(param1.§=!I§);
                     do
                     {
                        this.§1e§ = param1.length;
                        while(_loc6_)
                        {
                           this.§^Z§ = param1.§4p§;
                           continue loop4;
                        }
                        continue loop3;
                     }
                     while(!(_loc6_ || _loc3_));
                     
                     continue loop1;
                  }
               }
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::>0.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[=.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || this)
         {
            §§push(this.§<<§);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
                  addr42:
                  §§push(this.§=>§.x);
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr63);
                  }
                  §§goto(addr78);
               }
               addr63:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!_loc3_)
               {
                  addr66:
                  §§push(this.§<<§);
                  if(!_loc3_)
                  {
                     §§goto(addr82);
                  }
                  §§push(§§pop() * §§pop());
               }
               addr82:
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && this))
               {
                  addr78:
                  §§push(this.§=>§.y);
               }
               return new §§pop().b2Vec2(§§pop(),§§pop());
            }
            §§goto(addr66);
         }
         §§goto(addr42);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §4! §() : Number
      {
         return this.§1e§;
      }
      
      public function §[!Z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§1e§ = param1;
         }
      }
      
      public function §8!V§() : Number
      {
         return this.§^Z§;
      }
      
      public function §,!e§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§^Z§ = param1;
         }
      }
      
      public function §,2§() : Number
      {
         return this.§`!"§;
      }
      
      public function §-!4§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!"§ = param1;
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
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         _loc4_ = b2internal::>0;
         _loc5_ = b2internal::[=;
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc20_ && _loc2_))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc21_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         if(_loc21_ || _loc2_)
         {
            §§push(this.m_localAnchor1.y);
            if(!_loc20_)
            {
               §§push(_loc4_.m_sweep.localCenter.y);
               while(true)
               {
                  §§push(§§pop() - §§pop());
               }
               addr223:
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
                        while(!_loc20_)
                        {
                           §§push(_loc6_);
                           loop6:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              loop7:
                              while(true)
                              {
                                 §§push(_loc2_.col2);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             loop12:
                                             while(!_loc20_)
                                             {
                                                §§push(Number(§§pop()));
                                                loop13:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   addr93:
                                                   if(!(_loc21_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   addr101:
                                                   §§push(Number(§§pop()));
                                                   if(_loc21_)
                                                   {
                                                      if(_loc21_)
                                                      {
                                                         _loc6_ = §§pop();
                                                         if(!(_loc20_ && _loc2_))
                                                         {
                                                            if(_loc21_)
                                                            {
                                                               if(false)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.col1);
                                                                     if(!_loc21_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop().y);
                                                                     loop16:
                                                                     for(; !_loc20_; if(!(_loc21_ || param1))
                                                                     {
                                                                        continue;
                                                                     },§§goto(addr93))
                                                                     {
                                                                        if(!(_loc21_ || this))
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        §§push(_loc6_);
                                                                        if(_loc21_ || param1)
                                                                        {
                                                                           addr191:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc20_ && _loc2_))
                                                                           {
                                                                              if(_loc20_ && this)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              §§push(_loc2_.col2);
                                                                              if(!(_loc21_ || _loc3_))
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              if(!(_loc20_ && _loc2_))
                                                                              {
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr223);
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              addr192:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(_loc3_);
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 §§goto(addr101);
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           addr191:
                                                                        }
                                                                        if(!(_loc21_ || _loc2_))
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        if(!_loc21_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr191);
                                                                        }
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  continue loop4;
                                                                  addr117:
                                                               }
                                                               _loc2_ = _loc5_.m_xf.R;
                                                               §§push(this.m_localAnchor2.x);
                                                               if(!(_loc20_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc8_:* = §§pop();
                                                               if(_loc21_ || this)
                                                               {
                                                                  addr544:
                                                                  addr545:
                                                                  §§push(this.m_localAnchor2.y);
                                                                  if(!(_loc20_ && param1))
                                                                  {
                                                                     addr543:
                                                                     §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                                  }
                                                                  _loc9_ = Number(§§pop());
                                                                  addr527:
                                                                  addr526:
                                                                  addr511:
                                                                  addr525:
                                                                  addr510:
                                                                  §§push(_loc2_.col1.x);
                                                                  §§push(_loc8_);
                                                                  if(!(_loc20_ && this))
                                                                  {
                                                                     addr520:
                                                                     §§push(§§pop() * §§pop());
                                                                     §§push(_loc2_.col2.x * _loc9_);
                                                                  }
                                                                  _loc3_ = Number(§§pop() + §§pop());
                                                                  addr528:
                                                                  addr546:
                                                                  §§push(_loc2_.col1);
                                                                  if(!(_loc20_ && this))
                                                                  {
                                                                     addr433:
                                                                     §§push(§§pop().y);
                                                                     §§push(_loc8_);
                                                                     if(_loc21_ || this)
                                                                     {
                                                                        if(!_loc20_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc21_)
                                                                           {
                                                                              if(!_loc20_)
                                                                              {
                                                                                 §§push(_loc2_.col2);
                                                                                 if(_loc21_ || _loc2_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc21_ || _loc3_)
                                                                                             {
                                                                                                addr473:
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   addr476:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc20_ && param1))
                                                                                                   {
                                                                                                      if(_loc21_ || _loc2_)
                                                                                                      {
                                                                                                         addr491:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!(_loc20_ && param1))
                                                                                                         {
                                                                                                            if(_loc21_ || this)
                                                                                                            {
                                                                                                               _loc9_ = §§pop();
                                                                                                               addr506:
                                                                                                               §§push(_loc3_);
                                                                                                               if(_loc21_ || this)
                                                                                                               {
                                                                                                                  if(!(_loc20_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc21_ || param1)
                                                                                                                        {
                                                                                                                           addr409:
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              if(!(_loc20_ && param1))
                                                                                                                              {
                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                 addr419:
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    addr356:
                                                                                                                                    addr377:
                                                                                                                                    addr379:
                                                                                                                                    addr376:
                                                                                                                                    addr378:
                                                                                                                                    addr363:
                                                                                                                                    addr362:
                                                                                                                                    addr361:
                                                                                                                                    addr359:
                                                                                                                                    §§push(this.§=>§);
                                                                                                                                    §§push(_loc5_.m_sweep.c.x);
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    if(!(_loc20_ && this))
                                                                                                                                    {
                                                                                                                                       addr375:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       §§push(_loc4_.m_sweep.c.x);
                                                                                                                                    }
                                                                                                                                    §§pop().x = §§pop() - §§pop() - _loc6_;
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§=>§);
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_.m_sweep);
                                                                                                                                          if(!_loc20_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().c);
                                                                                                                                             if(!_loc20_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                if(!_loc20_)
                                                                                                                                                {
                                                                                                                                                   if(_loc21_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc20_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc21_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc20_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_.m_sweep);
                                                                                                                                                                     if(!(_loc20_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().c);
                                                                                                                                                                        if(_loc21_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              if(!(_loc20_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr331:
                                                                                                                                                                                 if(!(_loc20_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc21_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr347:
                                                                                                                                                                                       §§pop().y = §§pop() - _loc7_;
                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(false)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr356);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr565:
                                                                                                                                                                                                var _loc10_:Number;
                                                                                                                                                                                                §§push(_loc10_ = Math.sqrt(this.§=>§.x * this.§=>§.x + this.§=>§.y * this.§=>§.y));
                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(b2Settings.b2_linearSlop);
                                                                                                                                                                                                   if(!(_loc20_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§=>§);
                                                                                                                                                                                                            if(_loc21_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().§%G§(1 / _loc10_);
                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr599:
                                                                                                                                                                                                               §§pop().§&!K§();
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                         if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§=>§.y);
                                                                                                                                                                                                            if(_loc21_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr636:
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(!(_loc20_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr629:
                                                                                                                                                                                                                     §§push(§§pop() * this.§=>§.x);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               var _loc11_:Number = §§pop();
                                                                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                                                                               if(!(_loc20_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§=>§.y);
                                                                                                                                                                                                                  if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                        if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr667:
                                                                                                                                                                                                                           §§push(§§pop() * this.§=>§.x);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr680:
                                                                                                                                                                                                                           var _loc12_:Number = §§pop();
                                                                                                                                                                                                                           §§push(_loc4_.§-7§);
                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc4_.§,!o§);
                                                                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc11_);
                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr695:
                                                                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr698:
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(_loc21_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc5_.§-7§);
                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr716:
                                                                                                                                                                                                                                                      §§push(_loc5_.§,!o§);
                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr720:
                                                                                                                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                                                                                                                         if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr728:
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr732:
                                                                                                                                                                                                                                                               §§push(§§pop() * _loc12_);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                            if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr741:
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            var _loc13_:* = §§pop();
                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this);
                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                                                                                                                  if(_loc21_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop() != 0)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1537:
                                                                                                                                                                                                                                                                        §§push(1 / _loc13_);
                                                                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1542:
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1554:
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                                                                        if(_loc21_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1554);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§pop().§ ,§ = §§pop();
                                                                                                                                                                                                                                                                     addr1556:
                                                                                                                                                                                                                                                                     §§push(this.§^Z§);
                                                                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                                                                     if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1512:
                                                                                                                                                                                                                                                                           _loc14_ = _loc10_ - this.§1e§;
                                                                                                                                                                                                                                                                           addr1513:
                                                                                                                                                                                                                                                                           addr1510:
                                                                                                                                                                                                                                                                           addr1508:
                                                                                                                                                                                                                                                                           addr1507:
                                                                                                                                                                                                                                                                           §§push(Number(2 * Math.PI * this.§^Z§));
                                                                                                                                                                                                                                                                           if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc15_ = §§pop();
                                                                                                                                                                                                                                                                              addr1494:
                                                                                                                                                                                                                                                                              §§push(2);
                                                                                                                                                                                                                                                                              if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1455:
                                                                                                                                                                                                                                                                                 §§push(§§pop() * this.§ ,§);
                                                                                                                                                                                                                                                                                 §§push(this.§`!"§);
                                                                                                                                                                                                                                                                                 if(_loc21_ || _loc2_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1463:
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop() * _loc15_);
                                                                                                                                                                                                                                                                                    if(_loc21_ || _loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1473:
                                                                                                                                                                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1409:
                                                                                                                                                                                                                                                                                          §§push(this.§ ,§);
                                                                                                                                                                                                                                                                                          if(_loc21_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1417:
                                                                                                                                                                                                                                                                                             §§push(_loc15_);
                                                                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1428:
                                                                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1431:
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                                                                                                                                                      if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                                         §§push(this);
                                                                                                                                                                                                                                                                                                         §§push(param1.§&!'§);
                                                                                                                                                                                                                                                                                                         if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(param1.§&!'§);
                                                                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * _loc17_);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§pop().§'!h§ = §§pop();
                                                                                                                                                                                                                                                                                                         addr1440:
                                                                                                                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                                                                                                                            if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(this.§'!h§);
                                                                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(§§pop() != 0)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1342:
                                                                                                                                                                                                                                                                                                                     §§push(1 / this.§'!h§);
                                                                                                                                                                                                                                                                                                                     if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1353:
                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                        if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1371:
                                                                                                                                                                                                                                                                                                                     §§pop().§'!h§ = §§pop();
                                                                                                                                                                                                                                                                                                                     addr1372:
                                                                                                                                                                                                                                                                                                                     if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(this);
                                                                                                                                                                                                                                                                                                                        §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                        if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(param1.§&!'§);
                                                                                                                                                                                                                                                                                                                           if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                                 if(_loc21_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1325:
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                    if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(this.§'!h§);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§pop().§"a§ = §§pop();
                                                                                                                                                                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                    if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + this.§'!h§);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§pop().§ ,§ = §§pop();
                                                                                                                                                                                                                                                                                                                                    addr1274:
                                                                                                                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                                                                                                                                                                          if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(this.§ ,§);
                                                                                                                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(§§pop() != 0)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr1256:
                                                                                                                                                                                                                                                                                                                                                   addr1237:
                                                                                                                                                                                                                                                                                                                                                   §§push(1 / this.§ ,§);
                                                                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                      if(_loc20_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1255:
                                                                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§pop().§ ,§ = §§pop();
                                                                                                                                                                                                                                                                                                                                                   addr1257:
                                                                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1187:
                                                                                                                                                                                                                                                                                                                                                      if(param1.§#!P§)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1191:
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                                                                                                                                                                            §§push(this.§<<§);
                                                                                                                                                                                                                                                                                                                                                            if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * param1.§ !o§);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§pop().§<<§ = §§pop();
                                                                                                                                                                                                                                                                                                                                                            addr1212:
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr1148:
                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§<<§);
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr1165:
                                                                                                                                                                                                                                                                                                                                                                        §§push(this.§=>§.x);
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr1180:
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr1185:
                                                                                                                                                                                                                                                                                                                                                                                    _loc18_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                    addr1186:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(this.§<<§);
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.§=>§);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc21_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1118:
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1142:
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1055:
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1053:
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1068:
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc4_.§%!V§);
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc4_.§%!V§.x);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1067:
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - _loc4_.§-7§ * _loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1029:
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc4_.§%!V§);
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc4_.§%!V§.y);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1035:
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc4_.§-7§);
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1038:
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1041:
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§pop().y = §§pop() - §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc4_.§,!o§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc21_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1016:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1017:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1018:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1019:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr947:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc5_.§%!V§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr953:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc5_.§%!V§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr958:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc5_.§-7§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr967:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop() * _loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr978:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc21_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc5_.§%!V§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc5_.§%!V§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc5_.§-7§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc21_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc20_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr927:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc21_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr942:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc5_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc5_.§,!o§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr831:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr841:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop() * _loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr841);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       addr844:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc21_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1142);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr746);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1019);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       addr843:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr841);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr831);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr843);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr844);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr943:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr958);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr967);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1035);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr967);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1067);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1038);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr927);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr958);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr967);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr942);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1029);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr953);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr947);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1513);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1029);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1041);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1035);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1055);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1053);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1055);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1212);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1041);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1016);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1017);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1018);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1186);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1067);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1068);
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1069:
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1494);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1473);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1148);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1180);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1185);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1463);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1409);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1118);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1510);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1165);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1513);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1431);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1118);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1512);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1417);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1428);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1508);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1431);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1473);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1257);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1372);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      this.§<<§ = 0;
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc20_ && _loc2_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1191);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  addr746:
                                                                                                                                                                                                                                                                                                                                                                  return;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1069);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr978);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr943);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr844);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1274);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1255);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1256);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1255);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1237);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1440);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr1326:
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1326);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1325);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1325);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1440);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                                                                                                                  if(_loc21_ || _loc2_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1371);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1353);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1342);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1556);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1512);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1455);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1431);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1463);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1455);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1507);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1556);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1512);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1511:
                                                                                                                                                                                                                                                                           §§goto(addr1511);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1187);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1512);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1542);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1537);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1440);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr732);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr741);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr732);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr716);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr720);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr728);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr720);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr698);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr695);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr741);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr680);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr667);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr680);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr636);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§=>§);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr599);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr629);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr636);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr506);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr419);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr356);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr377);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr379);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr347);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr375);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr347);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr376);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr378);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr347);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr363);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr375);
                                                                                                                                                }
                                                                                                                                                §§goto(addr331);
                                                                                                                                             }
                                                                                                                                             §§goto(addr362);
                                                                                                                                          }
                                                                                                                                          §§goto(addr361);
                                                                                                                                       }
                                                                                                                                       §§goto(addr359);
                                                                                                                                       addr382:
                                                                                                                                    }
                                                                                                                                    §§goto(addr528);
                                                                                                                                 }
                                                                                                                                 §§goto(addr546);
                                                                                                                              }
                                                                                                                              §§goto(addr433);
                                                                                                                           }
                                                                                                                           §§goto(addr491);
                                                                                                                        }
                                                                                                                        §§goto(addr565);
                                                                                                                     }
                                                                                                                     §§goto(addr527);
                                                                                                                  }
                                                                                                                  §§goto(addr476);
                                                                                                               }
                                                                                                               §§goto(addr409);
                                                                                                            }
                                                                                                            §§goto(addr544);
                                                                                                         }
                                                                                                         §§goto(addr526);
                                                                                                      }
                                                                                                      §§goto(addr511);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr520);
                                                                                             }
                                                                                             §§goto(addr565);
                                                                                          }
                                                                                          §§goto(addr520);
                                                                                       }
                                                                                       §§goto(addr525);
                                                                                    }
                                                                                    §§goto(addr473);
                                                                                 }
                                                                                 §§goto(addr520);
                                                                              }
                                                                              §§goto(addr545);
                                                                           }
                                                                           §§goto(addr476);
                                                                        }
                                                                        §§goto(addr543);
                                                                     }
                                                                     §§goto(addr473);
                                                                  }
                                                                  §§goto(addr510);
                                                               }
                                                               §§goto(addr382);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr117);
                                                            }
                                                            addr213:
                                                         }
                                                         §§goto(addr192);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   §§goto(addr191);
                                                }
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr213);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::>0;
         var _loc4_:b2Body = b2internal::[=;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc18_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc19_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!_loc18_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
            if(!_loc18_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc2_.col1.x);
         if(!(_loc18_ && _loc2_))
         {
            §§push(_loc5_);
            if(!(_loc18_ && _loc2_))
            {
               §§push(§§pop() * §§pop());
               if(!_loc18_)
               {
                  addr80:
                  §§push(_loc2_.col2.x);
                  if(!_loc18_)
                  {
                     addr85:
                     §§push(§§pop() * _loc6_);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc19_)
                  {
                     addr90:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(_loc19_ || param1)
                  {
                     §§push(_loc2_.col1.y);
                     if(_loc19_ || _loc2_)
                     {
                        §§push(_loc5_);
                        if(!(_loc18_ && param1))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc19_ || _loc2_)
                           {
                              addr125:
                              §§push(_loc2_.col2.y);
                              if(_loc19_)
                              {
                                 addr132:
                                 §§push(§§pop() + §§pop() * _loc6_);
                                 if(_loc19_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc18_)
                                    {
                                       addr138:
                                       _loc6_ = §§pop();
                                       if(_loc19_ || param1)
                                       {
                                          addr146:
                                          §§push(_loc7_);
                                          if(!(_loc18_ && param1))
                                          {
                                             addr154:
                                             §§push(Number(§§pop()));
                                          }
                                          _loc5_ = §§pop();
                                       }
                                       _loc2_ = _loc4_.m_xf.R;
                                       §§push(this.m_localAnchor2.x);
                                       if(_loc19_)
                                       {
                                          §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                          if(!(_loc18_ && this))
                                          {
                                             addr178:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc8_:* = §§pop();
                                          §§push(this.m_localAnchor2.y);
                                          if(_loc19_ || this)
                                          {
                                             §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                             if(!_loc18_)
                                             {
                                                addr197:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc9_:* = §§pop();
                                             if(_loc19_ || _loc3_)
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
                                                      if(!_loc18_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc18_)
                                                         {
                                                            §§push(_loc2_.col2);
                                                            loop2:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc18_ && param1)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(_loc9_);
                                                               if(_loc19_ || this)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr326:
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc18_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        _loc7_ = §§pop();
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           continue loop0;
                                                                           addr289:
                                                                           while(true)
                                                                           {
                                                                              if(_loc19_ || _loc3_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(_loc3_.m_angularVelocity);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    §§push(§§pop() + §§pop() * _loc6_);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr336:
                                                                                 }
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    break loop4;
                                                                                 }
                                                                                 if(!(_loc19_ || _loc2_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue;
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    addr348:
                                                                                    §§push(Number(§§pop()));
                                                                                    break loop4;
                                                                                 }
                                                                                 break loop4;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr325:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr336);
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(_loc3_.§%!V§.y);
                                                               if(_loc19_ || this)
                                                               {
                                                                  §§push(_loc3_.m_angularVelocity);
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(§§pop() * _loc5_);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc18_ && _loc3_))
                                                                  {
                                                                     addr374:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc11_:* = §§pop();
                                                                  §§push(_loc4_.§%!V§.x);
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(_loc4_.m_angularVelocity);
                                                                     if(!(_loc18_ && _loc3_))
                                                                     {
                                                                        §§push(-§§pop());
                                                                        if(_loc19_)
                                                                        {
                                                                           addr393:
                                                                           §§push(§§pop() * _loc9_);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc19_)
                                                                        {
                                                                           addr399:
                                                                           var _loc12_:Number = §§pop();
                                                                           §§push(_loc4_.§%!V§.y);
                                                                           if(!(_loc18_ && param1))
                                                                           {
                                                                              §§push(_loc4_.m_angularVelocity);
                                                                              if(_loc19_ || _loc2_)
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
                                                                           §§push(this.§=>§.x);
                                                                           if(_loc19_ || param1)
                                                                           {
                                                                              §§push(_loc12_);
                                                                              if(_loc19_ || _loc3_)
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!(_loc18_ && param1))
                                                                                    {
                                                                                       addr470:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          addr473:
                                                                                          §§push(this.§=>§.y);
                                                                                          if(_loc19_ || _loc3_)
                                                                                          {
                                                                                             addr494:
                                                                                             §§push(_loc13_);
                                                                                             if(_loc19_ || _loc3_)
                                                                                             {
                                                                                                addr491:
                                                                                                §§push(§§pop() - _loc11_);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop() * §§pop());
                                                                                             if(_loc19_ || _loc3_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr494);
                                                                                       }
                                                                                       var _loc14_:* = §§pop();
                                                                                       §§push(this.§ ,§);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(_loc19_ || param1)
                                                                                          {
                                                                                             §§push(_loc14_);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                §§push(this.§"a§);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   addr539:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc19_ || this)
                                                                                                   {
                                                                                                      §§push(this.§'!h§);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(§§pop() * this.§<<§);
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      addr543:
                                                                                                      var _loc15_:Number = §§pop();
                                                                                                      addr542:
                                                                                                      if(!(_loc18_ && param1))
                                                                                                      {
                                                                                                         §§push(this);
                                                                                                         §§push(this.§<<§);
                                                                                                         if(!(_loc18_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(§§pop() + _loc15_);
                                                                                                         }
                                                                                                         §§pop().§<<§ = §§pop();
                                                                                                      }
                                                                                                      §§push(_loc15_);
                                                                                                      if(!(_loc18_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(§§pop() * this.§=>§.x);
                                                                                                         if(_loc19_ || _loc2_)
                                                                                                         {
                                                                                                            addr583:
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         var _loc16_:* = §§pop();
                                                                                                         §§push(_loc15_);
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            §§push(§§pop() * this.§=>§.y);
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                         }
                                                                                                         var _loc17_:* = §§pop();
                                                                                                         if(_loc19_ || param1)
                                                                                                         {
                                                                                                            §§push(_loc3_.§%!V§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_.§%!V§);
                                                                                                               addr850:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr851:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc3_.§-7§);
                                                                                                                     addr853:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc16_);
                                                                                                                        addr854:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           addr855:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              addr856:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr848:
                                                                                                         }
                                                                                                         loop16:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_.§%!V§);
                                                                                                            loop17:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_.§%!V§);
                                                                                                               loop18:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  loop19:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc3_.§-7§);
                                                                                                                     loop20:
                                                                                                                     while(_loc19_)
                                                                                                                     {
                                                                                                                        §§push(_loc17_);
                                                                                                                        loop21:
                                                                                                                        for(; _loc19_; while(!(_loc18_ && this))
                                                                                                                        {
                                                                                                                           §§goto(addr764);
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                        })
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           loop22:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              addr840:
                                                                                                                              while(!_loc18_)
                                                                                                                              {
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    loop24:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       §§push(_loc3_.m_angularVelocity);
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.§,!o§);
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             if(!(_loc18_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(_loc17_);
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc18_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr809:
                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         addr806:
                                                                                                                                                         §§push(§§pop() * _loc16_);
                                                                                                                                                      }
                                                                                                                                                      §§pop().m_angularVelocity = §§pop() - §§pop() * (§§pop() - §§pop());
                                                                                                                                                      loop25:
                                                                                                                                                      for(; !_loc18_; for(; _loc19_ || _loc2_; §§pop().m_angularVelocity = §§pop(),if(!(_loc18_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            return;
                                                                                                                                                         }
                                                                                                                                                         continue loop24;
                                                                                                                                                      })
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                         §§push(_loc4_.m_angularVelocity);
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc4_.§,!o§);
                                                                                                                                                         if(_loc19_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            if(_loc19_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                               if(_loc19_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     addr648:
                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        addr645:
                                                                                                                                                                        §§push(§§pop() * _loc16_);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr648);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr645);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr648);
                                                                                                                                                      })
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_.§%!V§);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_.§%!V§);
                                                                                                                                                               continue loop18;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr848);
                                                                                                                                                            addr773:
                                                                                                                                                            §§push(_loc4_.§%!V§);
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               continue loop17;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc4_.§%!V§);
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               continue loop18;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_.§-7§);
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  addr679:
                                                                                                                                                                  if(_loc18_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     while(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                        continue loop21;
                                                                                                                                                                        §§goto(addr679);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop22;
                                                                                                                                                                     addr753:
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc17_);
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop21;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr853);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr692:
                                                                                                                                                               if(_loc19_ || this)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc18_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop20;
                                                                                                                                                                  }
                                                                                                                                                                  addr707:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                        continue loop25;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop19;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     §§goto(addr692);
                                                                                                                                                                  }
                                                                                                                                                                  addr764:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  continue loop24;
                                                                                                                                                               }
                                                                                                                                                               addr765:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr707);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop16;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr809);
                                                                                                                                                }
                                                                                                                                                §§goto(addr806);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr809);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr851);
                                                                                                                              }
                                                                                                                              §§goto(addr856);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr854);
                                                                                                                     }
                                                                                                                     §§goto(addr855);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr583);
                                                                                                   }
                                                                                                   §§goto(addr543);
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             §§goto(addr539);
                                                                                          }
                                                                                          §§goto(addr542);
                                                                                       }
                                                                                       §§goto(addr543);
                                                                                    }
                                                                                    §§goto(addr494);
                                                                                 }
                                                                                 §§goto(addr491);
                                                                              }
                                                                              §§goto(addr470);
                                                                           }
                                                                           §§goto(addr473);
                                                                        }
                                                                        §§goto(addr399);
                                                                     }
                                                                     §§goto(addr393);
                                                                  }
                                                                  §§goto(addr399);
                                                               }
                                                               §§goto(addr374);
                                                               addr250:
                                                               §§push(_loc2_.col2);
                                                               if(!(_loc18_ && _loc3_))
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(!_loc18_)
                                                                  {
                                                                     addr262:
                                                                     if(_loc19_)
                                                                     {
                                                                        §§push(_loc9_);
                                                                        if(_loc19_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc18_ && param1))
                                                                              {
                                                                                 addr278:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    addr281:
                                                                                    if(!(_loc18_ && _loc3_))
                                                                                    {
                                                                                       _loc9_ = §§pop();
                                                                                       §§goto(addr289);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr326);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr336);
                                                                              }
                                                                              §§goto(addr281);
                                                                           }
                                                                        }
                                                                        §§goto(addr336);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr325);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                            }
                                                            §§push(-§§pop());
                                                            if(_loc18_)
                                                            {
                                                            }
                                                            §§goto(addr336);
                                                         }
                                                         §§goto(addr326);
                                                      }
                                                      §§goto(addr336);
                                                   }
                                                }
                                             }
                                             §§goto(addr229);
                                          }
                                          §§goto(addr197);
                                       }
                                       §§goto(addr178);
                                    }
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr146);
               }
               §§goto(addr90);
            }
            §§goto(addr85);
         }
         §§goto(addr80);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         if(_loc18_ || _loc2_)
         {
            if(this.§^Z§ > 0)
            {
               if(!_loc17_)
               {
                  §§goto(addr33);
               }
            }
            var _loc3_:b2Body = b2internal::>0;
            var _loc4_:b2Body = b2internal::[=;
            _loc2_ = _loc3_.m_xf.R;
            §§push(this.m_localAnchor1.x);
            if(_loc18_)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
               if(!(_loc17_ && param1))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!(_loc17_ && _loc3_))
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
               if(!_loc17_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(_loc18_)
            {
               §§push(_loc5_);
               if(!(_loc17_ && _loc2_))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc17_ && param1))
                  {
                     §§push(_loc2_.col2.x);
                     if(!(_loc17_ && param1))
                     {
                        addr117:
                        §§push(§§pop() + §§pop() * _loc6_);
                        if(!_loc17_)
                        {
                           addr120:
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr117);
                  }
                  var _loc7_:* = §§pop();
                  if(!(_loc17_ && this))
                  {
                     §§push(_loc2_.col1.y);
                     if(!(_loc17_ && this))
                     {
                        §§push(_loc5_);
                        if(_loc18_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc17_ && _loc3_))
                           {
                              §§push(_loc2_.col2.y);
                              if(!(_loc17_ && this))
                              {
                                 addr165:
                                 §§push(§§pop() * _loc6_);
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc17_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc17_ && this))
                                 {
                                    addr178:
                                    _loc6_ = §§pop();
                                    addr191:
                                    if(_loc18_)
                                    {
                                       §§push(_loc7_);
                                       if(_loc18_ || _loc2_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    _loc2_ = _loc4_.m_xf.R;
                                    §§push(this.m_localAnchor2.x);
                                    if(!(_loc17_ && _loc3_))
                                    {
                                       §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                       if(!_loc17_)
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
                                          addr232:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc9_:* = §§pop();
                                       if(!(_loc17_ && this))
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
                                                if(!(_loc17_ && _loc2_))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc18_)
                                                   {
                                                      §§push(_loc2_.col2);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc18_)
                                                         {
                                                            §§push(_loc9_);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr355:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr356:
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        addr358:
                                                                        loop7:
                                                                        while(true)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.col1);
                                                                              if(_loc17_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              if(_loc18_ || this)
                                                                              {
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(_loc8_);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    addr381:
                                                                                    addr381:
                                                                                    §§push(_loc3_.m_sweep.c.x);
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       addr405:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc18_ || param1)
                                                                                       {
                                                                                          addr396:
                                                                                          §§push(§§pop() - _loc5_);
                                                                                          if(_loc18_ || _loc2_)
                                                                                          {
                                                                                             addr404:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       var _loc10_:* = §§pop();
                                                                                       §§push(_loc4_.m_sweep.c.y);
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(_loc18_ || this)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc18_ || param1)
                                                                                             {
                                                                                                §§push(_loc3_.m_sweep.c.y);
                                                                                                if(!(_loc17_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      addr443:
                                                                                                      §§push(§§pop() - _loc6_);
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr443);
                                                                                             }
                                                                                             var _loc11_:* = §§pop();
                                                                                             var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                if(_loc18_ || param1)
                                                                                                {
                                                                                                   §§push(_loc12_);
                                                                                                   if(_loc18_ || param1)
                                                                                                   {
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc18_ || _loc2_)
                                                                                                         {
                                                                                                            _loc10_ = §§pop();
                                                                                                            if(!(_loc17_ && param1))
                                                                                                            {
                                                                                                               §§push(_loc11_);
                                                                                                               if(!(_loc17_ && this))
                                                                                                               {
                                                                                                                  §§push(_loc12_);
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     addr517:
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc18_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr528:
                                                                                                                           _loc11_ = §§pop();
                                                                                                                           addr543:
                                                                                                                           §§push(_loc12_);
                                                                                                                           if(!(_loc17_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(this.§1e§);
                                                                                                                           }
                                                                                                                           var _loc13_:* = §§pop();
                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(b2Math);
                                                                                                                              §§push(_loc13_);
                                                                                                                              §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                              if(!(_loc17_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                              }
                                                                                                                              §§push(§§pop().§]!M§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(_loc18_ || param1)
                                                                                                                                 {
                                                                                                                                    addr576:
                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                    §§push(this.§ ,§);
                                                                                                                                    if(!_loc17_)
                                                                                                                                    {
                                                                                                                                       §§push(-§§pop());
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * _loc13_);
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             addr588:
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       var _loc14_:* = §§pop();
                                                                                                                                       if(_loc18_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          this.§=>§.Set(_loc10_,_loc11_);
                                                                                                                                       }
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(_loc18_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * this.§=>§.x);
                                                                                                                                          if(!(_loc17_ && this))
                                                                                                                                          {
                                                                                                                                             addr621:
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          var _loc15_:* = §§pop();
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * this.§=>§.y);
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          var _loc16_:* = §§pop();
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             addr977:
                                                                                                                                             _loc3_.m_sweep.c.x -= _loc3_.§-7§ * _loc15_;
                                                                                                                                             addr918:
                                                                                                                                             addr972:
                                                                                                                                             addr971:
                                                                                                                                             addr978:
                                                                                                                                             addr975:
                                                                                                                                             addr968:
                                                                                                                                             addr974:
                                                                                                                                             addr976:
                                                                                                                                             addr970:
                                                                                                                                             §§push(_loc3_.m_sweep);
                                                                                                                                             if(!(_loc17_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr928:
                                                                                                                                                §§push(§§pop().c);
                                                                                                                                                §§push(_loc3_.m_sweep);
                                                                                                                                                if(!(_loc17_ && this))
                                                                                                                                                {
                                                                                                                                                   addr936:
                                                                                                                                                   §§push(§§pop().c.y);
                                                                                                                                                   if(_loc18_ || this)
                                                                                                                                                   {
                                                                                                                                                      addr956:
                                                                                                                                                      §§push(_loc3_.§-7§ * _loc16_);
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            addr963:
                                                                                                                                                            §§pop().y = §§pop() - §§pop();
                                                                                                                                                            addr964:
                                                                                                                                                            §§push(_loc3_.m_sweep);
                                                                                                                                                            §§push(_loc3_.m_sweep.a);
                                                                                                                                                            if(!_loc17_)
                                                                                                                                                            {
                                                                                                                                                               addr893:
                                                                                                                                                               §§push(_loc3_.§,!o§);
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     addr912:
                                                                                                                                                                     addr910:
                                                                                                                                                                     addr911:
                                                                                                                                                                     addr900:
                                                                                                                                                                     addr913:
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                     if(!(_loc17_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        addr909:
                                                                                                                                                                        §§push(§§pop() * _loc15_);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().a = §§pop() - §§pop() * (§§pop() - §§pop());
                                                                                                                                                                     addr914:
                                                                                                                                                                     §§push(_loc4_.m_sweep);
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        addr850:
                                                                                                                                                                        §§push(§§pop().c);
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           addr855:
                                                                                                                                                                           §§push(_loc4_.m_sweep.c.x);
                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              addr861:
                                                                                                                                                                              §§push(_loc4_.§-7§);
                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc18_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr871:
                                                                                                                                                                                    §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                       addr875:
                                                                                                                                                                                       if(!(_loc17_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr756:
                                                                                                                                                                                          §§push(_loc4_.m_sweep.c);
                                                                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc18_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc4_.m_sweep);
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc18_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().c);
                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc4_.§-7§);
                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc18_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr821:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr833:
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          if(!_loc17_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                                                                             addr836:
                                                                                                                                                                                                                                             if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                                if(_loc18_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc18_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop().a);
                                                                                                                                                                                                                                                            if(_loc18_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc4_.§,!o§);
                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr720:
                                                                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                                                                                                                          if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr739:
                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr742:
                                                                                                                                                                                                                                                                                                §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                                                                                                if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr751:
                                                                                                                                                                                                                                                                                                   §§pop().a = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                                   _loc3_.§#3§();
                                                                                                                                                                                                                                                                                                   addr752:
                                                                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc4_.§#3§();
                                                                                                                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr875);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               return b2Math.§`c§(_loc13_) < b2Settings.b2_linearSlop;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr752);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr964);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr836);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr912);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr910);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr909);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr739);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr911);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr742);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr739);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr900);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr720);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr893);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr742);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr913);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr751);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr964);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr918);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr912);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr756);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr914);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr972);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr956);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr871);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr861);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr821);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr977);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr871);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr833);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr971);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr936);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr855);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr928);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr855);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr928);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr850);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr978);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr963);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr975);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr956);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr871);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr968);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr963);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr909);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr912);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr974);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr976);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr963);
                                                                                                                                                }
                                                                                                                                                §§goto(addr970);
                                                                                                                                             }
                                                                                                                                             addr967:
                                                                                                                                             §§goto(addr967);
                                                                                                                                          }
                                                                                                                                          §§goto(addr751);
                                                                                                                                       }
                                                                                                                                       §§goto(addr621);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr588);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr576);
                                                                                                                        }
                                                                                                                        addr542:
                                                                                                                        §§goto(addr543);
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     §§goto(addr543);
                                                                                                                  }
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr543);
                                                                                                         }
                                                                                                         §§goto(addr542);
                                                                                                      }
                                                                                                      §§goto(addr543);
                                                                                                   }
                                                                                                   §§goto(addr517);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr528);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr443);
                                                                                    }
                                                                                    §§goto(addr396);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr324:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop9:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          _loc9_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc18_ || _loc2_))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                          §§goto(addr405);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr396);
                                                                              }
                                                                              §§goto(addr381);
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr313:
                                                               §§push(_loc9_);
                                                               if(!(_loc18_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc17_)
                                                               {
                                                                  §§goto(addr324);
                                                               }
                                                               §§goto(addr405);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc18_ || this)
                                                      {
                                                         §§goto(addr381);
                                                      }
                                                      §§goto(addr404);
                                                   }
                                                   §§goto(addr356);
                                                }
                                                §§goto(addr355);
                                             }
                                          }
                                       }
                                       §§goto(addr358);
                                    }
                                    §§goto(addr232);
                                 }
                              }
                              _loc5_ = §§pop();
                              §§goto(addr191);
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr165);
                     }
                  }
                  §§goto(addr178);
               }
               §§goto(addr117);
            }
            §§goto(addr120);
         }
         addr33:
         return true;
      }
   }
}
