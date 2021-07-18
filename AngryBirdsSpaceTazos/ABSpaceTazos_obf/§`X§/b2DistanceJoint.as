package §`X§
{
   import §'!&§.b2Body;
   import §'!&§.b2TimeStep;
   import §9t§.b2Mat22;
   import §9t§.b2Math;
   import §9t§.b2Vec2;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §3"A§:b2Vec2;
      
      private var §4"3§:Number;
      
      private var §0R§:Number;
      
      private var §"!U§:Number;
      
      private var §0K§:Number;
      
      private var §0"3§:Number;
      
      private var §""$§:Number;
      
      private var §<!H§:Number;
      
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
               addr49:
               if(!(_loc5_ && _loc2_))
               {
                  return;
               }
            }
         }
         loop1:
         while(true)
         {
            this.§3"A§ = new b2Vec2();
            while(true)
            {
               super(param1);
               loop3:
               while(true)
               {
                  this.m_localAnchor1.SetV(param1.§!8§);
                  while(true)
                  {
                     this.m_localAnchor2.SetV(param1.§@W§);
                     loop5:
                     while(true)
                     {
                        this.§<!H§ = param1.length;
                        addr143:
                        while(_loc6_)
                        {
                           this.§4"3§ = param1.§^J§;
                           continue loop3;
                           if(_loc6_ || this)
                           {
                              continue loop5;
                           }
                        }
                        continue loop1;
                     }
                     if(_loc5_ && this)
                     {
                        continue;
                     }
                     this.§0"3§ = 0;
                     §§goto(addr104);
                  }
               }
               if(!(_loc6_ || this))
               {
                  continue;
               }
               §§goto(addr49);
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::<!1.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?H.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc2_)
         {
            §§push(this.§0"3§);
            if(!_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_)
               {
                  §§push(this.§3"A§.x);
                  if(!(_loc2_ && param1))
                  {
                     addr49:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc3_)
                     {
                        addr52:
                        §§push(this.§0"3§);
                        if(_loc3_ || this)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc3_)
                           {
                              addr77:
                              §§push(§§pop() * this.§3"A§.y);
                           }
                           return new §§pop().b2Vec2(§§pop(),§§pop());
                        }
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr52);
               }
            }
         }
         §§goto(addr49);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §#!i§() : Number
      {
         return this.§<!H§;
      }
      
      public function §,k§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<!H§ = param1;
         }
      }
      
      public function §;!$§() : Number
      {
         return this.§4"3§;
      }
      
      public function §#2§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4"3§ = param1;
         }
      }
      
      public function §7!b§() : Number
      {
         return this.§0R§;
      }
      
      public function §&3§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0R§ = param1;
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
         _loc4_ = b2internal::<!1;
         _loc5_ = b2internal::?H;
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc21_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!_loc21_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         if(_loc20_)
         {
            §§push(this.m_localAnchor1.y);
            loop0:
            while(true)
            {
               §§push(_loc4_.m_sweep.localCenter.y);
               loop1:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop3:
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
                              if(!(_loc21_ && _loc2_))
                              {
                                 §§push(_loc6_);
                                 if(!_loc21_)
                                 {
                                    if(!_loc20_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc20_ || this)
                                    {
                                       if(!_loc20_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(_loc2_.col2);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(_loc2_.col2);
                                             if(_loc21_ && _loc3_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(§§pop().y);
                                             if(!_loc21_)
                                             {
                                                if(_loc20_)
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc20_ || _loc2_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(!(_loc20_ || _loc3_))
                                                         {
                                                            break loop14;
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc21_ && _loc2_))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            addr168:
                                                         }
                                                         loop16:
                                                         while(true)
                                                         {
                                                            _loc7_ = §§pop();
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(!_loc21_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc20_)
                                                                  {
                                                                     if(_loc20_ || this)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        if(!_loc20_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc20_ || this)
                                                                        {
                                                                           while(false)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.col1);
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§push(§§pop().y);
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    if(!(_loc20_ || param1))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(_loc6_);
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       continue loop14;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                                 §§goto(addr168);
                                                                              }
                                                                              while(_loc20_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 break loop17;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           _loc2_ = _loc5_.m_xf.R;
                                                                           §§push(this.m_localAnchor2.x);
                                                                           if(_loc20_)
                                                                           {
                                                                              §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                                              if(_loc20_)
                                                                              {
                                                                                 addr238:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc8_:* = §§pop();
                                                                              if(!(_loc21_ && _loc3_))
                                                                              {
                                                                                 §§push(this.m_localAnchor2.y);
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_.m_sweep.localCenter.y);
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!(_loc21_ && this))
                                                                                          {
                                                                                             _loc9_ = §§pop();
                                                                                             loop23:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_.col1);
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(!(_loc21_ && param1))
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr522:
                                                                                                         addr480:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_.col2);
                                                                                                            addr524:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               addr525:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc9_);
                                                                                                                  addr526:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     addr527:
                                                                                                                     while(_loc20_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                     }
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         if(!(_loc20_ || this))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc20_ || param1)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         addr505:
                                                                                                         addr505:
                                                                                                         if(!_loc21_)
                                                                                                         {
                                                                                                            _loc9_ = §§pop();
                                                                                                            loop34:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     addr405:
                                                                                                                     if(_loc20_ || param1)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc21_ && param1)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        _loc8_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr372:
                                                                                                                           addr356:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§3"A§);
                                                                                                                              addr375:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.m_sweep);
                                                                                                                                 addr377:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().c);
                                                                                                                                    addr378:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       addr379:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          addr380:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             addr381:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_.m_sweep);
                                                                                                                                                addr383:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                   addr384:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      addr385:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         addr386:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            addr387:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               addr388:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  addr389:
                                                                                                                                                                  while(_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop23;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop24;
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
                                                                                                                           if(!(_loc21_ && _loc3_))
                                                                                                                           {
                                                                                                                              continue loop34;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr530:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           §§goto(addr405);
                                                                                                                        }
                                                                                                                        addr530:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc3_ = §§pop();
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            addr570:
                                                                                                            var _loc10_:*;
                                                                                                            §§push(_loc10_ = §§pop());
                                                                                                            if(!(_loc21_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(b2Settings.b2_linearSlop);
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  if(§§pop() > §§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc21_ && param1))
                                                                                                                     {
                                                                                                                        §§push(this.§3"A§);
                                                                                                                        if(_loc20_ || param1)
                                                                                                                        {
                                                                                                                           §§pop().§-!&§(1 / _loc10_);
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr608:
                                                                                                                           §§pop().§@!d§();
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        §§push(this.§3"A§.y);
                                                                                                                        if(_loc20_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 addr632:
                                                                                                                                 §§push(§§pop() - §§pop() * this.§3"A§.x);
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    addr635:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr632);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr632);
                                                                                                                     }
                                                                                                                     var _loc11_:* = §§pop();
                                                                                                                     §§push(_loc8_);
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        §§push(this.§3"A§.y);
                                                                                                                        if(_loc20_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              addr648:
                                                                                                                              §§push(_loc9_);
                                                                                                                              if(_loc20_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr660:
                                                                                                                                 §§push(§§pop() - §§pop() * this.§3"A§.x);
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    addr663:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc12_:* = §§pop();
                                                                                                                                 §§push(_loc4_.§6!W§);
                                                                                                                                 if(_loc20_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_.§<!%§);
                                                                                                                                    if(!(_loc21_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(_loc11_);
                                                                                                                                       if(!(_loc21_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!(_loc21_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(_loc11_);
                                                                                                                                             if(_loc20_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!(_loc21_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_.§6!W§);
                                                                                                                                                      if(!_loc21_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!_loc21_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc5_.§<!%§);
                                                                                                                                                            if(!(_loc21_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               addr734:
                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                               if(!(_loc21_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  addr742:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     addr747:
                                                                                                                                                                     addr746:
                                                                                                                                                                     addr745:
                                                                                                                                                                     §§push(§§pop() + §§pop() * _loc12_);
                                                                                                                                                                     if(_loc20_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     var _loc13_:* = §§pop();
                                                                                                                                                                     if(_loc20_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this);
                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc13_);
                                                                                                                                                                           if(_loc20_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() != 0)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1496:
                                                                                                                                                                                 §§push(1 / _loc13_);
                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1501:
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    if(!(_loc21_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1529:
                                                                                                                                                                                       §§pop().§""$§ = §§pop();
                                                                                                                                                                                       loop51:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§4"3§);
                                                                                                                                                                                          if(_loc20_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                             loop52:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop51;
                                                                                                                                                                                                }
                                                                                                                                                                                                loop54:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!param1.§`m§)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§0"3§ = 0;
                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc20_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc20_ || _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop55:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc20_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc5_.§?o§);
                                                                                                                                                                                                                     if(_loc20_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc5_.§?o§);
                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                                                                              if(!(_loc21_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc5_.§6!W§);
                                                                                                                                                                                                                                 if(!(_loc21_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr915:
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc20_ || _loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr930:
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         if(_loc20_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                                                                              §§push(_loc5_.m_angularVelocity);
                                                                                                                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc5_.§<!%§);
                                                                                                                                                                                                                                                                                 if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                                                                                                                       if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr847:
                                                                                                                                                                                                                                                                                          addr848:
                                                                                                                                                                                                                                                                                          addr849:
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                          if(_loc20_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                                                                                                                             if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc20_ || _loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr1193:
                                                                                                                                                                                                                                                                                                while(!_loc21_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this);
                                                                                                                                                                                                                                                                                                   §§push(this.§0"3§);
                                                                                                                                                                                                                                                                                                   if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * param1.§-I§);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§pop().§0"3§ = §§pop();
                                                                                                                                                                                                                                                                                                   loop93:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(this.§0"3§);
                                                                                                                                                                                                                                                                                                            loop60:
                                                                                                                                                                                                                                                                                                            for(; !_loc21_; if(_loc21_ && param1)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                                                                            },if(_loc20_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc4_.§?o§);
                                                                                                                                                                                                                                                                                                                        loop79:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc4_.§?o§);
                                                                                                                                                                                                                                                                                                                           loop80:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                              loop69:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc4_.§6!W§);
                                                                                                                                                                                                                                                                                                                                 loop65:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                    addr1075:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                       loop57:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                          loop58:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                             addr1078:
                                                                                                                                                                                                                                                                                                                                             while(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc4_.§?o§);
                                                                                                                                                                                                                                                                                                                                                loop81:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc4_.§?o§);
                                                                                                                                                                                                                                                                                                                                                   addr1052:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop80;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                      loop70:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc4_.§6!W§);
                                                                                                                                                                                                                                                                                                                                                         addr1057:
                                                                                                                                                                                                                                                                                                                                                         loop71:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                            addr1058:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                               addr1059:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop65;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                     addr1063:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           continue loop93;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc4_.§<!%§);
                                                                                                                                                                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr1036:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr1033:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§pop().m_angularVelocity = §§pop() - §§pop() * (§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          while(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc5_.§?o§);
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop81;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop79;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc5_.§?o§);
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                                                                   addr974:
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc5_.§6!W§);
                                                                                                                                                                                                                                                                                                                                                                                                      addr976:
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                         addr977:
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                            addr978:
                                                                                                                                                                                                                                                                                                                                                                                                            loop68:
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop57;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           break loop68;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop69;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop58;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop70;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            continue loop55;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1456);
                                                                                                                                                                                                                                                                                                                                                                                          addr1039:
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1036);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1033);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1036);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               continue loop71;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1259:
                                                                                                                                                                                                                                                                                                                                                            continue loop54;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1482);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop65;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1188);
                                                                                                                                                                                                                                                                                                                  §§goto(addr1427);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1443);
                                                                                                                                                                                                                                                                                                               addr1156:
                                                                                                                                                                                                                                                                                                            },§§goto(addr1372))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(this.§3"A§);
                                                                                                                                                                                                                                                                                                               loop61:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                  addr1169:
                                                                                                                                                                                                                                                                                                                  addr1479:
                                                                                                                                                                                                                                                                                                                  while(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     loop63:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc18_ = §§pop();
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(this.§0"3§);
                                                                                                                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop61;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr1418:
                                                                                                                                                                                                                                                                                                                                    if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1427:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * this.§0R§);
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1429:
                                                                                                                                                                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                             break loop63;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop52;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1453:
                                                                                                                                                                                                                                                                                                                                       addr1428:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    loop101:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                       addr1455:
                                                                                                                                                                                                                                                                                                                                       loop102:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                                                          addr1456:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(2);
                                                                                                                                                                                                                                                                                                                                             if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1418);
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * this.§""$§);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr1446:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * Math.PI);
                                                                                                                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop101;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1453);
                                                                                                                                                                                                                                                                                                                                                §§push(this.§4"3§);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop102;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop60;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr1435:
                                                                                                                                                                                                                                                                                                                           if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                                              addr1372:
                                                                                                                                                                                                                                                                                                                              §§push(this.§""$§);
                                                                                                                                                                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1384:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * _loc15_);
                                                                                                                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1388:
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * _loc15_);
                                                                                                                                                                                                                                                                                                                                          if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          break loop60;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                       break loop60;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                                       addr1482:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1446);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr1481:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1455);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1428);
                                                                                                                                                                                                                                                                                                                              addr1443:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr1481);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr1480:
                                                                                                                                                                                                                                                                                                                           addr1188:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                        addr1138:
                                                                                                                                                                                                                                                                                                                        if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                           continue loop60;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1435);
                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr1480);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(_loc21_ && _loc2_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1477:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr1479);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1477:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                                            loop90:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(this);
                                                                                                                                                                                                                                                                                                               §§push(param1.§2^§);
                                                                                                                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(param1.§2^§);
                                                                                                                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * _loc17_);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§pop().§"!U§ = §§pop();
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop90;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                                                                                                                  if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(this.§"!U§);
                                                                                                                                                                                                                                                                                                                     if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(§§pop() != 0)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1325:
                                                                                                                                                                                                                                                                                                                           §§push(1 / this.§"!U§);
                                                                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1331:
                                                                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                              if(_loc21_ && _loc2_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§pop().§"!U§ = §§pop();
                                                                                                                                                                                                                                                                                                                        addr1345:
                                                                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(this);
                                                                                                                                                                                                                                                                                                                        §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(param1.§2^§);
                                                                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1296:
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1293:
                                                                                                                                                                                                                                                                                                                                       §§push(this.§"!U§);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§pop().§0K§ = §§pop();
                                                                                                                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1296);
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1293);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1296);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1331);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1325);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop51;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1345);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1259);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                                                                                                                if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§""$§);
                                                                                                                                                                                                                                                                                                   if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(§§pop() != 0)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1239:
                                                                                                                                                                                                                                                                                                         §§push(1 / this.§""$§);
                                                                                                                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1245:
                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1257:
                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                                                                                                                         if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr1257);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§pop().§""$§ = §§pop();
                                                                                                                                                                                                                                                                                                      §§goto(addr1259);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1245);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1239);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1039);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          return;
                                                                                                                                                                                                                                                                                          addr850:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr847);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr848);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr849);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1297);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1156);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1063);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr947:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1062);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr974);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr981);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1057);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1059);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1075);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1058);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr977);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr976);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr978);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr915);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr930);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1052);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr973);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr967);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1078);
                                                                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr847);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr947);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr850);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1193);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1477);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1529);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1528:
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 if(_loc20_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1528);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1529);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1501);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1496);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1065);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr747);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr746);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr745);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr747);
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr747);
                                                                                                                                             }
                                                                                                                                             §§goto(addr742);
                                                                                                                                          }
                                                                                                                                          §§goto(addr734);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr747);
                                                                                                                              }
                                                                                                                              §§goto(addr660);
                                                                                                                           }
                                                                                                                           §§goto(addr663);
                                                                                                                        }
                                                                                                                        §§goto(addr660);
                                                                                                                     }
                                                                                                                     §§goto(addr648);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(this.§3"A§);
                                                                                                                  }
                                                                                                                  §§goto(addr608);
                                                                                                               }
                                                                                                               §§goto(addr632);
                                                                                                            }
                                                                                                            §§goto(addr635);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr522);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr530);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr570);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr398);
                                                                           }
                                                                           §§goto(addr238);
                                                                           addr109:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr111);
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr92:
                                                                  }
                                                                  continue loop16;
                                                                  break;
                                                               }
                                                               continue loop4;
                                                            }
                                                            addr208:
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               §§goto(addr209);
                                                               §§goto(addr92);
                                                            }
                                                         }
                                                      }
                                                      addr153:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   addr203:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr205);
                                                }
                                             }
                                             §§goto(addr153);
                                          }
                                          addr202:
                                          while(true)
                                          {
                                             §§goto(addr203);
                                          }
                                       }
                                    }
                                    §§goto(addr208);
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr208);
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::<!1;
         var _loc4_:b2Body = b2internal::?H;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc18_ || _loc2_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(!(_loc19_ && param1))
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc18_ || _loc3_)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
               if(_loc18_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(!(_loc19_ && _loc2_))
            {
               §§push(_loc5_);
               if(!_loc19_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc18_ || _loc2_)
                  {
                     addr94:
                     §§push(_loc2_.col2.x);
                     if(_loc18_)
                     {
                        addr99:
                        §§push(§§pop() * _loc6_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc18_)
                     {
                        addr104:
                        §§push(Number(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     if(_loc18_)
                     {
                        §§push(_loc2_.col1.y);
                        if(_loc18_ || param1)
                        {
                           §§push(_loc5_);
                           if(!_loc19_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc19_ && this))
                              {
                                 §§push(_loc2_.col2.y);
                                 if(!(_loc19_ && param1))
                                 {
                                    addr139:
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc19_ && this))
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc19_ && _loc3_))
                                    {
                                       _loc6_ = §§pop();
                                       if(!_loc19_)
                                       {
                                          addr160:
                                          §§push(_loc7_);
                                          if(_loc18_)
                                          {
                                             addr164:
                                             _loc5_ = Number(§§pop());
                                          }
                                          §§goto(addr164);
                                       }
                                       _loc2_ = _loc4_.m_xf.R;
                                       §§push(this.m_localAnchor2.x);
                                       if(_loc18_)
                                       {
                                          §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                          if(!_loc19_)
                                          {
                                             addr182:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc8_:* = §§pop();
                                          §§push(this.m_localAnchor2.y);
                                          if(!(_loc19_ && param1))
                                          {
                                             §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                             if(!(_loc19_ && this))
                                             {
                                                addr206:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc9_:* = §§pop();
                                             if(_loc18_)
                                             {
                                                §§push(_loc2_.col1);
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr326:
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      if(!(_loc19_ && param1))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.col2);
                                                            loop3:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!_loc19_)
                                                               {
                                                                  §§push(_loc9_);
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc18_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc19_ && this)
                                                                        {
                                                                           break;
                                                                        }
                                                                        _loc7_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           continue loop0;
                                                                           addr233:
                                                                           if(_loc19_ && _loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(false)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           addr388:
                                                                           addr388:
                                                                           addr388:
                                                                           §§push(_loc3_.§?o§.x);
                                                                           if(_loc18_ || this)
                                                                           {
                                                                              addr365:
                                                                              §§push(_loc3_.m_angularVelocity);
                                                                              if(_loc18_ || param1)
                                                                              {
                                                                                 addr374:
                                                                                 §§push(-§§pop());
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    break loop4;
                                                                                 }
                                                                                 break loop1;
                                                                              }
                                                                              break loop4;
                                                                           }
                                                                           var _loc10_:* = §§pop();
                                                                           §§push(_loc3_.§?o§.y);
                                                                           if(_loc18_)
                                                                           {
                                                                              §§push(_loc3_.m_angularVelocity);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(§§pop() * _loc5_);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc19_ && param1))
                                                                              {
                                                                                 addr408:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc11_:* = §§pop();
                                                                              §§push(_loc4_.§?o§.x);
                                                                              if(_loc18_ || this)
                                                                              {
                                                                                 §§push(_loc4_.m_angularVelocity);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       addr427:
                                                                                       §§push(§§pop() * _loc9_);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc19_ && param1))
                                                                                    {
                                                                                       addr438:
                                                                                       var _loc12_:Number = §§pop();
                                                                                       §§push(_loc4_.§?o§.y);
                                                                                       if(_loc18_ || _loc3_)
                                                                                       {
                                                                                          §§push(_loc4_.m_angularVelocity);
                                                                                          if(!(_loc19_ && this))
                                                                                          {
                                                                                             §§push(§§pop() * _loc8_);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             addr473:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc13_:* = §§pop();
                                                                                          §§push(this.§3"A§.x);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(_loc12_);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                if(!(_loc19_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc18_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         addr502:
                                                                                                         §§push(this.§3"A§.y);
                                                                                                         if(!(_loc19_ && this))
                                                                                                         {
                                                                                                            §§push(_loc13_);
                                                                                                            if(_loc18_ || _loc2_)
                                                                                                            {
                                                                                                               addr522:
                                                                                                               §§push(§§pop() + §§pop() * (§§pop() - _loc11_));
                                                                                                               if(_loc18_ || param1)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr522);
                                                                                                      }
                                                                                                      var _loc14_:* = §§pop();
                                                                                                      §§push(this.§""$§);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(-§§pop());
                                                                                                         if(!(_loc19_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(_loc14_);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               §§push(this.§0K§);
                                                                                                               if(!(_loc19_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     addr560:
                                                                                                                     §§push(this.§"!U§);
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        addr564:
                                                                                                                        §§push(§§pop() * this.§0"3§);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     addr572:
                                                                                                                     var _loc15_:Number = §§pop();
                                                                                                                     addr571:
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        §§push(this);
                                                                                                                        §§push(this.§0"3§);
                                                                                                                        if(_loc18_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + _loc15_);
                                                                                                                        }
                                                                                                                        §§pop().§0"3§ = §§pop();
                                                                                                                     }
                                                                                                                     §§push(_loc15_);
                                                                                                                     if(!(_loc19_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * this.§3"A§.x);
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           addr602:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc16_:* = §§pop();
                                                                                                                        §§push(_loc15_);
                                                                                                                        if(!(_loc19_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * this.§3"A§.y);
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        var _loc17_:* = §§pop();
                                                                                                                        if(_loc18_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr900:
                                                                                                                           _loc3_.§?o§.x -= _loc3_.§6!W§ * _loc16_;
                                                                                                                           addr897:
                                                                                                                           addr899:
                                                                                                                           addr895:
                                                                                                                           addr894:
                                                                                                                           addr901:
                                                                                                                           addr898:
                                                                                                                           §§push(_loc3_.§?o§);
                                                                                                                           if(_loc18_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr868:
                                                                                                                              §§push(_loc3_.§?o§.y);
                                                                                                                              §§push(_loc3_.§6!W§);
                                                                                                                              §§push(_loc17_);
                                                                                                                              if(_loc18_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr878:
                                                                                                                                 §§pop().y = §§pop() - §§pop() * §§pop();
                                                                                                                                 addr879:
                                                                                                                                 addr877:
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 §§push(_loc3_.m_angularVelocity);
                                                                                                                                 if(!(_loc19_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_.§<!%§);
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       if(!(_loc19_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(_loc17_);
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             addr842:
                                                                                                                                             addr843:
                                                                                                                                             addr844:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_);
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * _loc16_);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                             addr845:
                                                                                                                                             if(_loc18_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr752:
                                                                                                                                                §§push(_loc4_.§?o§);
                                                                                                                                                if(!(_loc19_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr761:
                                                                                                                                                   §§push(_loc4_.§?o§);
                                                                                                                                                   if(!(_loc19_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr769:
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr782:
                                                                                                                                                               §§push(_loc4_.§6!W§);
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        addr791:
                                                                                                                                                                        §§pop().x = §§pop() + §§pop() * _loc16_;
                                                                                                                                                                        addr792:
                                                                                                                                                                        addr789:
                                                                                                                                                                        addr790:
                                                                                                                                                                        if(_loc18_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc19_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_.§?o§);
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc4_.§?o§);
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc18_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       if(!(_loc19_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc18_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc4_.§6!W§);
                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                                                                      if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr735:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc19_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr745:
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                     addr748:
                                                                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                                                                     §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc4_.§<!%§);
                                                                                                                                                                                                                        if(!(_loc19_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr667:
                                                                                                                                                                                                                                    §§push(_loc9_);
                                                                                                                                                                                                                                    if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr664:
                                                                                                                                                                                                                                       §§push(§§pop() * _loc16_);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().m_angularVelocity = §§pop() + §§pop() * (§§pop() - §§pop());
                                                                                                                                                                                                                                    if(!(_loc19_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc19_ && this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr792);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr748);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr667);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr664);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr667);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr769);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr868);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr782);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr868);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr789);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr790);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr735);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr878);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr791);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr745);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr868);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr761);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr752);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr879);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr845);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr897);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr899);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr877);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr895);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr900);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr868);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr894);
                                                                                                                                                }
                                                                                                                                                §§goto(addr900);
                                                                                                                                                addr852:
                                                                                                                                             }
                                                                                                                                             §§goto(addr901);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                       }
                                                                                                                                       §§goto(addr842);
                                                                                                                                    }
                                                                                                                                    §§goto(addr843);
                                                                                                                                 }
                                                                                                                                 §§goto(addr844);
                                                                                                                              }
                                                                                                                              §§goto(addr898);
                                                                                                                           }
                                                                                                                           addr882:
                                                                                                                           §§goto(addr882);
                                                                                                                        }
                                                                                                                        §§goto(addr852);
                                                                                                                     }
                                                                                                                     §§goto(addr602);
                                                                                                                  }
                                                                                                                  §§goto(addr572);
                                                                                                               }
                                                                                                               §§goto(addr564);
                                                                                                            }
                                                                                                            §§goto(addr560);
                                                                                                         }
                                                                                                         §§goto(addr571);
                                                                                                      }
                                                                                                      §§goto(addr572);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr522);
                                                                                          }
                                                                                          §§goto(addr502);
                                                                                       }
                                                                                       §§goto(addr473);
                                                                                    }
                                                                                    §§goto(addr438);
                                                                                 }
                                                                                 §§goto(addr427);
                                                                              }
                                                                              §§goto(addr438);
                                                                           }
                                                                           §§goto(addr408);
                                                                        }
                                                                        addr312:
                                                                        if(!(_loc18_ || _loc2_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc19_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        _loc9_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(_loc19_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr215:
                                                                           if(!(_loc19_ && _loc2_))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc19_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr388);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.col2);
                                                                                 if(!(_loc19_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr378:
                                                                                       }
                                                                                       continue loop4;
                                                                                       break loop1;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop3;
                                                                                 §§goto(addr215);
                                                                              }
                                                                              §§goto(addr374);
                                                                              addr269:
                                                                           }
                                                                        }
                                                                        §§goto(addr365);
                                                                     }
                                                                     §§goto(addr388);
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               §§goto(addr378);
                                                            }
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc18_ || _loc3_)
                                                   {
                                                      §§goto(addr387);
                                                   }
                                                   §§goto(addr388);
                                                }
                                             }
                                             §§goto(addr354);
                                          }
                                          §§goto(addr206);
                                       }
                                       §§goto(addr182);
                                    }
                                 }
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr104);
               }
               §§goto(addr99);
            }
            §§goto(addr94);
         }
         §§goto(addr52);
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
