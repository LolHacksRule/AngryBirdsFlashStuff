package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Mat22;
   import §<!a§.b2Math;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §&!+§:b2Vec2;
      
      private var §,L§:Number;
      
      private var §""=§:Number;
      
      private var §36§:Number;
      
      private var §&! §:Number;
      
      private var §5!i§:Number;
      
      private var §?j§:Number;
      
      private var §,!P§:Number;
      
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
                  this.§&!+§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super(param1);
                     loop3:
                     while(_loc6_)
                     {
                        this.m_localAnchor1.SetV(param1.§3!&§);
                        while(!_loc5_)
                        {
                           this.m_localAnchor2.SetV(param1.§2!P§);
                           while(!(_loc5_ && _loc2_))
                           {
                              this.§,!P§ = param1.length;
                              continue loop1;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+d.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!l.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§5!i§);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && param1))
               {
                  addr47:
                  §§push(this.§&!+§.x);
                  if(!_loc3_)
                  {
                     addr53:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc2_)
                     {
                        §§push(this.§5!i§);
                        if(_loc2_ || param1)
                        {
                           §§goto(addr87);
                        }
                        addr87:
                        §§push(§§pop() * §§pop());
                        if(_loc2_ || _loc2_)
                        {
                           addr83:
                           §§push(this.§&!+§.y);
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() * §§pop());
                     }
                  }
                  §§goto(addr83);
               }
               §§goto(addr53);
            }
            §§goto(addr87);
         }
         §§goto(addr47);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §="5§() : Number
      {
         return this.§,!P§;
      }
      
      public function §=!n§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,!P§ = param1;
         }
      }
      
      public function §!!u§() : Number
      {
         return this.§,L§;
      }
      
      public function §?!6§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,L§ = param1;
         }
      }
      
      public function §#4§() : Number
      {
         return this.§""=§;
      }
      
      public function §>+§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§""=§ = param1;
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
         var _loc3_:b2Body = b2internal::+d;
         var _loc4_:b2Body = b2internal::"!l;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc18_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc18_ || param1)
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc18_)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
               if(_loc18_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(_loc18_ || _loc3_)
            {
               §§push(_loc5_);
               if(_loc18_ || this)
               {
                  addr104:
                  §§push(§§pop() * §§pop());
                  if(_loc18_ || _loc3_)
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc18_)
                     {
                        §§push(§§pop() * _loc6_);
                     }
                  }
                  var _loc7_:* = Number(§§pop());
                  if(!(_loc19_ && param1))
                  {
                     §§push(_loc2_.col1.y);
                     if(!(_loc19_ && param1))
                     {
                        §§push(_loc5_);
                        if(!(_loc19_ && _loc3_))
                        {
                           addr169:
                           §§push(§§pop() * §§pop());
                           if(_loc18_ || _loc3_)
                           {
                              §§push(_loc2_.col2.y);
                              if(!_loc19_)
                              {
                                 §§push(§§pop() * _loc6_);
                              }
                           }
                           _loc5_ = §§pop();
                           _loc2_ = _loc4_.m_xf.R;
                           §§push(this.m_localAnchor2.x);
                           if(!(_loc19_ && _loc2_))
                           {
                              §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                              if(!(_loc19_ && _loc3_))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc8_:* = §§pop();
                           §§push(this.m_localAnchor2.y);
                           if(_loc18_ || _loc3_)
                           {
                              §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                              if(!_loc19_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc9_:* = §§pop();
                           if(_loc18_)
                           {
                              §§push(_loc2_.col1);
                              loop0:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 if(_loc19_ && this)
                                 {
                                    break;
                                 }
                                 §§push(_loc8_);
                                 if(_loc18_ || _loc2_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    while(true)
                                    {
                                       §§push(_loc2_.col2);
                                       addr356:
                                       addr323:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr357:
                                          while(true)
                                          {
                                             §§push(_loc9_);
                                             addr358:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr359:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr360:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc18_ || _loc2_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         while(true)
                                                         {
                                                            continue loop0;
                                                            addr250:
                                                            if(!(_loc18_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            while(true)
                                                            {
                                                               if(false)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr393:
                                                               §§push(_loc3_.§]!g§.x);
                                                               if(!_loc19_)
                                                               {
                                                                  break loop0;
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(_loc3_.§]!g§.y);
                                                               if(!_loc19_)
                                                               {
                                                                  §§push(_loc3_.m_angularVelocity);
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(§§pop() * _loc5_);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(_loc4_.§]!g§.x);
                                                               if(_loc18_ || param1)
                                                               {
                                                                  §§push(_loc4_.m_angularVelocity);
                                                                  if(!(_loc19_ && param1))
                                                                  {
                                                                     §§push(-§§pop());
                                                                     if(_loc18_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() * _loc9_);
                                                                     }
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc19_ && this))
                                                                  {
                                                                     addr457:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc12_:* = §§pop();
                                                                  §§push(_loc4_.§]!g§.y);
                                                                  if(_loc18_ || _loc2_)
                                                                  {
                                                                     §§push(_loc4_.m_angularVelocity);
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(§§pop() * _loc8_);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc19_)
                                                                     {
                                                                        addr478:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc13_:* = §§pop();
                                                                     §§push(this.§&!+§.x);
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(_loc12_);
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           if(_loc18_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc18_ || param1)
                                                                                 {
                                                                                    addr502:
                                                                                    §§push(this.§&!+§.y);
                                                                                    if(!(_loc19_ && param1))
                                                                                    {
                                                                                       addr512:
                                                                                       §§push(_loc13_);
                                                                                       if(!(_loc19_ && this))
                                                                                       {
                                                                                          addr522:
                                                                                          §§push(§§pop() + §§pop() * (§§pop() - _loc11_));
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             addr526:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc14_:* = §§pop();
                                                                                          §§push(this.§?j§);
                                                                                          if(!(_loc19_ && _loc2_))
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§push(_loc14_);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§push(this.§&! §);
                                                                                                   if(!(_loc19_ && _loc3_))
                                                                                                   {
                                                                                                      addr568:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!(_loc19_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(this.§36§);
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            §§push(§§pop() * this.§5!i§);
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc19_ && param1))
                                                                                                      {
                                                                                                         addr576:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc15_:* = §§pop();
                                                                                                      if(_loc18_ || this)
                                                                                                      {
                                                                                                         §§push(this);
                                                                                                         §§push(this.§5!i§);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            §§push(§§pop() + _loc15_);
                                                                                                         }
                                                                                                         §§pop().§5!i§ = §§pop();
                                                                                                      }
                                                                                                      §§push(_loc15_);
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(§§pop() * this.§&!+§.x);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            addr602:
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         var _loc16_:* = §§pop();
                                                                                                         §§push(_loc15_);
                                                                                                         if(!(_loc19_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop() * this.§&!+§.y);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                         }
                                                                                                         var _loc17_:* = §§pop();
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            §§push(_loc3_.§]!g§);
                                                                                                            loop11:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_.§]!g§);
                                                                                                               loop12:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  loop13:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc3_.§@"!§);
                                                                                                                     addr887:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc16_);
                                                                                                                        addr888:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           addr889:
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
                                                                                                                                    §§push(_loc3_.§]!g§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_.§]!g§);
                                                                                                                                       continue loop12;
                                                                                                                                       loop28:
                                                                                                                                       for(; _loc18_ || this; §§push(_loc4_.§]!g§),if(_loc18_)
                                                                                                                                       {
                                                                                                                                          continue loop11;
                                                                                                                                       })
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_.§]!g§);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   continue loop13;
                                                                                                                                                }
                                                                                                                                                §§push(_loc4_.§@"!§);
                                                                                                                                                if(_loc18_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                   }
                                                                                                                                                   addr771:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr773:
                                                                                                                                             addr861:
                                                                                                                                             while(_loc18_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            continue loop28;
                                                                                                                                                         }
                                                                                                                                                         addr862:
                                                                                                                                                         while(!(_loc19_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                               §§push(_loc3_.m_angularVelocity);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_.§=!N§);
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     if(_loc18_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!(_loc19_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr823:
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr820:
                                                                                                                                                                                 §§push(§§pop() * _loc16_);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().m_angularVelocity = §§pop() - §§pop() * (§§pop() - §§pop());
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop28;
                                                                                                                                                                              }
                                                                                                                                                                              addr826:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr823);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr820);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr823);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop18;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr826);
                                                                                                                                                   }
                                                                                                                                                   continue;
                                                                                                                                                   addr783:
                                                                                                                                                }
                                                                                                                                                continue loop17;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                §§goto(addr862);
                                                                                                                                                §§goto(addr773);
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
                                                                                                               if(_loc19_ && _loc2_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(_loc4_.§]!g§);
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  if(_loc18_ || param1)
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        §§push(_loc4_.§@"!§);
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              §§push(_loc17_);
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 if(_loc18_ || this)
                                                                                                                                 {
                                                                                                                                    §§goto(addr723);
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                 }
                                                                                                                                 §§goto(addr850);
                                                                                                                              }
                                                                                                                              §§goto(addr771);
                                                                                                                           }
                                                                                                                           §§goto(addr772);
                                                                                                                        }
                                                                                                                        §§goto(addr723);
                                                                                                                     }
                                                                                                                     §§goto(addr735);
                                                                                                                  }
                                                                                                                  §§goto(addr832);
                                                                                                               }
                                                                                                               §§goto(addr756);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr869);
                                                                                                      }
                                                                                                      §§goto(addr602);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§goto(addr568);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr576);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr522);
                                                                                 }
                                                                                 §§goto(addr526);
                                                                              }
                                                                              §§goto(addr512);
                                                                           }
                                                                        }
                                                                        §§goto(addr522);
                                                                     }
                                                                     §§goto(addr502);
                                                                  }
                                                                  §§goto(addr478);
                                                               }
                                                               §§goto(addr457);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr323:
                                       loop9:
                                       while(!(_loc19_ && _loc2_))
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc18_)
                                          {
                                             _loc9_ = §§pop();
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                if(_loc18_ || this)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc18_)
                                                   {
                                                      addr392:
                                                      §§push(Number(§§pop()));
                                                      break;
                                                   }
                                                   if(_loc19_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   if(_loc18_ || _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr360);
                                                }
                                                break;
                                             }
                                          }
                                          §§goto(addr393);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr384:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc19_ && _loc3_))
                                    {
                                       §§goto(addr392);
                                    }
                                 }
                                 §§goto(addr393);
                              }
                              §§push(_loc3_.m_angularVelocity);
                              if(!_loc19_)
                              {
                                 §§push(-§§pop());
                                 if(_loc18_)
                                 {
                                    §§goto(addr382);
                                 }
                                 §§goto(addr384);
                              }
                              §§goto(addr382);
                           }
                           §§goto(addr257);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc18_ || _loc3_)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc19_ && _loc3_))
                           {
                              _loc6_ = §§pop();
                              if(!_loc19_)
                              {
                                 §§push(_loc7_);
                                 if(_loc19_)
                                 {
                                 }
                              }
                              §§goto(addr169);
                           }
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  §§goto(addr169);
               }
               §§push(§§pop() + §§pop());
               if(_loc19_)
               {
               }
            }
            §§goto(addr104);
         }
         §§goto(addr47);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         if(_loc18_)
         {
            if(this.§,L§ > 0)
            {
               if(!(_loc17_ && _loc2_))
               {
                  return true;
               }
            }
         }
         var _loc3_:b2Body = b2internal::+d;
         var _loc4_:b2Body = b2internal::"!l;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc18_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc18_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc18_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
            if(!(_loc17_ && param1))
            {
               addr77:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(_loc18_ || param1)
            {
               §§push(_loc5_);
               if(!(_loc17_ && _loc3_))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc18_ || _loc3_)
                  {
                     addr105:
                     §§push(_loc2_.col2.x);
                     if(!_loc17_)
                     {
                        addr112:
                        §§push(§§pop() + §§pop() * _loc6_);
                        if(_loc18_ || _loc2_)
                        {
                           addr120:
                           §§push(Number(§§pop()));
                        }
                        var _loc7_:* = §§pop();
                        if(!(_loc17_ && _loc3_))
                        {
                           §§push(_loc2_.col1.y);
                           if(!_loc17_)
                           {
                              §§push(_loc5_);
                              if(!_loc17_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc17_ && param1))
                                 {
                                    §§push(_loc2_.col2.y);
                                    if(!(_loc17_ && param1))
                                    {
                                       addr157:
                                       §§push(§§pop() + §§pop() * _loc6_);
                                       if(!(_loc17_ && this))
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc18_)
                                          {
                                             addr168:
                                             _loc6_ = §§pop();
                                             addr181:
                                             if(!(_loc17_ && _loc3_))
                                             {
                                                §§push(_loc7_);
                                                if(!_loc17_)
                                                {
                                                   addr179:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             _loc2_ = _loc4_.m_xf.R;
                                             §§push(this.m_localAnchor2.x);
                                             if(!_loc17_)
                                             {
                                                §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                                if(_loc18_ || this)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc8_:* = §§pop();
                                             §§push(this.m_localAnchor2.y);
                                             if(_loc18_)
                                             {
                                                §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                                if(_loc18_ || param1)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc9_:* = §§pop();
                                             if(!(_loc17_ && _loc3_))
                                             {
                                                §§push(_loc2_.col1);
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr340:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      if(_loc18_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc18_ || _loc3_)
                                                         {
                                                            §§push(_loc2_.col2);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc17_ && this)
                                                               {
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc9_);
                                                                  addr362:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc17_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  addr406:
                                                                  §§push(§§pop() - §§pop());
                                                                  addr415:
                                                                  if(_loc18_ || _loc3_)
                                                                  {
                                                                     addr414:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc10_:* = §§pop();
                                                                  §§push(_loc4_.m_sweep.c.y);
                                                                  if(!(_loc17_ && _loc3_))
                                                                  {
                                                                     §§push(_loc9_);
                                                                     if(!_loc17_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc17_ && this))
                                                                        {
                                                                           §§push(_loc3_.m_sweep.c.y);
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc17_)
                                                                              {
                                                                                 addr447:
                                                                                 §§push(§§pop() - _loc6_);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              var _loc11_:* = §§pop();
                                                                              var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                                                              if(!(_loc17_ && this))
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 if(_loc18_ || param1)
                                                                                 {
                                                                                    §§push(_loc12_);
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             addr488:
                                                                                             _loc10_ = §§pop();
                                                                                             if(_loc18_ || this)
                                                                                             {
                                                                                                §§push(_loc11_);
                                                                                                if(!(_loc17_ && param1))
                                                                                                {
                                                                                                   addr504:
                                                                                                   §§push(_loc12_);
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      if(_loc18_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!(_loc17_ && _loc2_))
                                                                                                         {
                                                                                                            _loc11_ = §§pop();
                                                                                                            addr534:
                                                                                                            §§push(_loc12_);
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               addr537:
                                                                                                               §§push(§§pop() - this.§,!P§);
                                                                                                               if(!(_loc17_ && this))
                                                                                                               {
                                                                                                                  addr547:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr537);
                                                                                                      }
                                                                                                      var _loc13_:* = §§pop();
                                                                                                      if(_loc18_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(b2Math);
                                                                                                         §§push(_loc13_);
                                                                                                         §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            §§push(-§§pop());
                                                                                                         }
                                                                                                         §§push(§§pop().§5" §(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                         if(!(_loc17_ && this))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               addr576:
                                                                                                               _loc13_ = §§pop();
                                                                                                               §§push(this.§?j§);
                                                                                                               if(!(_loc17_ && _loc2_))
                                                                                                               {
                                                                                                                  addr586:
                                                                                                                  §§push(-§§pop());
                                                                                                                  if(!(_loc17_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * _loc13_);
                                                                                                                     if(!(_loc17_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr603:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc14_:* = §§pop();
                                                                                                                     if(_loc18_ || param1)
                                                                                                                     {
                                                                                                                        this.§&!+§.Set(_loc10_,_loc11_);
                                                                                                                     }
                                                                                                                     §§push(_loc14_);
                                                                                                                     if(!(_loc17_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * this.§&!+§.x);
                                                                                                                        if(_loc18_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr636:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc15_:* = §§pop();
                                                                                                                        §§push(_loc14_);
                                                                                                                        if(!_loc17_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * this.§&!+§.y);
                                                                                                                           if(!(_loc17_ && param1))
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        var _loc16_:* = §§pop();
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           §§push(_loc3_.m_sweep);
                                                                                                                           loop12:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().c);
                                                                                                                              addr1039:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.m_sweep);
                                                                                                                                 addr1041:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().c);
                                                                                                                                    addr1042:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.§@"!§);
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc15_);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                             }
                                                                                                                                             addr1060:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                          }
                                                                                                                                          addr1061:
                                                                                                                                       }
                                                                                                                                       addr1062:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                          addr1063:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.m_sweep);
                                                                                                                                             continue loop12;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr892);
                                                                                                                     }
                                                                                                                     §§goto(addr636);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr603);
                                                                                                            }
                                                                                                            §§goto(addr586);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr576);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr537);
                                                                                             }
                                                                                             §§goto(addr534);
                                                                                          }
                                                                                          §§goto(addr504);
                                                                                       }
                                                                                       §§goto(addr488);
                                                                                    }
                                                                                    §§goto(addr537);
                                                                                 }
                                                                                 §§goto(addr547);
                                                                              }
                                                                              §§goto(addr534);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr447);
                                                               }
                                                            }
                                                            addr402:
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc18_)
                                                            {
                                                               §§goto(addr406);
                                                               §§push(_loc5_);
                                                            }
                                                            §§goto(addr415);
                                                            addr353:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr367:
                                                            while(true)
                                                            {
                                                               _loc7_ = §§pop();
                                                               addr368:
                                                               while(true)
                                                               {
                                                                  continue loop0;
                                                               }
                                                            }
                                                         }
                                                         addr366:
                                                      }
                                                      §§goto(addr361);
                                                   }
                                                }
                                             }
                                             §§goto(addr368);
                                          }
                                          §§goto(addr179);
                                       }
                                       _loc5_ = §§pop();
                                       §§goto(addr181);
                                    }
                                    §§goto(addr157);
                                 }
                                 §§goto(addr168);
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr120);
               }
               §§goto(addr112);
            }
            §§goto(addr105);
         }
         §§goto(addr77);
      }
   }
}
