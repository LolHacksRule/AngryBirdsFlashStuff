package §"d§
{
   import §3!R§.b2Body;
   import §3!R§.b2TimeStep;
   import §6A§.b2Mat22;
   import §6A§.b2Math;
   import §6A§.b2Vec2;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §6!6§:b2Vec2;
      
      private var §26§:Number;
      
      private var §1b§:Number;
      
      private var §-!'§:Number;
      
      private var §1M§:Number;
      
      private var §12§:Number;
      
      private var §`!6§:Number;
      
      private var §,9§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_ || _loc3_)
         {
            this.m_localAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§6!6§ = new b2Vec2();
                  while(true)
                  {
                     super(param1);
                     addr89:
                     loop8:
                     while(_loc5_ || this)
                     {
                        this.§12§ = 0;
                        loop9:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              this.§-!'§ = 0;
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    if(!_loc6_)
                                    {
                                       continue;
                                    }
                                    continue loop1;
                                 }
                                 continue loop8;
                              }
                              loop6:
                              while(true)
                              {
                                 this.§26§ = param1.§&!a§;
                                 do
                                 {
                                    if(_loc6_)
                                    {
                                       break loop6;
                                    }
                                    continue loop0;
                                 }
                                 while(!_loc5_);
                                 
                                 return;
                              }
                              while(true)
                              {
                                 this.m_localAnchor1.SetV(param1.§@b§);
                                 addr133:
                                 while(true)
                                 {
                                    this.m_localAnchor2.SetV(param1.§=i§);
                                    break loop9;
                                 }
                              }
                              addr117:
                              addr138:
                           }
                           break;
                           if(_loc6_ && _loc2_)
                           {
                              continue;
                           }
                           §§goto(addr53);
                        }
                        while(!_loc6_)
                        {
                           this.§,9§ = param1.length;
                           §§goto(addr117);
                        }
                        §§goto(addr133);
                     }
                  }
               }
            }
         }
         §§goto(addr138);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!`.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§12§);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && this))
               {
                  §§push(this.§6!6§.x);
                  if(!(_loc3_ && _loc2_))
                  {
                     addr53:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(!(_loc3_ && _loc2_))
                     {
                        addr61:
                        §§push(this.§12§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc2_ || this)
                           {
                              addr91:
                              §§push(§§pop() * this.§6!6§.y);
                           }
                           return new §§pop().b2Vec2(§§pop(),§§pop());
                        }
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr61);
               }
            }
         }
         §§goto(addr53);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §+x§() : Number
      {
         return this.§,9§;
      }
      
      public function §-!Z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§,9§ = param1;
         }
      }
      
      public function §[!a§() : Number
      {
         return this.§26§;
      }
      
      public function §+>§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§26§ = param1;
         }
      }
      
      public function §">§() : Number
      {
         return this.§1b§;
      }
      
      public function §3R§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§1b§ = param1;
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
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::#A;
         var _loc4_:b2Body = b2internal::2!`;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc18_ && _loc3_))
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc19_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc18_ && _loc3_))
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
            if(!_loc18_)
            {
               addr67:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(_loc19_)
            {
               §§push(_loc5_);
               if(_loc19_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc18_)
                  {
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
                     if(!_loc18_)
                     {
                        §§push(_loc2_.col1.y);
                        if(_loc19_)
                        {
                           §§push(_loc5_);
                           if(!_loc18_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc19_)
                              {
                                 addr105:
                                 §§push(_loc2_.col2.y);
                                 if(_loc19_)
                                 {
                                    addr110:
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc18_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc18_ && _loc3_))
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc19_ || _loc3_)
                                       {
                                          §§push(_loc7_);
                                          if(_loc18_ && _loc2_)
                                          {
                                          }
                                          addr140:
                                          _loc5_ = §§pop();
                                          addr141:
                                          _loc2_ = _loc4_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(_loc19_ || this)
                                          {
                                             §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                             if(_loc19_ || this)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc8_:* = §§pop();
                                          §§push(this.m_localAnchor2.y);
                                          if(_loc19_ || _loc3_)
                                          {
                                             §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                             if(!_loc18_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc9_:* = §§pop();
                                          if(_loc19_)
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
                                                   if(_loc19_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc19_)
                                                      {
                                                         §§push(_loc2_.col2);
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc19_)
                                                            {
                                                               addr364:
                                                               §§push(_loc9_);
                                                               if(_loc19_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc18_ && param1))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr341:
                                                                        loop3:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!_loc18_)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 addr233:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.col1);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    if(_loc19_ || param1)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              addr345:
                                                                           }
                                                                           addr351:
                                                                           §§push(_loc3_.m_angularVelocity);
                                                                           if(_loc19_ || _loc2_)
                                                                           {
                                                                           }
                                                                           break loop2;
                                                                        }
                                                                     }
                                                                     addr340:
                                                                  }
                                                                  §§push(-§§pop());
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(_loc6_);
                                                                  }
                                                                  break;
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                               break;
                                                            }
                                                            break;
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.col2);
                                                               if(!(_loc18_ && param1))
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(!(_loc18_ && param1))
                                                                  {
                                                                     §§push(_loc9_);
                                                                     if(_loc19_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc18_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              if(_loc19_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!(_loc18_ && param1))
                                                                                 {
                                                                                    _loc9_ = §§pop();
                                                                                    loop8:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(!(_loc19_ || param1))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!(_loc19_ || _loc3_))
                                                                                          {
                                                                                             break loop7;
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                       §§goto(addr345);
                                                                                       addr223:
                                                                                       _loc8_ = §§pop();
                                                                                       if(!(_loc19_ || param1))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             §§push(_loc3_.§@S§.x);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                break loop8;
                                                                                             }
                                                                                             break loop7;
                                                                                          }
                                                                                          §§goto(addr233);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr351);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           addr374:
                                                                           var _loc10_:* = §§pop();
                                                                           §§push(_loc3_.§@S§.y);
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(_loc3_.m_angularVelocity);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§push(§§pop() * _loc5_);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc18_ && param1))
                                                                              {
                                                                                 addr394:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc11_:* = §§pop();
                                                                              §§push(_loc4_.§@S§.x);
                                                                              if(_loc19_)
                                                                              {
                                                                                 §§push(_loc4_.m_angularVelocity);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       §§push(§§pop() * _loc9_);
                                                                                    }
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc18_ && param1))
                                                                                 {
                                                                                    addr418:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc12_:* = §§pop();
                                                                                 §§push(_loc4_.§@S§.y);
                                                                                 if(!(_loc18_ && param1))
                                                                                 {
                                                                                    §§push(_loc4_.m_angularVelocity);
                                                                                    if(!(_loc18_ && this))
                                                                                    {
                                                                                       §§push(§§pop() * _loc8_);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       addr454:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(this.§6!6§.x);
                                                                                    if(_loc19_ || _loc2_)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(this.§6!6§.y);
                                                                                                   if(!(_loc18_ && _loc3_))
                                                                                                   {
                                                                                                      addr499:
                                                                                                      §§push(_loc13_);
                                                                                                      if(!(_loc18_ && this))
                                                                                                      {
                                                                                                         addr496:
                                                                                                         §§push(§§pop() - _loc11_);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         addr502:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr499);
                                                                                                }
                                                                                                var _loc14_:* = §§pop();
                                                                                                §§push(this.§`!6§);
                                                                                                if(!(_loc18_ && _loc3_))
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   if(_loc19_ || this)
                                                                                                   {
                                                                                                      §§push(_loc14_);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(this.§1M§);
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            addr539:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               §§push(this.§-!'§);
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * this.§12§);
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc19_ || _loc3_)
                                                                                                            {
                                                                                                               addr547:
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc15_:* = §§pop();
                                                                                                            if(!(_loc18_ && this))
                                                                                                            {
                                                                                                               §§push(this);
                                                                                                               §§push(this.§12§);
                                                                                                               if(_loc19_ || param1)
                                                                                                               {
                                                                                                                  §§push(§§pop() + _loc15_);
                                                                                                               }
                                                                                                               §§pop().§12§ = §§pop();
                                                                                                            }
                                                                                                            §§push(_loc15_);
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               §§push(§§pop() * this.§6!6§.x);
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  addr578:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc16_:* = §§pop();
                                                                                                               §§push(_loc15_);
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * this.§6!6§.y);
                                                                                                                  if(_loc19_ || param1)
                                                                                                                  {
                                                                                                                     addr594:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  var _loc17_:* = §§pop();
                                                                                                                  if(!(_loc18_ && this))
                                                                                                                  {
                                                                                                                     §§push(_loc3_.§@S§);
                                                                                                                     loop11:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.§@S§);
                                                                                                                        loop12:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           loop13:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_.§",§);
                                                                                                                              loop14:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc16_);
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
                                                                                                                                             §§push(_loc3_.§@S§);
                                                                                                                                             loop19:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_.§@S§);
                                                                                                                                                loop20:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                   loop21:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_.§",§);
                                                                                                                                                      loop22:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                         loop23:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            loop24:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               loop25:
                                                                                                                                                               while(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                  loop26:
                                                                                                                                                                  for(; _loc19_ || _loc3_; if(!(_loc19_ || param1))
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  },§§goto(addr655))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     §§push(_loc3_.m_angularVelocity);
                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_.§-2§);
                                                                                                                                                                        if(_loc19_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                              if(!(_loc18_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr850:
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    if(_loc19_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr847:
                                                                                                                                                                                       §§push(§§pop() * _loc16_);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().m_angularVelocity = §§pop() - §§pop() * (§§pop() - §§pop());
                                                                                                                                                                                    loop27:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc4_.§@S§);
                                                                                                                                                                                       loop28:
                                                                                                                                                                                       while(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop11;
                                                                                                                                                                                          loop34:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc4_.§@S§);
                                                                                                                                                                                             if(_loc18_ && _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop28;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc4_.§@S§);
                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(!(_loc18_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop12;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop20;
                                                                                                                                                                                                addr749:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                             if(_loc19_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop17;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc4_.§",§);
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc19_ || param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop24;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr695:
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(!(_loc19_ || _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                         addr801:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr703:
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr710:
                                                                                                                                                                                                         if(_loc19_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc19_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                               while(_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop27;
                                                                                                                                                                                                                  §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                  if(!(_loc18_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop26;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop25;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc4_.§",§);
                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop34;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc19_ || param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                               addr771:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                            while(!(_loc18_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc19_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  break loop34;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop15;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop23;
                                                                                                                                                                                                            §§goto(addr710);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop14;
                                                                                                                                                                                                         addr759:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                         continue loop34;
                                                                                                                                                                                                         §§goto(addr703);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop21;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr771);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr695);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr703);
                                                                                                                                                                                             §§goto(addr759);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(_loc19_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc19_ || _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop16;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr801);
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop22;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop19;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr850);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr847);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr850);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop18;
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
                                                                                                                  }
                                                                                                                  §§goto(addr734);
                                                                                                               }
                                                                                                               §§goto(addr594);
                                                                                                            }
                                                                                                            §§goto(addr578);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§goto(addr539);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr547);
                                                                                             }
                                                                                             §§goto(addr499);
                                                                                          }
                                                                                          §§goto(addr496);
                                                                                       }
                                                                                       §§goto(addr499);
                                                                                    }
                                                                                    §§goto(addr502);
                                                                                 }
                                                                                 §§goto(addr454);
                                                                              }
                                                                              §§goto(addr418);
                                                                           }
                                                                           §§goto(addr394);
                                                                        }
                                                                        break loop2;
                                                                     }
                                                                     §§goto(addr364);
                                                                  }
                                                                  break loop2;
                                                               }
                                                               continue loop2;
                                                               if(!(_loc19_ || _loc2_))
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr223);
                                                            }
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc18_ && this))
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         §§goto(addr374);
                                                      }
                                                      §§goto(addr341);
                                                   }
                                                   §§goto(addr340);
                                                }
                                             }
                                          }
                                          §§goto(addr231);
                                       }
                                       §§goto(addr141);
                                    }
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr90);
               }
               §§goto(addr85);
            }
            §§goto(addr90);
         }
         §§goto(addr67);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         if(!_loc18_)
         {
            if(this.§26§ > 0)
            {
               if(_loc17_)
               {
                  §§goto(addr27);
               }
            }
            var _loc3_:b2Body = b2internal::#A;
            var _loc4_:b2Body = b2internal::2!`;
            _loc2_ = _loc3_.m_xf.R;
            §§push(this.m_localAnchor1.x);
            if(_loc17_ || _loc2_)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
               if(_loc17_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc17_ || _loc2_)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
               if(_loc17_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(_loc17_ || _loc3_)
            {
               §§push(_loc5_);
               if(_loc17_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc18_ && _loc3_))
                  {
                     addr109:
                     §§push(_loc2_.col2.x);
                     if(!_loc18_)
                     {
                        addr114:
                        §§push(§§pop() * _loc6_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc17_ || _loc3_)
                     {
                        addr124:
                        §§push(Number(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     if(_loc17_ || _loc3_)
                     {
                        §§push(_loc2_.col1.y);
                        if(!(_loc18_ && _loc2_))
                        {
                           §§push(_loc5_);
                           if(_loc17_ || _loc2_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc17_ || _loc2_)
                              {
                                 §§push(_loc2_.col2.y);
                                 if(!_loc18_)
                                 {
                                    addr164:
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc18_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc18_)
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc17_ || this)
                                       {
                                          addr180:
                                          §§push(_loc7_);
                                          if(!_loc18_)
                                          {
                                             addr184:
                                             _loc5_ = Number(§§pop());
                                          }
                                          §§goto(addr184);
                                       }
                                       _loc2_ = _loc4_.m_xf.R;
                                       §§push(this.m_localAnchor2.x);
                                       if(_loc17_)
                                       {
                                          §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                          if(!(_loc18_ && _loc3_))
                                          {
                                             addr207:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc8_:* = §§pop();
                                          §§push(this.m_localAnchor2.y);
                                          if(!_loc18_)
                                          {
                                             §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                             if(_loc17_ || _loc2_)
                                             {
                                                addr226:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc9_:* = §§pop();
                                             if(!(_loc18_ && this))
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
                                                               if(!(_loc18_ && this))
                                                               {
                                                                  §§push(_loc9_);
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc18_ && _loc2_))
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              loop5:
                                                                              while(true)
                                                                              {
                                                                                 addr267:
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.col1);
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    if(_loc17_ || param1)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!(_loc18_ && this))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc18_ && _loc3_))
                                                                                          {
                                                                                             §§push(_loc2_.col2);
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(_loc18_ && param1)
                                                                                                {
                                                                                                   break loop3;
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                       }
                                                                                       break loop2;
                                                                                    }
                                                                                    addr330:
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc17_ || this))
                                                                                       {
                                                                                          break loop6;
                                                                                       }
                                                                                       _loc9_ = §§pop();
                                                                                       do
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          _loc8_ = §§pop();
                                                                                       }
                                                                                       while(!_loc17_);
                                                                                       
                                                                                       continue loop5;
                                                                                    }
                                                                                    var _loc10_:* = §§pop();
                                                                                    §§push(_loc4_.m_sweep.c.y);
                                                                                    if(_loc17_ || this)
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(!(_loc18_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc18_ && param1))
                                                                                          {
                                                                                             §§push(_loc3_.m_sweep.c.y);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                addr453:
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(_loc17_ || _loc2_)
                                                                                                {
                                                                                                   addr462:
                                                                                                   §§push(§§pop() - _loc6_);
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                var _loc11_:* = §§pop();
                                                                                                var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                                                                                if(!(_loc18_ && this))
                                                                                                {
                                                                                                   §§push(_loc10_);
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      §§push(_loc12_);
                                                                                                      if(!(_loc18_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(_loc17_ || param1)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               addr517:
                                                                                                               _loc10_ = §§pop();
                                                                                                               if(_loc17_ || this)
                                                                                                               {
                                                                                                                  addr525:
                                                                                                                  §§push(_loc11_);
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     addr528:
                                                                                                                     §§push(_loc12_);
                                                                                                                     if(!(_loc18_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           addr539:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              _loc11_ = §§pop();
                                                                                                                              addr543:
                                                                                                                              §§push(_loc12_);
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 addr548:
                                                                                                                                 §§push(§§pop() - this.§,9§);
                                                                                                                                 if(_loc17_ || this)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr557:
                                                                                                                                 var _loc13_:* = §§pop();
                                                                                                                                 if(!(_loc18_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(b2Math);
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(-§§pop());
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().§>I§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          _loc13_ = §§pop();
                                                                                                                                          addr581:
                                                                                                                                          §§push(this.§`!6§);
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(-§§pop());
                                                                                                                                             if(!(_loc18_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr593:
                                                                                                                                                §§push(§§pop() * _loc13_);
                                                                                                                                                if(_loc17_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr602:
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             var _loc14_:* = §§pop();
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                this.§6!6§.Set(_loc10_,_loc11_);
                                                                                                                                             }
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(_loc17_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * this.§6!6§.x);
                                                                                                                                                if(!(_loc18_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr630:
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                var _loc15_:* = §§pop();
                                                                                                                                                §§push(_loc14_);
                                                                                                                                                if(!(_loc18_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * this.§6!6§.y);
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      addr646:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   var _loc16_:* = §§pop();
                                                                                                                                                   if(!(_loc18_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr1021:
                                                                                                                                                      _loc3_.m_sweep.c.x -= _loc3_.§",§ * _loc15_;
                                                                                                                                                      addr1016:
                                                                                                                                                   }
                                                                                                                                                   addr1022:
                                                                                                                                                   §§push(_loc3_.m_sweep.c);
                                                                                                                                                   §§push(_loc3_.m_sweep.c.y);
                                                                                                                                                   if(!(_loc18_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr986:
                                                                                                                                                      §§push(_loc3_.§",§);
                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                      if(!(_loc18_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         addr994:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            addr997:
                                                                                                                                                            §§pop().y = §§pop() - §§pop();
                                                                                                                                                            addr966:
                                                                                                                                                            addr940:
                                                                                                                                                            addr938:
                                                                                                                                                            §§push(_loc3_.m_sweep);
                                                                                                                                                            §§push(_loc3_.m_sweep.a);
                                                                                                                                                            if(_loc17_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr950:
                                                                                                                                                               §§push(_loc3_.§-2§);
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                               if(_loc17_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr960:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() - §§pop() * (§§pop() - §§pop() * _loc15_));
                                                                                                                                                            }
                                                                                                                                                            §§pop().a = §§pop();
                                                                                                                                                            addr998:
                                                                                                                                                            addr967:
                                                                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                                                                            if(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc17_)
                                                                                                                                                               {
                                                                                                                                                                  addr883:
                                                                                                                                                                  §§push(§§pop().c);
                                                                                                                                                                  if(!(_loc18_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc18_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr899:
                                                                                                                                                                        §§push(_loc4_.m_sweep);
                                                                                                                                                                        if(!(_loc18_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr907:
                                                                                                                                                                           §§push(§§pop().c);
                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              addr910:
                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                              if(!(_loc18_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc17_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr926:
                                                                                                                                                                                    §§push(_loc4_.§",§);
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr930:
                                                                                                                                                                                       §§push(§§pop() * _loc15_);
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr933:
                                                                                                                                                                                          §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                          addr934:
                                                                                                                                                                                          §§push(_loc4_.m_sweep);
                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().c);
                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc4_.m_sweep);
                                                                                                                                                                                                if(_loc17_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().c);
                                                                                                                                                                                                      if(_loc17_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                            if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc18_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc4_.§",§);
                                                                                                                                                                                                                     if(_loc17_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr859:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr864:
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                                                                          addr867:
                                                                                                                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                             if(_loc17_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().a);
                                                                                                                                                                                                                                                      if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc17_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc4_.§-2§);
                                                                                                                                                                                                                                                            if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                                                                                                                  if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                                                                        if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              if(_loc17_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr763:
                                                                                                                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                                                                                                                       if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr774:
                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr780:
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr788:
                                                                                                                                                                                                                                                                                                   §§pop().a = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                                   addr789:
                                                                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc3_.§-W§();
                                                                                                                                                                                                                                                                                                            _loc4_.§-W§();
                                                                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc17_ || _loc2_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr867);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  return b2Math.§!V§(_loc13_) < b2Settings.b2_linearSlop;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr789);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr684:
                                                                                                                                                                                                                                                                                                            §§goto(addr684);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr998);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr967);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr934);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr950);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr960);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr950);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr774);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr950);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr763);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr950);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr774);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr950);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr780);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr966);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr788);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr940);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr966);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr934);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1022);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr933);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr994);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr930);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr986);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr930);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr926);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr859);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1016);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr910);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr864);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1022);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr907);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1016);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr899);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr883);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1022);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr986);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1016);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1021);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr997);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1021);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1022);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1021);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1022);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1021);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr938);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1021);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr997);
                                                                                                                                                }
                                                                                                                                                §§goto(addr646);
                                                                                                                                             }
                                                                                                                                             §§goto(addr630);
                                                                                                                                          }
                                                                                                                                          §§goto(addr593);
                                                                                                                                       }
                                                                                                                                       §§goto(addr602);
                                                                                                                                    }
                                                                                                                                    §§goto(addr593);
                                                                                                                                 }
                                                                                                                                 §§goto(addr581);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr557);
                                                                                                                        }
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr548);
                                                                                                               }
                                                                                                               §§goto(addr543);
                                                                                                            }
                                                                                                            §§goto(addr528);
                                                                                                         }
                                                                                                         §§goto(addr517);
                                                                                                      }
                                                                                                      §§goto(addr548);
                                                                                                   }
                                                                                                   §§goto(addr539);
                                                                                                }
                                                                                                §§goto(addr525);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr462);
                                                                                       }
                                                                                       §§goto(addr453);
                                                                                    }
                                                                                    §§goto(addr462);
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              addr372:
                                                                           }
                                                                           break;
                                                                           addr322:
                                                                           if(!(_loc17_ || this))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr330);
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        addr409:
                                                                        §§goto(addr410);
                                                                        §§push(_loc5_);
                                                                        addr363:
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr387:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc17_ || param1)
                                                                  {
                                                                     §§goto(addr395);
                                                                  }
                                                                  §§goto(addr409);
                                                               }
                                                               break;
                                                            }
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc18_)
                                                            {
                                                               §§goto(addr409);
                                                            }
                                                            §§goto(addr419);
                                                         }
                                                         §§goto(addr363);
                                                      }
                                                      §§goto(addr387);
                                                   }
                                                }
                                             }
                                             §§goto(addr372);
                                          }
                                          §§goto(addr226);
                                       }
                                       §§goto(addr207);
                                    }
                                    §§goto(addr184);
                                 }
                              }
                              §§goto(addr184);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr124);
               }
               §§goto(addr114);
            }
            §§goto(addr109);
         }
         addr27:
         return true;
      }
   }
}
