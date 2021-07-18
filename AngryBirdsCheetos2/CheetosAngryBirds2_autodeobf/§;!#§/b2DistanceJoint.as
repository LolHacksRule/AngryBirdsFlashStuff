package §;!#§
{
   import § o§.b2Body;
   import § o§.b2TimeStep;
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §6!H§.b2Mat22;
   import §6!H§.b2Math;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §'z§:b2Vec2;
      
      private var § A§:Number;
      
      private var §"&§:Number;
      
      private var §]!F§:Number;
      
      private var §'k§:Number;
      
      private var §==§:Number;
      
      private var §>§:Number;
      
      private var §%!%§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_ || param1)
         {
            this.m_localAnchor1 = new b2Vec2();
         }
         while(true)
         {
            this.m_localAnchor2 = new b2Vec2();
            while(_loc5_ || _loc3_)
            {
               this.§'z§ = new b2Vec2();
               while(true)
               {
                  super(param1);
                  loop3:
                  while(true)
                  {
                     this.m_localAnchor1.SetV(param1.§!!U§);
                     loop4:
                     while(true)
                     {
                        this.m_localAnchor2.SetV(param1.§"!'§);
                        addr132:
                        while(_loc5_)
                        {
                           this.§%!%§ = param1.length;
                           continue loop4;
                        }
                        continue loop3;
                     }
                  }
                  if(!(_loc5_ || this))
                  {
                     continue;
                  }
                  this.§==§ = 0;
                  §§goto(addr67);
               }
               if(!(_loc5_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr62);
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::3D.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§==§);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || this)
               {
                  §§push(this.§'z§.x);
                  if(_loc3_ || _loc3_)
                  {
                     addr54:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc3_)
                     {
                        addr57:
                        §§push(this.§==§);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc2_)
                           {
                              addr82:
                              §§push(§§pop() * this.§'z§.y);
                           }
                           return new §§pop().b2Vec2(§§pop(),§§pop());
                        }
                        §§goto(addr82);
                     }
                  }
                  §§goto(addr82);
               }
               §§goto(addr54);
            }
            §§goto(addr57);
         }
         §§goto(addr54);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §9M§() : Number
      {
         return this.§%!%§;
      }
      
      public function §&"§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§%!%§ = param1;
         }
      }
      
      public function §?1§() : Number
      {
         return this.§ A§;
      }
      
      public function §`!=§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§ A§ = param1;
         }
      }
      
      public function §9o§() : Number
      {
         return this.§"&§;
      }
      
      public function §61§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§"&§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::6z;
         var _loc4_:b2Body = b2internal::3D;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc18_ && this))
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(!_loc18_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc18_ && param1))
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
            if(!_loc18_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc2_.col1.x);
         if(!_loc18_)
         {
            §§push(_loc5_);
            if(!(_loc18_ && this))
            {
               §§push(§§pop() * §§pop());
               if(_loc19_ || _loc3_)
               {
                  addr90:
                  §§push(_loc2_.col2.x);
                  if(!_loc18_)
                  {
                     addr97:
                     §§push(§§pop() + §§pop() * _loc6_);
                     if(!_loc18_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr97);
               }
               var _loc7_:* = §§pop();
               if(_loc19_ || this)
               {
                  §§push(_loc2_.col1.y);
                  if(_loc19_)
                  {
                     §§push(_loc5_);
                     if(!(_loc18_ && _loc2_))
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc18_ && param1))
                        {
                           §§push(_loc2_.col2.y);
                           if(_loc19_)
                           {
                              addr137:
                              §§push(§§pop() + §§pop() * _loc6_);
                              if(_loc19_)
                              {
                                 addr140:
                                 §§push(Number(§§pop()));
                                 if(_loc19_)
                                 {
                                    _loc6_ = §§pop();
                                    if(_loc19_)
                                    {
                                       addr146:
                                       §§push(_loc7_);
                                       if(_loc19_)
                                       {
                                          addr150:
                                          _loc5_ = Number(§§pop());
                                       }
                                       §§goto(addr150);
                                    }
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
                                    if(!(_loc18_ && _loc3_))
                                    {
                                       §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                       if(_loc19_)
                                       {
                                          addr187:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc9_:* = §§pop();
                                       if(!(_loc18_ && _loc2_))
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
                                                   if(_loc19_ || this)
                                                   {
                                                      §§push(_loc2_.col2);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr331:
                                                         addr354:
                                                         loop3:
                                                         while(true)
                                                         {
                                                            §§push(_loc9_);
                                                            if(!_loc19_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc19_)
                                                               {
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     addr340:
                                                                     addr264:
                                                                     while(true)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     if(!(_loc18_ && this))
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                               }
                                                               addr249:
                                                               if(!(_loc19_ || _loc2_))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc19_ || param1))
                                                               {
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     addr313:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(_loc19_ || this)
                                                                        {
                                                                           if(!_loc19_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc18_ && this))
                                                                           {
                                                                              addr216:
                                                                              if(_loc18_ && _loc2_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       §§goto(addr249);
                                                                                    }
                                                                                    §§goto(addr216);
                                                                                 }
                                                                                 continue loop4;
                                                                                 addr246:
                                                                              }
                                                                              _loc8_ = §§pop();
                                                                              if(!(_loc19_ || _loc3_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc18_)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    §§push(_loc3_.§2!@§.x);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       addr346:
                                                                                       §§push(_loc3_.m_angularVelocity);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          addr350:
                                                                                          §§push(-§§pop());
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             addr353:
                                                                                             §§push(_loc6_);
                                                                                             break loop3;
                                                                                          }
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          break loop1;
                                                                                       }
                                                                                       break loop4;
                                                                                    }
                                                                                 }
                                                                                 continue loop0;
                                                                                 break loop1;
                                                                              }
                                                                              §§goto(addr340);
                                                                              §§goto(addr350);
                                                                           }
                                                                           §§goto(addr346);
                                                                        }
                                                                        break loop1;
                                                                     }
                                                                  }
                                                                  addr312:
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                            var _loc10_:* = §§pop();
                                                            §§push(_loc3_.§2!@§.y);
                                                            if(_loc19_)
                                                            {
                                                               §§push(_loc3_.m_angularVelocity);
                                                               if(!(_loc18_ && param1))
                                                               {
                                                                  §§push(§§pop() * _loc5_);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc19_)
                                                               {
                                                                  addr379:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(_loc4_.§2!@§.x);
                                                               if(_loc19_)
                                                               {
                                                                  §§push(_loc4_.m_angularVelocity);
                                                                  if(_loc19_ || _loc2_)
                                                                  {
                                                                     §§push(-§§pop());
                                                                     if(_loc19_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() * _loc9_);
                                                                     }
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc19_)
                                                                  {
                                                                     addr408:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc12_:* = §§pop();
                                                                  §§push(_loc4_.§2!@§.y);
                                                                  if(_loc19_)
                                                                  {
                                                                     §§push(_loc4_.m_angularVelocity);
                                                                     if(!(_loc18_ && param1))
                                                                     {
                                                                        §§push(§§pop() * _loc8_);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc19_ || param1)
                                                                     {
                                                                        addr444:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc13_:* = §§pop();
                                                                     §§push(this.§'z§.x);
                                                                     if(!(_loc18_ && param1))
                                                                     {
                                                                        §§push(_loc12_);
                                                                        if(!(_loc18_ && _loc3_))
                                                                        {
                                                                           §§push(_loc10_);
                                                                           if(!_loc18_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§push(this.§'z§.y);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       addr478:
                                                                                       §§push(_loc13_);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          addr483:
                                                                                          addr484:
                                                                                          §§push(§§pop() + §§pop() * (§§pop() - _loc11_));
                                                                                          if(_loc19_ || this)
                                                                                          {
                                                                                          }
                                                                                          var _loc14_:* = §§pop();
                                                                                          §§push(this.§>§);
                                                                                          if(_loc19_ || param1)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(!(_loc18_ && _loc3_))
                                                                                             {
                                                                                                §§push(_loc14_);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(this.§'k§);
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         addr521:
                                                                                                         §§push(this.§]!F§);
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            addr528:
                                                                                                            §§push(§§pop() + §§pop() * this.§==§);
                                                                                                         }
                                                                                                         §§goto(addr528);
                                                                                                      }
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc19_ || _loc2_)
                                                                                                      {
                                                                                                         addr537:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc15_:* = §§pop();
                                                                                                      if(!(_loc18_ && this))
                                                                                                      {
                                                                                                         §§push(this);
                                                                                                         §§push(this.§==§);
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            §§push(§§pop() + _loc15_);
                                                                                                         }
                                                                                                         §§pop().§==§ = §§pop();
                                                                                                      }
                                                                                                      §§push(_loc15_);
                                                                                                      if(_loc19_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(§§pop() * this.§'z§.x);
                                                                                                         if(_loc19_ || param1)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      var _loc16_:* = §§pop();
                                                                                                      §§push(_loc15_);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(§§pop() * this.§'z§.y);
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      var _loc17_:* = §§pop();
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(_loc3_.§2!@§);
                                                                                                         loop12:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_.§2!@§);
                                                                                                            loop13:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  §§push(_loc3_.§+5§);
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     §§push(_loc16_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                     }
                                                                                                                     addr859:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                  }
                                                                                                                  addr860:
                                                                                                               }
                                                                                                               loop16:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  loop17:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc3_.§2!@§);
                                                                                                                     loop18:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.§2!@§);
                                                                                                                        addr808:
                                                                                                                        while(!(_loc18_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(_loc19_ || this)
                                                                                                                           {
                                                                                                                              if(!(_loc19_ || this))
                                                                                                                              {
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                              §§push(_loc3_.§+5§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc17_);
                                                                                                                                 addr833:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    addr834:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 loop31:
                                                                                                                                 while(_loc19_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                       addr751:
                                                                                                                                       addr836:
                                                                                                                                       addr667:
                                                                                                                                       while(_loc19_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_.§2!@§);
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             continue loop18;
                                                                                                                                          }
                                                                                                                                          continue loop12;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          §§push(_loc3_.m_angularVelocity);
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.§%L§);
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                   if(_loc19_ || this)
                                                                                                                                                   {
                                                                                                                                                      addr800:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc19_ || param1)
                                                                                                                                                      {
                                                                                                                                                         addr788:
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                         if(_loc19_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr796:
                                                                                                                                                            §§push(§§pop() * _loc16_);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                      }
                                                                                                                                                      §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_.§2!@§);
                                                                                                                                                         continue loop12;
                                                                                                                                                      }
                                                                                                                                                      addr802:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr796);
                                                                                                                                                }
                                                                                                                                                §§goto(addr788);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr800);
                                                                                                                                       }
                                                                                                                                       if(_loc18_ && _loc2_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc4_.§+5§);
                                                                                                                                             if(_loc19_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   continue loop31;
                                                                                                                                                }
                                                                                                                                                if(_loc19_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               addr707:
                                                                                                                                                               §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                                                               addr706:
                                                                                                                                                               for(; _loc19_ || _loc2_; §§pop().m_angularVelocity = §§pop(),if(!(_loc19_ || _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               },if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     return;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop17;
                                                                                                                                                               },§§goto(addr802))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                  §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc4_.§%L§);
                                                                                                                                                                  if(!(_loc18_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     if(_loc19_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           addr634:
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!(_loc18_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              addr627:
                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr630:
                                                                                                                                                                                 §§push(§§pop() * _loc16_);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr630);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr627);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr634);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr751);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr859);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr833);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr836);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            continue loop31;
                                                                                                                                                         }
                                                                                                                                                         addr741:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr834);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(_loc19_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr741);
                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                   }
                                                                                                                                                   addr733:
                                                                                                                                                }
                                                                                                                                                §§goto(addr860);
                                                                                                                                             }
                                                                                                                                             §§goto(addr706);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                             §§goto(addr836);
                                                                                                                                          }
                                                                                                                                          addr835:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          addr731:
                                                                                                                                       }
                                                                                                                                       §§goto(addr733);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr835);
                                                                                                                        }
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr836);
                                                                                                   }
                                                                                                   §§goto(addr528);
                                                                                                }
                                                                                                §§goto(addr521);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr537);
                                                                                       }
                                                                                       §§goto(addr483);
                                                                                    }
                                                                                    §§goto(addr484);
                                                                                 }
                                                                                 §§goto(addr483);
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr478);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr483);
                                                                  }
                                                                  §§goto(addr444);
                                                               }
                                                               §§goto(addr408);
                                                            }
                                                            §§goto(addr379);
                                                         }
                                                         §§goto(addr346);
                                                      }
                                                   }
                                                   break;
                                                   if(!(_loc18_ && _loc2_))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc19_)
                                                      {
                                                         §§goto(addr312);
                                                         §§push(Number(§§pop()));
                                                      }
                                                      break;
                                                   }
                                                }
                                                §§goto(addr359);
                                                §§push(Number(§§pop()));
                                             }
                                             §§goto(addr338);
                                          }
                                       }
                                       §§goto(addr313);
                                    }
                                    §§goto(addr187);
                                 }
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr140);
               }
               §§goto(addr146);
            }
            §§goto(addr97);
         }
         §§goto(addr90);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         if(!_loc18_)
         {
            if(this.§ A§ > 0)
            {
               if(!_loc18_)
               {
                  §§goto(addr27);
               }
            }
            var _loc3_:b2Body = b2internal::6z;
            var _loc4_:b2Body = b2internal::3D;
            _loc2_ = _loc3_.m_xf.R;
            §§push(this.m_localAnchor1.x);
            if(_loc17_)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
               if(!_loc18_)
               {
                  addr52:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(this.m_localAnchor1.y);
               if(_loc17_)
               {
                  §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                  if(!(_loc18_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc6_:* = §§pop();
               §§push(_loc2_.col1.x);
               if(_loc17_ || _loc2_)
               {
                  §§push(_loc5_);
                  if(_loc17_ || this)
                  {
                     addr110:
                     §§push(§§pop() * §§pop());
                     if(!_loc18_)
                     {
                        §§push(_loc2_.col2.x);
                        if(_loc17_)
                        {
                           §§push(§§pop() * _loc6_);
                        }
                     }
                     var _loc7_:* = §§pop();
                     if(_loc17_)
                     {
                        §§push(_loc2_.col1.y);
                        if(!_loc18_)
                        {
                           §§push(_loc5_);
                           if(!_loc18_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc18_ && param1))
                              {
                                 §§push(_loc2_.col2.y);
                                 if(!(_loc18_ && _loc3_))
                                 {
                                    addr139:
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc17_)
                                 {
                                    addr144:
                                    §§push(Number(§§pop()));
                                    if(_loc17_)
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc17_ || param1)
                                       {
                                          §§push(_loc7_);
                                          if(_loc18_ && param1)
                                          {
                                          }
                                          addr164:
                                          _loc5_ = §§pop();
                                          addr165:
                                          _loc2_ = _loc4_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(_loc17_ || param1)
                                          {
                                             §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                             if(!(_loc18_ && param1))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc8_:* = §§pop();
                                          §§push(this.m_localAnchor2.y);
                                          if(_loc17_)
                                          {
                                             §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                             if(!(_loc18_ && this))
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
                                                if(!(_loc18_ && _loc3_))
                                                {
                                                   §§push(_loc8_);
                                                   if(_loc17_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.col2);
                                                         addr334:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc17_)
                                                            {
                                                               §§push(_loc9_);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               addr338:
                                                            }
                                                            addr339:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr340:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr341:
                                                                  while(true)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     addr342:
                                                                     while(true)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr332:
                                                   }
                                                   else
                                                   {
                                                      addr380:
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc18_ && _loc2_))
                                                      {
                                                         addr388:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc10_:* = §§pop();
                                                      §§push(_loc4_.m_sweep.c.y);
                                                      if(_loc17_ || _loc2_)
                                                      {
                                                         §§push(_loc9_);
                                                         if(!_loc18_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc18_)
                                                            {
                                                               §§push(_loc3_.m_sweep.c.y);
                                                               if(!(_loc18_ && param1))
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!(_loc18_ && this))
                                                                  {
                                                                     addr427:
                                                                     §§push(§§pop() - _loc6_);
                                                                     if(_loc17_ || _loc2_)
                                                                     {
                                                                        addr435:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc11_:* = §§pop();
                                                                     var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                                                     if(_loc17_ || param1)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        if(_loc17_)
                                                                        {
                                                                           §§push(_loc12_);
                                                                           if(!_loc18_)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                              if(_loc17_ || _loc2_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    _loc10_ = §§pop();
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       addr475:
                                                                                       §§push(_loc11_);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          addr478:
                                                                                          §§push(_loc12_);
                                                                                          if(!(_loc18_ && param1))
                                                                                          {
                                                                                             addr496:
                                                                                             §§push(§§pop() / §§pop());
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                addr499:
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc17_ || _loc3_)
                                                                                                {
                                                                                                }
                                                                                                addr522:
                                                                                                var _loc13_:* = Number(§§pop());
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   §§push(b2Math);
                                                                                                   §§push(_loc13_);
                                                                                                   §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                   if(_loc17_ || param1)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                   }
                                                                                                   §§push(§§pop().§9!%§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                   if(_loc17_ || param1)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc18_ && _loc3_))
                                                                                                      {
                                                                                                         _loc13_ = §§pop();
                                                                                                         addr556:
                                                                                                         §§push(this.§>§);
                                                                                                         if(_loc17_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(-§§pop());
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                            }
                                                                                                            addr578:
                                                                                                            var _loc14_:Number = §§pop();
                                                                                                            addr577:
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               this.§'z§.Set(_loc10_,_loc11_);
                                                                                                            }
                                                                                                            §§push(_loc14_);
                                                                                                            if(_loc17_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop() * this.§'z§.x);
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                            var _loc15_:* = §§pop();
                                                                                                            §§push(_loc14_);
                                                                                                            if(!(_loc18_ && param1))
                                                                                                            {
                                                                                                               §§push(§§pop() * this.§'z§.y);
                                                                                                               if(_loc17_ || param1)
                                                                                                               {
                                                                                                                  addr621:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc16_:* = §§pop();
                                                                                                               if(_loc17_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc3_.m_sweep);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().c);
                                                                                                                     addr962:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.m_sweep);
                                                                                                                        addr974:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           addr975:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              addr976:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.§+5§);
                                                                                                                                 addr978:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc15_);
                                                                                                                                    addr979:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       addr980:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          addr981:
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
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr961:
                                                                                                               }
                                                                                                               loop21:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_.m_sweep);
                                                                                                                  loop22:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().c);
                                                                                                                     loop23:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.m_sweep);
                                                                                                                        loop24:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           loop25:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              loop26:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.§+5§);
                                                                                                                                 loop27:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc16_);
                                                                                                                                    loop28:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       loop29:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          loop30:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                             loop31:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_.m_sweep);
                                                                                                                                                loop32:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_.m_sweep);
                                                                                                                                                   loop33:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().a);
                                                                                                                                                      loop34:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_.§%L§);
                                                                                                                                                         loop35:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                            loop36:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                               loop37:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                     if(!(_loc18_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        addr938:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     addr939:
                                                                                                                                                                  }
                                                                                                                                                                  loop40:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     loop41:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        loop42:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().a = §§pop();
                                                                                                                                                                           loop43:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_.m_sweep);
                                                                                                                                                                              loop44:
                                                                                                                                                                              for(; !_loc18_; while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc18_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop22;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop44;
                                                                                                                                                                                 §§goto(addr841);
                                                                                                                                                                              },§§goto(addr981))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().c);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc17_ || _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop23;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc4_.m_sweep);
                                                                                                                                                                                    while(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().c);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc18_ && param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop25;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc18_ && _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                          loop48:
                                                                                                                                                                                          while(!(_loc18_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc4_.§+5§);
                                                                                                                                                                                             loop49:
                                                                                                                                                                                             while(_loc17_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                loop50:
                                                                                                                                                                                                while(_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   loop51:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc18_ && this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop29;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc18_ && param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                         addr913:
                                                                                                                                                                                                         while(_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                                                                                                                            continue loop44;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr779:
                                                                                                                                                                                                         continue loop43;
                                                                                                                                                                                                         if(_loc18_ && _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop26;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc4_.§+5§);
                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop51;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop49;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop50;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc17_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr809:
                                                                                                                                                                                                                  §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                  if(!(_loc17_ || _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop48;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop30;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc17_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc17_ || _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop31;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!(_loc17_ || _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop44;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop33;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop().a);
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc18_ && this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop42;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop34;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc4_.§%L§);
                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc17_ || _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop41;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc18_ && _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop36;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                                                                    if(!(_loc18_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop40;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr733:
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr738:
                                                                                                                                                                                                                                                      §§pop().a = §§pop() + §§pop() * (§§pop() - §§pop());
                                                                                                                                                                                                                                                      addr736:
                                                                                                                                                                                                                                                      loop56:
                                                                                                                                                                                                                                                      while(_loc17_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc3_.§&I§();
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop56;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr913);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop37;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr938);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr733);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr736);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr939);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr733);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr736);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr738);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr961);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop21;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr981);
                                                                                                                                                                                                                  continue loop48;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr979);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr980);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr809);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr978);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop28;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop27;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr976);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr975);
                                                                                                                                                                                       §§push(_loc4_.m_sweep);
                                                                                                                                                                                       if(!(_loc17_ || _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop24;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop().c);
                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr779);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr810);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr862);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr974);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr962);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop32;
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
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(!(_loc17_ || param1))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(§§pop().c);
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§goto(addr762);
                                                                                                                     }
                                                                                                                     §§goto(addr848);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr621);
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(§§pop() * _loc13_);
                                                                                                      if(!(_loc18_ && this))
                                                                                                      {
                                                                                                         §§goto(addr577);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr578);
                                                                                                }
                                                                                                §§goto(addr556);
                                                                                             }
                                                                                             _loc11_ = §§pop();
                                                                                             addr508:
                                                                                             §§push(_loc12_);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                §§push(this.§%!%§);
                                                                                             }
                                                                                             §§goto(addr522);
                                                                                          }
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc18_ && _loc3_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr522);
                                                                                    }
                                                                                    §§goto(addr508);
                                                                                 }
                                                                                 §§goto(addr522);
                                                                              }
                                                                              §§goto(addr499);
                                                                           }
                                                                           §§goto(addr496);
                                                                        }
                                                                        §§goto(addr478);
                                                                     }
                                                                     §§goto(addr475);
                                                                  }
                                                               }
                                                               §§goto(addr427);
                                                            }
                                                            §§goto(addr435);
                                                         }
                                                      }
                                                      §§goto(addr427);
                                                   }
                                                }
                                                §§goto(addr388);
                                             }
                                          }
                                          §§goto(addr252);
                                       }
                                       §§goto(addr165);
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr164);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc18_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr110);
            }
            §§goto(addr52);
         }
         addr27:
         return true;
      }
   }
}
