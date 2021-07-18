package §@h§
{
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2TimeStep;
   import §@!E§.b2Mat22;
   import §@!E§.b2Math;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §84§:b2Vec2;
      
      private var §@@§:Number;
      
      private var §`!X§:Number;
      
      private var §]!7§:Number;
      
      private var §%E§:Number;
      
      private var §6!h§:Number;
      
      private var §'q§:Number;
      
      private var § !V§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_)
         {
            this.m_localAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§84§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super(param1);
                     while(true)
                     {
                        this.m_localAnchor1.SetV(param1.§8D§);
                        loop4:
                        while(true)
                        {
                           this.m_localAnchor2.SetV(param1.§@"$§);
                           while(true)
                           {
                              this.§ !V§ = param1.length;
                              continue loop2;
                              addr55:
                              if(!(_loc5_ && param1))
                              {
                                 this.§]!7§ = 0;
                                 loop10:
                                 while(true)
                                 {
                                    this.§%E§ = 0;
                                    if(!_loc5_)
                                    {
                                       if(_loc6_)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          addr98:
                                          while(!(_loc5_ && _loc3_))
                                          {
                                             if(!_loc5_)
                                             {
                                                this.§`!X§ = param1.dampingRatio;
                                                continue loop4;
                                             }
                                             continue loop1;
                                          }
                                          continue loop2;
                                       }
                                       addr53:
                                       while(_loc6_)
                                       {
                                          §§goto(addr55);
                                          continue loop10;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 return;
                                 addr48:
                              }
                           }
                        }
                        if(_loc5_ && this)
                        {
                           continue;
                        }
                        this.§6!h§ = 0;
                        §§goto(addr53);
                     }
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!F.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[!n.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§6!h§);
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || _loc2_)
               {
                  §§push(this.§84§.x);
                  if(!(_loc2_ && param1))
                  {
                     addr64:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(this.§6!h§);
                        if(!_loc2_)
                        {
                           §§goto(addr93);
                        }
                        §§push(§§pop() * §§pop());
                     }
                  }
                  addr93:
                  §§push(§§pop() * §§pop());
                  if(_loc3_)
                  {
                     addr89:
                     §§push(this.§84§.y);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
               }
               §§goto(addr64);
            }
            §§goto(addr89);
         }
         §§goto(addr64);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §>!3§() : Number
      {
         return this.§ !V§;
      }
      
      public function §;!8§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ !V§ = param1;
         }
      }
      
      public function §@!9§() : Number
      {
         return this.§@@§;
      }
      
      public function §`!d§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§@@§ = param1;
         }
      }
      
      public function §@!#§() : Number
      {
         return this.§`!X§;
      }
      
      public function §@!6§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`!X§ = param1;
         }
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
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::9!F;
         var _loc4_:b2Body = b2internal::[!n;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc18_ || _loc2_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc18_)
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc18_)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
               if(_loc18_)
               {
                  addr61:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(_loc2_.col1.x);
               if(!(_loc19_ && param1))
               {
                  §§push(_loc5_);
                  if(!(_loc19_ && _loc2_))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc18_ || _loc3_)
                     {
                        §§push(_loc2_.col2.x);
                        if(_loc18_)
                        {
                           addr94:
                           §§push(§§pop() * _loc6_);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc18_ || this)
                        {
                           addr105:
                           var _loc7_:* = Number(§§pop());
                           if(!(_loc19_ && this))
                           {
                              §§push(_loc2_.col1.y);
                              if(!(_loc19_ && param1))
                              {
                                 §§push(_loc5_);
                                 if(_loc18_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc19_)
                                    {
                                       §§push(_loc2_.col2.y);
                                       if(_loc18_)
                                       {
                                          addr134:
                                          §§push(§§pop() * _loc6_);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc19_ && this))
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc19_)
                                          {
                                             addr147:
                                             _loc6_ = §§pop();
                                             if(!(_loc19_ && _loc3_))
                                             {
                                                addr155:
                                                §§push(_loc7_);
                                                if(_loc18_)
                                                {
                                                   addr159:
                                                   _loc5_ = Number(§§pop());
                                                }
                                                §§goto(addr159);
                                             }
                                             _loc2_ = _loc4_.m_xf.R;
                                             §§push(this.m_localAnchor2.x);
                                             if(_loc18_)
                                             {
                                                §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                                if(!(_loc19_ && _loc2_))
                                                {
                                                   addr182:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc8_:* = §§pop();
                                                §§push(this.m_localAnchor2.y);
                                                if(!_loc19_)
                                                {
                                                   §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                                   if(_loc18_)
                                                   {
                                                      addr196:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc9_:* = §§pop();
                                                   if(_loc18_ || param1)
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
                                                               if(_loc18_ || _loc3_)
                                                               {
                                                                  §§push(_loc2_.col2);
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc9_);
                                                                        if(!(_loc19_ && param1))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc18_ || _loc2_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       addr344:
                                                                                       loop8:
                                                                                       while(true)
                                                                                       {
                                                                                          addr239:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_.col1);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                if(!(_loc18_ || this))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(_loc8_);
                                                                                                if(!(_loc19_ && _loc2_))
                                                                                                {
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   loop10:
                                                                                                   while(!_loc19_)
                                                                                                   {
                                                                                                      §§push(_loc2_.col2);
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      §§push(§§pop().y);
                                                                                                      if(_loc18_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(_loc9_);
                                                                                                               if(_loc18_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc19_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     loop11:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc18_ || param1)
                                                                                                                        {
                                                                                                                           _loc9_ = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue loop11;
                                                                                                                              }
                                                                                                                              continue loop10;
                                                                                                                              addr222:
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              if(_loc18_ || _loc2_)
                                                                                                                              {
                                                                                                                                 continue loop8;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr350:
                                                                                                                           §§push(_loc3_.m_angularVelocity);
                                                                                                                           if(!(_loc19_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 addr362:
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 break loop4;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           break loop6;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     break loop6;
                                                                                                                  }
                                                                                                               }
                                                                                                               break loop4;
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                   addr265:
                                                                                                }
                                                                                                §§goto(addr362);
                                                                                             }
                                                                                             §§goto(addr265);
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                    addr343:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              var _loc10_:* = §§pop();
                                                                              §§push(_loc3_.§;!A§.y);
                                                                              if(!(_loc19_ && this))
                                                                              {
                                                                                 §§push(_loc3_.m_angularVelocity);
                                                                                 if(!(_loc19_ && param1))
                                                                                 {
                                                                                    §§push(§§pop() * _loc5_);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc19_ && this))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              var _loc11_:* = §§pop();
                                                                              §§push(_loc4_.§;!A§.x);
                                                                              if(!(_loc19_ && _loc2_))
                                                                              {
                                                                                 §§push(_loc4_.m_angularVelocity);
                                                                                 if(_loc18_ || this)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(_loc18_ || param1)
                                                                                    {
                                                                                       addr432:
                                                                                       §§push(§§pop() * _loc9_);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc18_ || this)
                                                                                    {
                                                                                       addr452:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc12_:* = §§pop();
                                                                                    §§push(_loc4_.§;!A§.y);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(_loc4_.m_angularVelocity);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(§§pop() * _loc8_);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc19_ && this))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(this.§84§.x);
                                                                                    if(_loc18_ || param1)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          if(_loc18_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc18_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   addr507:
                                                                                                   §§push(this.§84§.y);
                                                                                                   if(!(_loc19_ && _loc2_))
                                                                                                   {
                                                                                                      addr523:
                                                                                                      §§push(_loc13_);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         addr520:
                                                                                                         §§push(§§pop() - _loc11_);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                      if(!(_loc19_ && this))
                                                                                                      {
                                                                                                         addr531:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc14_:* = §§pop();
                                                                                                      §§push(this.§'q§);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(-§§pop());
                                                                                                         if(!(_loc19_ && param1))
                                                                                                         {
                                                                                                            §§push(_loc14_);
                                                                                                            if(!(_loc19_ && this))
                                                                                                            {
                                                                                                               §§push(this.§%E§);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     addr568:
                                                                                                                     §§push(this.§]!7§);
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        addr564:
                                                                                                                        §§push(§§pop() * this.§6!h§);
                                                                                                                     }
                                                                                                                     §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        addr572:
                                                                                                                        var _loc15_:Number = §§pop();
                                                                                                                        if(_loc18_ || param1)
                                                                                                                        {
                                                                                                                           §§push(this);
                                                                                                                           §§push(this.§6!h§);
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + _loc15_);
                                                                                                                           }
                                                                                                                           §§pop().§6!h§ = §§pop();
                                                                                                                        }
                                                                                                                        §§push(_loc15_);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * this.§84§.x);
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        var _loc16_:* = §§pop();
                                                                                                                        §§push(_loc15_);
                                                                                                                        if(_loc18_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * this.§84§.y);
                                                                                                                           if(_loc18_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr618:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc17_:* = §§pop();
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(_loc3_.§;!A§);
                                                                                                                              loop13:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.§;!A§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    addr890:
                                                                                                                                    addr858:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_.§ c§);
                                                                                                                                       addr892:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc16_);
                                                                                                                                          addr893:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             addr894:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                addr895:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   addr896:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_.§;!A§);
                                                                                                                                                      continue loop13;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    loop22:
                                                                                                                                    while(!(_loc19_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       while(!_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.§ c§);
                                                                                                                                          loop24:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc17_);
                                                                                                                                             loop25:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                loop26:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   loop27:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                      loop28:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                         §§push(_loc3_.m_angularVelocity);
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.§"k§);
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc17_);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     addr842:
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
                                                                                                                                                                     loop29:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_.§;!A§);
                                                                                                                                                                        loop30:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc4_.§;!A§);
                                                                                                                                                                           addr769:
                                                                                                                                                                           while(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc18_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_.§ c§);
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                          while(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             loop34:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc19_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                      addr799:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   while(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop29;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc19_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop30;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr896);
                                                                                                                                                                                                         addr756:
                                                                                                                                                                                                         for(; _loc18_ || this; §§pop().m_angularVelocity = §§pop(),if(_loc18_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               return;
                                                                                                                                                                                                               addr674:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop28;
                                                                                                                                                                                                         })
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                                                                            §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                                            if(_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc4_.§"k§);
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc17_);
                                                                                                                                                                                                                  if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr663:
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr651:
                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                        if(!(_loc19_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr659:
                                                                                                                                                                                                                           §§push(§§pop() * _loc16_);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr659);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr651);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr663);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop34;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop27;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop26;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc17_);
                                                                                                                                                                                             if(_loc19_ && _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc19_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr740);
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr893);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr894);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop25;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr892);
                                                                                                                                                                                       §§goto(addr894);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr789);
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                                 addr706:
                                                                                                                                                                                 if(!(_loc18_ || _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc4_.§ c§);
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop24;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr740);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr895);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop22;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr842);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          if(!(_loc18_ || param1))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                          §§goto(addr756);
                                                                                                                                       }
                                                                                                                                       §§goto(addr890);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr674);
                                                                                                                        }
                                                                                                                        §§goto(addr618);
                                                                                                                     }
                                                                                                                     §§goto(addr572);
                                                                                                                  }
                                                                                                                  §§goto(addr568);
                                                                                                               }
                                                                                                               §§goto(addr564);
                                                                                                            }
                                                                                                            §§goto(addr568);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr572);
                                                                                                   }
                                                                                                   §§goto(addr523);
                                                                                                }
                                                                                                §§goto(addr531);
                                                                                             }
                                                                                             §§goto(addr523);
                                                                                          }
                                                                                          §§goto(addr520);
                                                                                       }
                                                                                       §§goto(addr523);
                                                                                    }
                                                                                    §§goto(addr507);
                                                                                 }
                                                                                 §§goto(addr432);
                                                                              }
                                                                              §§goto(addr452);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr350);
                                                                  }
                                                               }
                                                               §§goto(addr343);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr344);
                                                }
                                                §§goto(addr196);
                                             }
                                             §§goto(addr182);
                                          }
                                          §§goto(addr159);
                                       }
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr155);
                        }
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr94);
               }
               §§goto(addr105);
            }
            §§goto(addr61);
         }
         §§goto(addr47);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         if(_loc17_ || _loc3_)
         {
            if(this.§@@§ > 0)
            {
               if(_loc17_ || param1)
               {
                  §§goto(addr37);
               }
            }
            var _loc3_:b2Body = b2internal::9!F;
            var _loc4_:b2Body = b2internal::[!n;
            _loc2_ = _loc3_.m_xf.R;
            §§push(this.m_localAnchor1.x);
            if(!(_loc18_ && this))
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
               if(_loc17_)
               {
                  addr67:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(this.m_localAnchor1.y);
               if(!(_loc18_ && _loc2_))
               {
                  §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                  if(_loc17_)
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
                     if(_loc17_ || param1)
                     {
                        addr109:
                        §§push(_loc2_.col2.x);
                        if(_loc17_)
                        {
                           addr116:
                           §§push(§§pop() + §§pop() * _loc6_);
                           if(_loc17_)
                           {
                              addr119:
                              §§push(Number(§§pop()));
                           }
                           var _loc7_:* = §§pop();
                           if(_loc17_ || _loc3_)
                           {
                              §§push(_loc2_.col1.y);
                              if(!_loc18_)
                              {
                                 §§push(_loc5_);
                                 if(_loc17_)
                                 {
                                    addr173:
                                    addr174:
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc18_ && this))
                                    {
                                       §§push(_loc2_.col2.y);
                                       if(!(_loc18_ && _loc2_))
                                       {
                                          §§push(§§pop() * _loc6_);
                                       }
                                    }
                                    _loc5_ = Number(§§pop());
                                    _loc2_ = _loc4_.m_xf.R;
                                    §§push(this.m_localAnchor2.x);
                                    if(!_loc18_)
                                    {
                                       §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                       if(_loc17_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(this.m_localAnchor2.y);
                                    if(!(_loc18_ && this))
                                    {
                                       §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                       if(_loc17_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc9_:* = §§pop();
                                    if(!(_loc18_ && _loc3_))
                                    {
                                       §§push(_loc2_.col1);
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc17_)
                                          {
                                             §§push(_loc8_);
                                             if(_loc17_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc18_)
                                                {
                                                   §§push(_loc2_.col2);
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr333:
                                                      while(true)
                                                      {
                                                         §§push(_loc9_);
                                                         addr334:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr335:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc17_ || _loc2_)
                                                               {
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc18_ && _loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        continue loop0;
                                                                        addr246:
                                                                        if(_loc18_ && _loc2_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(false)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        addr384:
                                                                        addr384:
                                                                        §§push(_loc4_.m_sweep.c.x);
                                                                        if(_loc17_)
                                                                        {
                                                                           break loop5;
                                                                        }
                                                                        var _loc10_:* = §§pop();
                                                                        §§push(_loc4_.m_sweep.c.y);
                                                                        if(_loc17_ || _loc3_)
                                                                        {
                                                                           §§push(_loc9_);
                                                                           if(!(_loc18_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc18_ && _loc2_))
                                                                              {
                                                                                 addr412:
                                                                                 §§push(_loc3_.m_sweep.c.y);
                                                                                 if(!(_loc18_ && param1))
                                                                                 {
                                                                                    addr423:
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       addr427:
                                                                                       §§push(§§pop() - _loc6_);
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                       }
                                                                                       addr431:
                                                                                       var _loc11_:* = §§pop();
                                                                                       var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                                                                       if(_loc17_ || param1)
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          if(!(_loc18_ && _loc2_))
                                                                                          {
                                                                                             §§push(_loc12_);
                                                                                             if(!(_loc18_ && _loc2_))
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                if(!(_loc18_ && this))
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc17_ || _loc3_)
                                                                                                   {
                                                                                                      addr492:
                                                                                                      _loc10_ = §§pop();
                                                                                                      if(!(_loc18_ && param1))
                                                                                                      {
                                                                                                         addr500:
                                                                                                         §§push(_loc11_);
                                                                                                         if(!(_loc18_ && param1))
                                                                                                         {
                                                                                                            addr508:
                                                                                                            §§push(_loc12_);
                                                                                                            if(_loc17_ || _loc2_)
                                                                                                            {
                                                                                                               addr516:
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  addr519:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!(_loc18_ && this))
                                                                                                                  {
                                                                                                                     _loc11_ = §§pop();
                                                                                                                     addr528:
                                                                                                                     §§push(_loc12_);
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr542:
                                                                                                                     var _loc13_:* = §§pop();
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§push(b2Math);
                                                                                                                        §§push(_loc13_);
                                                                                                                        §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                        if(_loc17_ || this)
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                        }
                                                                                                                        §§push(§§pop().§ !X§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                                        if(!(_loc18_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              _loc13_ = §§pop();
                                                                                                                              addr571:
                                                                                                                              §§push(this.§'q§);
                                                                                                                              if(_loc17_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    addr583:
                                                                                                                                    §§push(§§pop() * _loc13_);
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr588:
                                                                                                                                    var _loc14_:* = §§pop();
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       this.§84§.Set(_loc10_,_loc11_);
                                                                                                                                    }
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * this.§84§.x);
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          addr605:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       var _loc15_:* = §§pop();
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * this.§84§.y);
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       var _loc16_:* = §§pop();
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.m_sweep);
                                                                                                                                          loop6:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().c);
                                                                                                                                             loop7:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_.m_sweep);
                                                                                                                                                loop8:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                   loop9:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      loop10:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_.§ c§);
                                                                                                                                                         loop11:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            loop12:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               loop13:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  loop14:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     loop15:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_.m_sweep);
                                                                                                                                                                        loop16:
                                                                                                                                                                        for(; _loc17_; while(_loc17_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr907);
                                                                                                                                                                           §§push(_loc3_.m_sweep);
                                                                                                                                                                        })
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().c);
                                                                                                                                                                           while(_loc17_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_.m_sweep);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().c);
                                                                                                                                                                                 addr946:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    addr947:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc3_.§ c§);
                                                                                                                                                                                       addr949:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                          addr950:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             addr951:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                addr952:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                   addr953:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc3_.m_sweep);
                                                                                                                                                                                                      continue loop16;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr759:
                                                                                                                                                                              if(!(_loc17_ || this))
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc4_.m_sweep);
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr772:
                                                                                                                                                                                    §§push(§§pop().c);
                                                                                                                                                                                    if(!(_loc18_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc17_ || _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop10;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc4_.§ c§);
                                                                                                                                                                                                if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr815:
                                                                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                                                                      if(!(_loc18_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc17_ || _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop12;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr833:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr838:
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                     loop49:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop16;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().a);
                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc4_.§"k§);
                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc17_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                             if(_loc17_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc17_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr717:
                                                                                                                                                                                                                                                               if(_loc17_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr728:
                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr732:
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr735:
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           if(_loc17_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().a = §§pop();
                                                                                                                                                                                                                                                                              loop50:
                                                                                                                                                                                                                                                                              while(!(_loc18_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc3_.§+!X§();
                                                                                                                                                                                                                                                                                    addr649:
                                                                                                                                                                                                                                                                                    loop47:
                                                                                                                                                                                                                                                                                    while(_loc17_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                                                                       loop48:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr848:
                                                                                                                                                                                                                                                                                             §§push(§§pop().c);
                                                                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr759);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(_loc17_ || param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop().c);
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc4_.§ c§);
                                                                                                                                                                                                                                                                                                            while(_loc17_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                  addr874:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                           break loop48;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr949);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop11;
                                                                                                                                                                                                                                                                                                                  §§goto(addr815);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop13;
                                                                                                                                                                                                                                                                                                            addr870:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr952);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      break loop48;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                   §§goto(addr772);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop9;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop8;
                                                                                                                                                                                                                                                                                             addr848:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop().c);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr845:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr848);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop49;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                          §§goto(addr649);
                                                                                                                                                                                                                                                                                          continue loop47;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop14;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc4_.§+!X§();
                                                                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc18_ && _loc2_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop50;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop49;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr645);
                                                                                                                                                                                                                                                                                          continue loop50;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr927:
                                                                                                                                                                                                                                                                                    while(!_loc18_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr845);
                                                                                                                                                                                                                                                                                       §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop15;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 return b2Math.§71§(_loc13_) < b2Settings.b2_linearSlop;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr953);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc3_.§"k§);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr908:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                                                                                                                           if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 break loop49;
                                                                                                                                                                                                                                                                                 §§goto(addr717);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr919:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           break loop49;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     addr923:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                        addr924:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           addr925:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                              addr926:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§pop().a = §§pop();
                                                                                                                                                                                                                                                                                 §§goto(addr927);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr922:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr919);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr922);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr921:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr728);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr924);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr728);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr923);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr728);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr925);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr732);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr926);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr735);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr907:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr908);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr754);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr921);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr947);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr951);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr870);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr950);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr873);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr874);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr833);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr884);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr838);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr946);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr856);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr945);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr848);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop7;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop6;
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
                                                                                                                                       §§goto(addr750);
                                                                                                                                    }
                                                                                                                                    §§goto(addr605);
                                                                                                                                 }
                                                                                                                                 §§goto(addr588);
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr583);
                                                                                                                     }
                                                                                                                     §§goto(addr571);
                                                                                                                  }
                                                                                                                  addr533:
                                                                                                                  §§push(§§pop() - this.§ !V§);
                                                                                                                  if(!(_loc18_ && this))
                                                                                                                  {
                                                                                                                     addr541:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr542);
                                                                                                            }
                                                                                                            §§goto(addr533);
                                                                                                         }
                                                                                                         §§goto(addr519);
                                                                                                      }
                                                                                                      §§goto(addr528);
                                                                                                   }
                                                                                                   §§goto(addr508);
                                                                                                }
                                                                                                §§goto(addr541);
                                                                                             }
                                                                                             §§goto(addr516);
                                                                                          }
                                                                                          §§goto(addr492);
                                                                                       }
                                                                                       §§goto(addr500);
                                                                                    }
                                                                                    §§goto(addr431);
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              §§goto(addr427);
                                                                           }
                                                                           §§goto(addr423);
                                                                        }
                                                                        §§goto(addr412);
                                                                     }
                                                                  }
                                                                  addr380:
                                                                  §§push(_loc8_);
                                                                  if(!_loc18_)
                                                                  {
                                                                     addr362:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc18_)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     addr383:
                                                                     §§goto(addr384);
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§goto(addr383);
                                                                  }
                                                                  §§goto(addr384);
                                                                  addr343:
                                                               }
                                                               break;
                                                            }
                                                            addr379:
                                                            §§goto(addr380);
                                                         }
                                                      }
                                                   }
                                                   addr332:
                                                }
                                                §§goto(addr343);
                                             }
                                             §§goto(addr362);
                                          }
                                          break;
                                       }
                                       §§push(_loc3_.m_sweep.c.x);
                                       if(!(_loc18_ && this))
                                       {
                                          §§goto(addr376);
                                       }
                                       §§goto(addr380);
                                    }
                                    §§goto(addr352);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc18_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc17_)
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc17_)
                                       {
                                          addr165:
                                          §§push(_loc7_);
                                          if(!(_loc18_ && this))
                                          {
                                             §§goto(addr173);
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr173);
                                    }
                                 }
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr116);
               }
               §§goto(addr109);
            }
            §§goto(addr67);
         }
         addr37:
         return true;
      }
   }
}
