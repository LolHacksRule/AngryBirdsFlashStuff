package §5!_§
{
   import §1%§.b2Body;
   import §1%§.b2TimeStep;
   import §8!H§.b2Settings;
   import §8!H§.b2internal;
   import §?!&§.b2Mat22;
   import §?!&§.b2Math;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §?T§:b2Vec2;
      
      private var §[!a§:Number;
      
      private var §`!&§:Number;
      
      private var § 0§:Number;
      
      private var §7!P§:Number;
      
      private var §>!C§:Number;
      
      private var §;!3§:Number;
      
      private var §#!f§:Number;
      
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
            loop0:
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               addr158:
               while(true)
               {
                  this.§?T§ = new b2Vec2();
                  while(true)
                  {
                     super(param1);
                     addr146:
                     while(true)
                     {
                        this.m_localAnchor1.SetV(param1.§'!<§);
                     }
                     addr86:
                     while(!(_loc5_ && param1))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr141);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §,^§.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return § X§.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§>!C§);
            if(!_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc2_ && _loc2_))
               {
                  §§push(this.§?T§.x);
                  if(_loc3_ || param1)
                  {
                     addr64:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc2_ && param1)
                     {
                     }
                     §§goto(addr83);
                  }
                  §§push(this.§>!C§);
                  if(_loc3_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc2_)
                     {
                        §§push(this.§?T§.y);
                     }
                     addr83:
                     return new §§pop().b2Vec2(§§pop(),§§pop());
                  }
                  §§push(§§pop() * §§pop());
               }
            }
         }
         §§goto(addr64);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §%H§() : Number
      {
         return this.§#!f§;
      }
      
      public function §8!%§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§#!f§ = param1;
         }
      }
      
      public function §5d§() : Number
      {
         return this.§[!a§;
      }
      
      public function §4!"§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§[!a§ = param1;
         }
      }
      
      public function §1h§() : Number
      {
         return this.§`!&§;
      }
      
      public function §[`§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!&§ = param1;
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
         _loc4_ = §,^§;
         _loc5_ = § X§;
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc20_ || this)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc21_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         if(_loc20_ || _loc3_)
         {
            §§push(this.m_localAnchor1.y);
            while(true)
            {
               §§push(_loc4_.m_sweep.localCenter.y);
               loop1:
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
                        addr227:
                        while(true)
                        {
                           §§push(_loc2_.col1);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr202:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 addr203:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr204:
                                    while(!_loc21_)
                                    {
                                       §§push(_loc2_.col2);
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr209:
                                          while(!_loc21_)
                                          {
                                             §§push(_loc7_);
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr213:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr214:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr215:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         addr216:
                                                         while(true)
                                                         {
                                                            continue loop5;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          continue loop1;
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
               if(_loc21_ && _loc3_)
               {
                  continue;
               }
               _loc6_ = §§pop();
               if(_loc20_)
               {
                  if(!(_loc21_ && param1))
                  {
                     while(false)
                     {
                        §§goto(addr127);
                     }
                     _loc2_ = _loc5_.m_xf.R;
                     §§push(this.m_localAnchor2.x);
                     if(!_loc21_)
                     {
                        §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                        if(!_loc21_)
                        {
                           addr245:
                           §§push(Number(§§pop()));
                        }
                        var _loc8_:* = §§pop();
                        if(_loc20_)
                        {
                           §§push(this.m_localAnchor2.y);
                           loop22:
                           while(true)
                           {
                              §§push(_loc5_.m_sweep.localCenter.y);
                              loop23:
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                                 loop24:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc2_.col1);
                                          loop27:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr501:
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                addr502:
                                                while(_loc20_ || this)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   while(!_loc21_)
                                                   {
                                                      §§push(_loc2_.col2);
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr515:
                                                         while(true)
                                                         {
                                                            §§push(_loc9_);
                                                            addr516:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr517:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr518:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc20_ || param1)
                                                                     {
                                                                        if(!_loc20_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        _loc3_ = §§pop();
                                                                        continue loop27;
                                                                     }
                                                                     addr560:
                                                                     var _loc10_:* = §§pop();
                                                                     if(_loc20_)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        if(!_loc21_)
                                                                        {
                                                                           §§push(b2Settings.b2_linearSlop);
                                                                           if(_loc20_)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    addr574:
                                                                                    §§push(this.§?T§);
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       §§pop().§49§(1 / _loc10_);
                                                                                       if(!(_loc21_ && _loc3_))
                                                                                       {
                                                                                          addr590:
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr593:
                                                                                       §§pop().§@l§();
                                                                                    }
                                                                                    §§push(_loc6_);
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       §§push(this.§?T§.y);
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc20_ || param1)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                addr618:
                                                                                                §§push(§§pop() - §§pop() * this.§?T§.x);
                                                                                                if(_loc20_ || _loc3_)
                                                                                                {
                                                                                                }
                                                                                                var _loc11_:* = §§pop();
                                                                                                §§push(_loc8_);
                                                                                                if(_loc20_ || _loc2_)
                                                                                                {
                                                                                                   §§push(this.§?T§.y);
                                                                                                   if(!(_loc21_ && this))
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         §§push(_loc9_);
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            addr656:
                                                                                                            §§push(§§pop() - §§pop() * this.§?T§.x);
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                            }
                                                                                                            var _loc12_:* = §§pop();
                                                                                                            §§push(_loc4_.§4s§);
                                                                                                            if(_loc20_ || this)
                                                                                                            {
                                                                                                               §§push(_loc4_.§[!F§);
                                                                                                               if(!_loc21_)
                                                                                                               {
                                                                                                                  §§push(_loc11_);
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        §§push(_loc11_);
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc20_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!(_loc21_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.§4s§);
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc20_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_.§[!F§);
                                                                                                                                       if(_loc20_)
                                                                                                                                       {
                                                                                                                                          addr715:
                                                                                                                                          §§push(_loc12_);
                                                                                                                                          if(!_loc21_)
                                                                                                                                          {
                                                                                                                                             addr718:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc20_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr728:
                                                                                                                                                §§push(§§pop() + §§pop() * _loc12_);
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   addr731:
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr728);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr728);
                                                                                                                              }
                                                                                                                              var _loc13_:* = §§pop();
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 if(_loc20_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() == 0);
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          §§push(!§§pop());
                                                                                                                                       }
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          addr1490:
                                                                                                                                          §§push(1 / _loc13_);
                                                                                                                                          if(_loc20_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(_loc20_ || param1)
                                                                                                                                             {
                                                                                                                                                addr1518:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr1527:
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(!(_loc21_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§goto(addr1527);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§pop().§;!3§ = §§pop();
                                                                                                                                       loop55:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§[!a§);
                                                                                                                                          loop56:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             loop57:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop() <= §§pop())
                                                                                                                                                {
                                                                                                                                                   loop86:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!param1.§3!=§)
                                                                                                                                                      {
                                                                                                                                                         this.§>!C§ = 0;
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc21_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc20_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  break loop86;
                                                                                                                                                               }
                                                                                                                                                               loop63:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(2);
                                                                                                                                                                  addr1449:
                                                                                                                                                                  loop64:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * Math.PI);
                                                                                                                                                                     addr1453:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§[!a§);
                                                                                                                                                                        addr1455:
                                                                                                                                                                        addr1469:
                                                                                                                                                                        while(_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              addr1459:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc15_ = §§pop();
                                                                                                                                                                                 continue loop64;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           addr1470:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              addr1471:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc14_ = §§pop();
                                                                                                                                                                                 continue loop63;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               loop88:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc21_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        loop89:
                                                                                                                                                                        for(; !_loc21_; §§push(this),§§push(this.§>!C§),if(!(_loc21_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * param1.§&l§);
                                                                                                                                                                        },§§pop().§>!C§ = §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§>!C§);
                                                                                                                                                                           loop90:
                                                                                                                                                                           while(!_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§?T§);
                                                                                                                                                                              loop91:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                 loop92:
                                                                                                                                                                                 while(_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc21_ && this)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop57;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       loop93:
                                                                                                                                                                                       for(; !_loc21_; if(!(_loc20_ || _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       },if(_loc20_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc19_ = §§pop();
                                                                                                                                                                                             loop122:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop55;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc4_.§69§);
                                                                                                                                                                                                loop119:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc4_.§69§);
                                                                                                                                                                                                   loop117:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                      loop118:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc4_.§4s§);
                                                                                                                                                                                                         loop115:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                            loop113:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               loop114:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                  loop116:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                                                                     addr1059:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop122;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc4_.§69§);
                                                                                                                                                                                                                           loop97:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc4_.§69§);
                                                                                                                                                                                                                              loop98:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                                                                 loop99:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc4_.§4s§);
                                                                                                                                                                                                                                    loop100:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                                                                       loop101:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          loop102:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc20_ || param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop114;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                             loop103:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                                                                loop104:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc20_ || _loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                                                                                                                         §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                                                                                         if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc4_.§[!F§);
                                                                                                                                                                                                                                                            if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                                                                               if(_loc20_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                                                                  if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1012:
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                                                                                                                                                     loop105:
                                                                                                                                                                                                                                                                     for(; _loc20_; while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc20_ || param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop105;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop104;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr966);
                                                                                                                                                                                                                                                                     },continue loop88)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc5_.§69§);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc5_.§69§);
                                                                                                                                                                                                                                                                           addr930:
                                                                                                                                                                                                                                                                           while(!_loc21_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop103;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!(_loc20_ || param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop118;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(_loc5_.§4s§);
                                                                                                                                                                                                                                                                                 if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr954:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    addr956:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                       continue loop105;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr903:
                                                                                                                                                                                                                                                                                 if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop88;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop116;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop99;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr966:
                                                                                                                                                                                                                                                                           §§push(_loc5_.§69§);
                                                                                                                                                                                                                                                                           continue loop98;
                                                                                                                                                                                                                                                                           if(_loc21_ && _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop97;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc20_ || this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop119;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc5_.§69§);
                                                                                                                                                                                                                                                                           if(_loc20_ || param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop117;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                                                                                                                              if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc5_.§4s§);
                                                                                                                                                                                                                                                                                 if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop101;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop113;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr877:
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc20_ || _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop102;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop100;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(!(_loc20_ || _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop115;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr896:
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr903);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr956);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr955);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr954);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr877);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr896);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr930);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1467);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1466:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1012);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1256);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr1186);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1449);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1280);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop114;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1174);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1368);
                                                                                                                                                                                                                        continue loop116;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop55;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1471);
                                                                                                                                                                                       },§§goto(addr1421))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc21_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   loop94:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc18_ = §§pop();
                                                                                                                                                                                                      addr1174:
                                                                                                                                                                                                      addr1392:
                                                                                                                                                                                                      while(_loc20_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§>!C§);
                                                                                                                                                                                                            if(!(_loc20_ || this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop93;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop90;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§?T§);
                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop91;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                  if(_loc21_ && param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop92;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc20_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc21_ && _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop93;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop94;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1111:
                                                                                                                                                                                                                        if(!(_loc21_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           continue loop93;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1439:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§`!&§);
                                                                                                                                                                                                                           addr1441:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              break loop90;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1111);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1455);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     addr1418:
                                                                                                                                                                                                                     while(!_loc21_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        while(_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc17_ = §§pop();
                                                                                                                                                                                                                           continue loop55;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop56;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1453);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc16_ = §§pop();
                                                                                                                                                                                                                  break loop89;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1445:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1418);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this);
                                                                                                                                                                                                         if(!(_loc21_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§ 0§);
                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() == 0);
                                                                                                                                                                                                               if(_loc20_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1343:
                                                                                                                                                                                                                  §§push(1 / this.§ 0§);
                                                                                                                                                                                                                  if(!(_loc21_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1354:
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     if(_loc21_ && this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1366:
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1366);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().§ 0§ = §§pop();
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param1.§?!>§);
                                                                                                                                                                                                                     if(_loc20_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                                                                           if(_loc20_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1317:
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(!(_loc21_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1314:
                                                                                                                                                                                                                                 §§push(this.§ 0§);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().§7!P§ = §§pop();
                                                                                                                                                                                                                              loop81:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                                                                 §§push(_loc13_);
                                                                                                                                                                                                                                 if(!(_loc21_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() + this.§ 0§);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().§;!3§ = §§pop();
                                                                                                                                                                                                                                 addr1280:
                                                                                                                                                                                                                                 loop82:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                                                                    if(_loc20_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§;!3§);
                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() == 0);
                                                                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(!§§pop());
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1236:
                                                                                                                                                                                                                                             §§push(1 / this.§;!3§);
                                                                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1242:
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1255:
                                                                                                                                                                                                                                                   §§pop().§;!3§ = §§pop();
                                                                                                                                                                                                                                                   continue loop81;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1255);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1254:
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                                                                             if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1254);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1255);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1242);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1236);
                                                                                                                                                                                                                                    addr1186:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc21_ && this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop82;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc20_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop89;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1460:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(2);
                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1439);
                                                                                                                                                                                                                                             §§push(§§pop() * this.§;!3§);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1449);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1317);
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1314);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1317);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1368:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1354);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1343);
                                                                                                                                                                                                         §§goto(addr1174);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1467:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1469);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1470);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1458);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1459);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1441);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1443:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    addr1444:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1445);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1443);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§;!3§);
                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc20_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc20_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1416:
                                                                                                                                                                                       §§goto(addr1417);
                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1421);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1417);
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1416);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1444);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1059);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr957);
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                               §§push(_loc5_.m_angularVelocity);
                                                                                                                                                               if(!_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc5_.§[!F§);
                                                                                                                                                               if(!(_loc21_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  if(_loc20_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                     if(_loc20_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr805:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!(_loc21_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr798:
                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              addr801:
                                                                                                                                                                              §§push(§§pop() * _loc18_);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr801);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr798);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr805);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1460);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1186);
                                                                                                                                                   }
                                                                                                                                                   return;
                                                                                                                                                }
                                                                                                                                                §§goto(addr1466);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1518);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1490);
                                                                                                                              }
                                                                                                                              §§goto(addr1181);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr728);
                                                                                                                     }
                                                                                                                     §§goto(addr715);
                                                                                                                  }
                                                                                                                  §§goto(addr718);
                                                                                                               }
                                                                                                               §§goto(addr728);
                                                                                                            }
                                                                                                            §§goto(addr731);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr656);
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr656);
                                                                                             }
                                                                                             §§goto(addr618);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr618);
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§goto(addr590);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(this.§?T§);
                                                                              }
                                                                              §§goto(addr593);
                                                                           }
                                                                        }
                                                                        §§goto(addr618);
                                                                     }
                                                                     §§goto(addr574);
                                                                  }
                                                                  continue loop24;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop22;
                                                }
                                                continue loop23;
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
                           §§push(this.§?T§);
                           if(!(_loc21_ && this))
                           {
                              §§push(_loc5_.m_sweep);
                              if(!(_loc21_ && _loc2_))
                              {
                                 §§push(§§pop().c);
                                 if(_loc20_)
                                 {
                                    §§push(§§pop().y);
                                    if(_loc20_)
                                    {
                                       if(_loc20_)
                                       {
                                          §§push(_loc9_);
                                          if(!(_loc21_ && this))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc20_)
                                             {
                                                addr288:
                                                if(!(_loc21_ && _loc3_))
                                                {
                                                   if(!_loc21_)
                                                   {
                                                      §§goto(addr297);
                                                   }
                                                   §§goto(addr371);
                                                }
                                                §§goto(addr373);
                                             }
                                             §§goto(addr336);
                                          }
                                          §§goto(addr317);
                                       }
                                       §§goto(addr350);
                                    }
                                    §§goto(addr288);
                                 }
                                 §§goto(addr349);
                              }
                              §§goto(addr348);
                           }
                           §§goto(addr346);
                        }
                     }
                     §§goto(addr245);
                     addr125:
                  }
                  §§goto(addr227);
               }
               §§goto(addr195);
            }
         }
         §§goto(addr125);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = §,^§;
         var _loc4_:b2Body = § X§;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc18_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc19_)
            {
               addr45:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc18_)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
               if(!_loc18_)
               {
                  addr59:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(_loc2_.col1.x);
               if(!(_loc18_ && param1))
               {
                  §§push(_loc5_);
                  if(!(_loc18_ && this))
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc18_ && param1))
                     {
                        §§push(_loc2_.col2.x);
                        if(!(_loc18_ && _loc2_))
                        {
                           addr97:
                           §§push(§§pop() * _loc6_);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc18_ && param1)
                        {
                        }
                        addr108:
                        var _loc7_:* = §§pop();
                        if(_loc19_)
                        {
                           §§push(_loc2_.col1.y);
                           if(!(_loc18_ && this))
                           {
                              §§push(_loc5_);
                              if(_loc19_ || _loc2_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc18_)
                                 {
                                    §§push(_loc2_.col2.y);
                                    if(!_loc18_)
                                    {
                                       addr139:
                                       §§push(§§pop() + §§pop() * _loc6_);
                                       if(_loc19_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc19_ || _loc2_)
                                          {
                                             addr150:
                                             _loc6_ = §§pop();
                                             if(!(_loc18_ && _loc3_))
                                             {
                                                addr158:
                                                §§push(_loc7_);
                                                if(!(_loc18_ && _loc2_))
                                                {
                                                   addr167:
                                                   _loc5_ = Number(§§pop());
                                                }
                                                §§goto(addr167);
                                             }
                                             _loc2_ = _loc4_.m_xf.R;
                                             §§push(this.m_localAnchor2.x);
                                             if(!(_loc18_ && _loc2_))
                                             {
                                                §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                                if(!_loc18_)
                                                {
                                                   addr190:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc8_:* = §§pop();
                                                §§push(this.m_localAnchor2.y);
                                                if(!_loc18_)
                                                {
                                                   §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc9_:* = §§pop();
                                                if(_loc19_ || _loc3_)
                                                {
                                                   §§push(_loc2_.col1);
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr304:
                                                      addr355:
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(_loc8_);
                                                         if(!(_loc18_ && this))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.col2);
                                                               addr315:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc19_ || this)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc18_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc18_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              _loc7_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                           }
                                                                           addr348:
                                                                           §§push(_loc3_.m_angularVelocity);
                                                                           if(!_loc18_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr357:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc19_)
                                                                           {
                                                                              addr360:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc10_:* = §§pop();
                                                                           §§push(_loc3_.§69§.y);
                                                                           if(_loc19_ || this)
                                                                           {
                                                                              §§push(_loc3_.m_angularVelocity);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§push(§§pop() * _loc5_);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc19_ || _loc3_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           var _loc11_:* = §§pop();
                                                                           §§push(_loc4_.§69§.x);
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(_loc4_.m_angularVelocity);
                                                                              if(!(_loc18_ && _loc3_))
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(§§pop() * _loc9_);
                                                                                 }
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc18_ && _loc3_))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           var _loc12_:* = §§pop();
                                                                           §§push(_loc4_.§69§.y);
                                                                           if(!(_loc18_ && this))
                                                                           {
                                                                              §§push(_loc4_.m_angularVelocity);
                                                                              if(_loc19_ || this)
                                                                              {
                                                                                 §§push(§§pop() * _loc8_);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc19_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           var _loc13_:* = §§pop();
                                                                           §§push(this.§?T§.x);
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(_loc12_);
                                                                              if(!(_loc18_ && _loc2_))
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       addr472:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc19_ || param1)
                                                                                       {
                                                                                          addr480:
                                                                                          §§push(this.§?T§.y);
                                                                                          if(!(_loc18_ && this))
                                                                                          {
                                                                                             addr490:
                                                                                             §§push(_loc13_);
                                                                                             if(_loc19_ || _loc2_)
                                                                                             {
                                                                                                addr498:
                                                                                                §§push(§§pop() - _loc11_);
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc19_ || _loc2_)
                                                                                          {
                                                                                             addr509:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc14_:* = §§pop();
                                                                                          §§push(this.§;!3§);
                                                                                          if(!(_loc18_ && this))
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(_loc19_ || _loc2_)
                                                                                             {
                                                                                                §§push(_loc14_);
                                                                                                if(_loc19_ || this)
                                                                                                {
                                                                                                   §§push(this.§7!P§);
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         addr543:
                                                                                                         §§push(this.§ 0§);
                                                                                                         if(_loc19_ || _loc2_)
                                                                                                         {
                                                                                                            addr555:
                                                                                                            §§push(§§pop() + §§pop() * this.§>!C§);
                                                                                                         }
                                                                                                         §§goto(addr555);
                                                                                                      }
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc19_ || param1)
                                                                                                      {
                                                                                                         addr565:
                                                                                                         var _loc15_:Number = §§pop();
                                                                                                         addr564:
                                                                                                         if(_loc19_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(this);
                                                                                                            §§push(this.§>!C§);
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               §§push(§§pop() + _loc15_);
                                                                                                            }
                                                                                                            §§pop().§>!C§ = §§pop();
                                                                                                         }
                                                                                                         §§push(_loc15_);
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            §§push(§§pop() * this.§?T§.x);
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               addr590:
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc16_:* = §§pop();
                                                                                                            §§push(_loc15_);
                                                                                                            if(!(_loc18_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§pop() * this.§?T§.y);
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  addr606:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc17_:* = §§pop();
                                                                                                               if(_loc19_ || _loc3_)
                                                                                                               {
                                                                                                                  addr888:
                                                                                                                  _loc3_.§69§.x -= _loc3_.§4s§ * _loc16_;
                                                                                                                  addr887:
                                                                                                                  addr886:
                                                                                                                  addr880:
                                                                                                                  addr889:
                                                                                                                  addr885:
                                                                                                                  addr883:
                                                                                                                  §§push(_loc3_.§69§);
                                                                                                                  §§push(_loc3_.§69§);
                                                                                                                  if(_loc19_ || this)
                                                                                                                  {
                                                                                                                     addr850:
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        addr864:
                                                                                                                        §§push(_loc3_.§4s§);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           addr869:
                                                                                                                           §§pop().y = §§pop() - §§pop() * _loc17_;
                                                                                                                           addr870:
                                                                                                                           addr867:
                                                                                                                           addr868:
                                                                                                                           if(_loc19_ || this)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              §§push(_loc3_.m_angularVelocity);
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.§[!F§);
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_);
                                                                                                                                    if(_loc19_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(_loc17_);
                                                                                                                                       if(_loc19_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!(_loc18_ && param1))
                                                                                                                                          {
                                                                                                                                             addr833:
                                                                                                                                             addr834:
                                                                                                                                             addr835:
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             if(_loc19_ || this)
                                                                                                                                             {
                                                                                                                                                addr830:
                                                                                                                                                §§push(§§pop() * _loc16_);
                                                                                                                                             }
                                                                                                                                             §§pop().m_angularVelocity = §§pop() - §§pop() * (§§pop() - §§pop());
                                                                                                                                             addr836:
                                                                                                                                             §§push(_loc4_.§69§);
                                                                                                                                             §§push(_loc4_.§69§);
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                addr761:
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                if(!(_loc18_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_.§4s§);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc18_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         addr780:
                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            addr783:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr786:
                                                                                                                                                               §§pop().x = §§pop() + §§pop();
                                                                                                                                                               addr787:
                                                                                                                                                               §§push(_loc4_.§69§);
                                                                                                                                                               if(!(_loc18_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc19_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_.§69§);
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_.§4s§);
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc19_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc17_);
                                                                                                                                                                                    if(!(_loc18_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr716:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!(_loc18_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr724:
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(!(_loc18_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc18_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                         addr748:
                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                                                                               §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_.§[!F§);
                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                                                                     if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                                                                        if(_loc19_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr655:
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * _loc16_);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc19_ || _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr870);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr748);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr655);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr836);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr787);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr888);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr850);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr761);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr786);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr887);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr886);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr780);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr783);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr716);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr724);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr836);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr880);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr888);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr836);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr864);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr867);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr868);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr783);
                                                                                                                                                }
                                                                                                                                                §§goto(addr869);
                                                                                                                                             }
                                                                                                                                             §§goto(addr888);
                                                                                                                                          }
                                                                                                                                          §§goto(addr833);
                                                                                                                                       }
                                                                                                                                       §§goto(addr830);
                                                                                                                                    }
                                                                                                                                    §§goto(addr833);
                                                                                                                                 }
                                                                                                                                 §§goto(addr834);
                                                                                                                              }
                                                                                                                              §§goto(addr835);
                                                                                                                           }
                                                                                                                           §§goto(addr889);
                                                                                                                        }
                                                                                                                        §§goto(addr885);
                                                                                                                     }
                                                                                                                     §§goto(addr883);
                                                                                                                  }
                                                                                                                  addr882:
                                                                                                                  §§goto(addr882);
                                                                                                               }
                                                                                                               §§goto(addr833);
                                                                                                            }
                                                                                                            §§goto(addr606);
                                                                                                         }
                                                                                                         §§goto(addr590);
                                                                                                      }
                                                                                                      §§goto(addr565);
                                                                                                   }
                                                                                                   §§goto(addr555);
                                                                                                }
                                                                                                §§goto(addr543);
                                                                                             }
                                                                                             §§goto(addr564);
                                                                                          }
                                                                                          §§goto(addr565);
                                                                                       }
                                                                                       §§goto(addr509);
                                                                                    }
                                                                                    §§goto(addr490);
                                                                                 }
                                                                                 §§goto(addr498);
                                                                              }
                                                                              §§goto(addr472);
                                                                           }
                                                                           §§goto(addr480);
                                                                           addr333:
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr324:
                                                                  }
                                                                  §§push(-§§pop());
                                                                  if(_loc19_)
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  §§goto(addr357);
                                                               }
                                                            }
                                                            addr313:
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr357);
                                                   }
                                                }
                                                §§goto(addr337);
                                             }
                                             §§goto(addr190);
                                          }
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr167);
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr108);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr97);
               }
               §§goto(addr108);
            }
            §§goto(addr59);
         }
         §§goto(addr45);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         if(_loc17_ || this)
         {
            if(this.§[!a§ > 0)
            {
               if(_loc17_ || param1)
               {
                  §§goto(addr37);
               }
            }
            var _loc3_:b2Body = §,^§;
            var _loc4_:b2Body = § X§;
            _loc2_ = _loc3_.m_xf.R;
            §§push(this.m_localAnchor1.x);
            if(!(_loc18_ && param1))
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
               if(!(_loc18_ && _loc2_))
               {
                  addr74:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(this.m_localAnchor1.y);
               if(_loc17_ || _loc3_)
               {
                  §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                  if(!_loc18_)
                  {
                     addr93:
                     §§push(Number(§§pop()));
                  }
                  var _loc6_:* = §§pop();
                  §§push(_loc2_.col1.x);
                  if(_loc17_ || this)
                  {
                     §§push(_loc5_);
                     if(!_loc18_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc17_ || _loc3_)
                        {
                           addr116:
                           §§push(_loc2_.col2.x);
                           if(!(_loc18_ && this))
                           {
                              addr128:
                              §§push(§§pop() + §§pop() * _loc6_);
                              if(_loc17_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr128);
                        }
                        var _loc7_:* = §§pop();
                        if(!(_loc18_ && _loc3_))
                        {
                           §§push(_loc2_.col1.y);
                           if(_loc17_ || _loc3_)
                           {
                              §§push(_loc5_);
                              if(_loc17_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc17_)
                                 {
                                    §§push(_loc2_.col2.y);
                                    if(_loc17_)
                                    {
                                       addr161:
                                       §§push(§§pop() * _loc6_);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc17_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc18_ && param1))
                                       {
                                          addr174:
                                          _loc6_ = §§pop();
                                          addr192:
                                          if(!(_loc18_ && param1))
                                          {
                                             §§push(_loc7_);
                                             if(_loc17_ || _loc3_)
                                             {
                                                addr190:
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          _loc2_ = _loc4_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(_loc17_)
                                          {
                                             §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                             if(!_loc18_)
                                             {
                                                addr209:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc8_:* = §§pop();
                                             §§push(this.m_localAnchor2.y);
                                             if(!_loc18_)
                                             {
                                                §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                                if(_loc17_)
                                                {
                                                   addr223:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc9_:* = §§pop();
                                                if(!_loc18_)
                                                {
                                                   §§push(_loc2_.col1);
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc17_ || param1)
                                                      {
                                                         §§push(_loc8_);
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc18_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(_loc2_.col2);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               addr333:
                                                               addr271:
                                                               while(true)
                                                               {
                                                                  §§push(_loc9_);
                                                                  addr334:
                                                                  addr387:
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc17_ || _loc3_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc18_ && this))
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 continue loop0;
                                                                                 addr238:
                                                                                 if(_loc18_ && param1)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    addr396:
                                                                                    addr396:
                                                                                    §§push(_loc4_.m_sweep.c.x);
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       addr361:
                                                                                       §§push(_loc8_);
                                                                                       if(_loc17_ || param1)
                                                                                       {
                                                                                          addr369:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             break loop1;
                                                                                          }
                                                                                          addr386:
                                                                                          §§push(_loc5_);
                                                                                          break loop4;
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          §§goto(addr386);
                                                                                       }
                                                                                    }
                                                                                    var _loc10_:* = §§pop();
                                                                                    §§push(_loc4_.m_sweep.c.y);
                                                                                    if(_loc17_ || param1)
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc17_ || this)
                                                                                          {
                                                                                             §§push(_loc3_.m_sweep.c.y);
                                                                                             if(_loc17_ || param1)
                                                                                             {
                                                                                                addr437:
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   §§push(_loc6_);
                                                                                                }
                                                                                                var _loc11_:* = Number(§§pop());
                                                                                                var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                                                                                if(!(_loc18_ && _loc3_))
                                                                                                {
                                                                                                   §§push(_loc10_);
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      §§push(_loc12_);
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(_loc17_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!(_loc18_ && _loc3_))
                                                                                                            {
                                                                                                               _loc10_ = §§pop();
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  addr493:
                                                                                                                  §§push(_loc11_);
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     addr496:
                                                                                                                     §§push(_loc12_);
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                        if(_loc17_ || param1)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              addr510:
                                                                                                                              _loc11_ = §§pop();
                                                                                                                              addr511:
                                                                                                                              §§push(_loc12_);
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 addr514:
                                                                                                                                 §§push(§§pop() - this.§#!f§);
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                    addr519:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              var _loc13_:* = §§pop();
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(b2Math);
                                                                                                                                 §§push(_loc13_);
                                                                                                                                 §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                                 if(!(_loc18_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(-§§pop());
                                                                                                                                 }
                                                                                                                                 §§push(§§pop().§"J§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!(_loc18_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       _loc13_ = §§pop();
                                                                                                                                       addr552:
                                                                                                                                       §§push(this.§;!3§);
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          §§push(-§§pop());
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             addr559:
                                                                                                                                             §§push(§§pop() * _loc13_);
                                                                                                                                             if(_loc17_ || this)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr569:
                                                                                                                                             var _loc14_:* = §§pop();
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                this.§?T§.Set(_loc10_,_loc11_);
                                                                                                                                             }
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(!(_loc18_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * this.§?T§.x);
                                                                                                                                                if(!(_loc18_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             var _loc15_:* = §§pop();
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(_loc17_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * this.§?T§.y);
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   addr613:
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                var _loc16_:* = §§pop();
                                                                                                                                                if(!(_loc18_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_.m_sweep);
                                                                                                                                                   loop9:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().c);
                                                                                                                                                      loop10:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_.m_sweep);
                                                                                                                                                         loop11:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                            loop12:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               loop13:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_.§4s§);
                                                                                                                                                                  loop14:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                     loop15:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        loop16:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           loop17:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              loop18:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_.m_sweep);
                                                                                                                                                                                 loop19:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().c);
                                                                                                                                                                                    loop20:
                                                                                                                                                                                    while(_loc17_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc3_.m_sweep);
                                                                                                                                                                                       loop21:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().c);
                                                                                                                                                                                          loop22:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                             loop23:
                                                                                                                                                                                             while(_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc3_.§4s§);
                                                                                                                                                                                                loop24:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                   loop25:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      loop26:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                         loop27:
                                                                                                                                                                                                         while(!(_loc18_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                            loop28:
                                                                                                                                                                                                            while(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc3_.m_sweep);
                                                                                                                                                                                                               loop29:
                                                                                                                                                                                                               while(_loc17_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc3_.m_sweep);
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().a);
                                                                                                                                                                                                                     addr912:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc3_.§[!F§);
                                                                                                                                                                                                                        addr914:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                                                                           addr915:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                              if(_loc17_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr924:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr925:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                                                                 addr926:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    addr927:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                       addr928:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          addr929:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                             addr930:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().a = §§pop();
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
                                                                                                                                                                                                                  addr750:
                                                                                                                                                                                                                  if(!(_loc17_ || param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr757:
                                                                                                                                                                                                                  §§push(§§pop().c);
                                                                                                                                                                                                                  if(_loc17_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop20;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop21;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(_loc17_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().c);
                                                                                                                                                                                                                        while(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc4_.§4s§);
                                                                                                                                                                                                                              addr881:
                                                                                                                                                                                                                              addr798:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                                                                 addr882:
                                                                                                                                                                                                                                 while(!_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc17_ || this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop15;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       addr893:
                                                                                                                                                                                                                                       while(_loc17_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                                                                          while(!_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                             loop52:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop9;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr750);
                                                                                                                                                                                                                                                addr849:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop52;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().a);
                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc4_.§[!F§);
                                                                                                                                                                                                                                                            if(!(_loc18_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                                                                                                                           if(_loc17_ || param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr709:
                                                                                                                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc15_);
                                                                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr725:
                                                                                                                                                                                                                                                                                                §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr729:
                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§pop().a = §§pop();
                                                                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr915);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr926);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr927);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr725);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr928);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr725);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr925);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr725);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr924);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr709);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr914);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr929);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr729);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr930);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr729);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr911);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr912);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop29;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop28;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop27;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop25;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc17_ || param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop23;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc4_.§4s§);
                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc17_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop24;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop26;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr831:
                                                                                                                                                                                                                                 if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop16;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!(_loc17_ || _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop14;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                                                    §§goto(addr849);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr881);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr892);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop().c);
                                                                                                                                                                                                                           if(!(_loc17_ || _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!(_loc17_ || this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop22;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr798);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr893);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr848);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop12;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop11;
                                                                                                                                                                                                                     addr863:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr863);
                                                                                                                                                                                                                     §§goto(addr757);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop19;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop18;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop17;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
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
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr931);
                                                                                                                                             }
                                                                                                                                             §§goto(addr613);
                                                                                                                                          }
                                                                                                                                          §§goto(addr569);
                                                                                                                                       }
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    §§goto(addr569);
                                                                                                                                 }
                                                                                                                                 §§goto(addr559);
                                                                                                                              }
                                                                                                                              §§goto(addr552);
                                                                                                                           }
                                                                                                                           §§goto(addr519);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr514);
                                                                                                               }
                                                                                                               §§goto(addr511);
                                                                                                            }
                                                                                                            §§goto(addr496);
                                                                                                         }
                                                                                                         §§goto(addr510);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr514);
                                                                                                }
                                                                                                §§goto(addr493);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr437);
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr437);
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr396);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr386);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr387:
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!(_loc18_ && _loc3_))
                                                                  {
                                                                     addr395:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  §§goto(addr396);
                                                               }
                                                               §§push(_loc2_.col2);
                                                               if(!(_loc17_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop().y);
                                                               if(!(_loc18_ && _loc2_))
                                                               {
                                                                  addr288:
                                                                  if(_loc17_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§goto(addr333);
                                                               }
                                                               §§goto(addr387);
                                                            }
                                                         }
                                                         §§push(_loc3_.m_sweep.c.x);
                                                         if(_loc17_ || param1)
                                                         {
                                                            §§goto(addr361);
                                                         }
                                                         §§goto(addr387);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr361);
                                                      }
                                                   }
                                                }
                                                §§goto(addr245);
                                             }
                                             §§goto(addr223);
                                          }
                                          §§goto(addr209);
                                       }
                                       _loc5_ = §§pop();
                                       §§goto(addr192);
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr190);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr116);
               }
               §§goto(addr93);
            }
            §§goto(addr74);
         }
         addr37:
         return true;
      }
   }
}
