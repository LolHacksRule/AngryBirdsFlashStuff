package §8k§
{
   import §#]§.b2Mat22;
   import §#]§.b2Math;
   import §#]§.b2Vec2;
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §8"=§:b2Vec2;
      
      private var §7"E§:Number;
      
      private var §,c§:Number;
      
      private var §[E§:Number;
      
      private var §?V§:Number;
      
      private var §0!y§:Number;
      
      private var §+J§:Number;
      
      private var §+!@§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_)
         {
            this.m_localAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
            }
            addr175:
         }
         loop1:
         while(true)
         {
            this.§8"=§ = new b2Vec2();
            while(_loc5_)
            {
               super(param1);
               continue loop1;
               if(_loc5_ || param1)
               {
                  return;
               }
            }
            §§goto(addr175);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::8!Z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4"0.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§0!y§);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§push(this.§8"=§.x);
                  if(!_loc3_)
                  {
                     addr58:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(this.§0!y§);
                        if(_loc2_)
                        {
                           §§goto(addr77);
                        }
                        addr77:
                        §§push(§§pop() * §§pop());
                        if(_loc2_)
                        {
                           addr73:
                           §§push(this.§8"=§.y);
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() * §§pop());
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr77);
               }
            }
         }
         §§goto(addr58);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §`!@§() : Number
      {
         return this.§+!@§;
      }
      
      public function §[h§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§+!@§ = param1;
         }
      }
      
      public function §[[§() : Number
      {
         return this.§7"E§;
      }
      
      public function §<!D§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§7"E§ = param1;
         }
      }
      
      public function §^",§() : Number
      {
         return this.§,c§;
      }
      
      public function §!^§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§,c§ = param1;
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
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::8!Z;
         var _loc4_:b2Body = b2internal::4"0;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc19_ && _loc2_))
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc18_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc18_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
            if(_loc18_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc2_.col1.x);
         if(_loc18_ || _loc3_)
         {
            §§push(_loc5_);
            if(!_loc19_)
            {
               §§push(§§pop() * §§pop());
               if(_loc18_ || _loc3_)
               {
                  §§push(_loc2_.col2.x);
                  if(!_loc19_)
                  {
                     addr94:
                     §§push(§§pop() * _loc6_);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc19_)
                  {
                     addr99:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(!(_loc19_ && _loc2_))
                  {
                     §§push(_loc2_.col1.y);
                     if(_loc18_)
                     {
                        §§push(_loc5_);
                        if(_loc18_ || _loc2_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc19_)
                           {
                              §§push(_loc2_.col2.y);
                              if(!(_loc19_ && this))
                              {
                                 addr136:
                                 §§push(§§pop() + §§pop() * _loc6_);
                                 if(!_loc19_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc18_)
                                    {
                                       addr142:
                                       _loc6_ = §§pop();
                                       addr155:
                                       if(_loc18_ || param1)
                                       {
                                          §§push(_loc7_);
                                          if(!_loc19_)
                                          {
                                             addr153:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       _loc2_ = _loc4_.m_xf.R;
                                       §§push(this.m_localAnchor2.x);
                                       if(!_loc19_)
                                       {
                                          §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                          if(_loc18_)
                                          {
                                             addr172:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc8_:* = §§pop();
                                          §§push(this.m_localAnchor2.y);
                                          if(_loc18_ || param1)
                                          {
                                             §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                             if(_loc18_)
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
                                                addr313:
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   addr314:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc18_ || param1)
                                                      {
                                                         §§push(_loc2_.col2);
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc18_)
                                                            {
                                                               §§push(_loc9_);
                                                               if(_loc19_ && _loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            addr336:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr337:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr338:
                                                                  while(true)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     addr339:
                                                                     while(true)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr353:
                                                         §§push(§§pop() + §§pop() * §§pop());
                                                         if(_loc18_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            break;
                                                         }
                                                         break;
                                                         addr324:
                                                      }
                                                      break;
                                                   }
                                                   addr358:
                                                   var _loc10_:* = §§pop();
                                                   §§push(_loc3_.§="8§.y);
                                                   if(_loc18_)
                                                   {
                                                      §§push(_loc3_.m_angularVelocity);
                                                      if(!(_loc19_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * _loc5_);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc19_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc11_:* = §§pop();
                                                   §§push(_loc4_.§="8§.x);
                                                   if(_loc18_ || _loc3_)
                                                   {
                                                      §§push(_loc4_.m_angularVelocity);
                                                      if(_loc18_ || _loc3_)
                                                      {
                                                         §§push(-§§pop());
                                                         if(_loc18_)
                                                         {
                                                            §§push(§§pop() * _loc9_);
                                                         }
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc19_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc12_:* = §§pop();
                                                   §§push(_loc4_.§="8§.y);
                                                   if(_loc18_ || _loc3_)
                                                   {
                                                      §§push(_loc4_.m_angularVelocity);
                                                      if(!(_loc19_ && _loc2_))
                                                      {
                                                         §§push(§§pop() * _loc8_);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc19_ && param1))
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc13_:* = §§pop();
                                                   §§push(this.§8"=§.x);
                                                   if(!_loc19_)
                                                   {
                                                      §§push(_loc12_);
                                                      if(!_loc19_)
                                                      {
                                                         §§push(_loc10_);
                                                         if(!(_loc19_ && param1))
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc18_ || param1)
                                                            {
                                                               addr474:
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc19_ && this))
                                                               {
                                                                  §§push(this.§8"=§.y);
                                                                  if(_loc18_ || _loc2_)
                                                                  {
                                                                     §§push(_loc13_);
                                                                     if(!(_loc19_ && _loc2_))
                                                                     {
                                                                        addr502:
                                                                        §§push(§§pop() * (§§pop() - _loc11_));
                                                                     }
                                                                     §§goto(addr502);
                                                                  }
                                                               }
                                                               addr507:
                                                               var _loc14_:* = §§pop();
                                                               §§push(this.§+J§);
                                                               if(!_loc19_)
                                                               {
                                                                  §§push(-§§pop());
                                                                  if(!(_loc19_ && _loc2_))
                                                                  {
                                                                     addr520:
                                                                     §§push(_loc14_);
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(this.§?V§);
                                                                        if(!(_loc19_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc18_ || param1)
                                                                           {
                                                                              addr548:
                                                                              §§push(this.§[E§);
                                                                              if(_loc18_)
                                                                              {
                                                                                 addr544:
                                                                                 §§push(§§pop() * this.§0!y§);
                                                                              }
                                                                              §§push(§§pop() * (§§pop() + §§pop()));
                                                                              if(!_loc19_)
                                                                              {
                                                                                 addr552:
                                                                                 var _loc15_:Number = §§pop();
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§0!y§);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc15_);
                                                                                    }
                                                                                    §§pop().§0!y§ = §§pop();
                                                                                 }
                                                                                 §§push(_loc15_);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    §§push(§§pop() * this.§8"=§.x);
                                                                                    if(_loc18_ || param1)
                                                                                    {
                                                                                       addr577:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc16_:* = §§pop();
                                                                                    §§push(_loc15_);
                                                                                    if(_loc18_ || param1)
                                                                                    {
                                                                                       §§push(§§pop() * this.§8"=§.y);
                                                                                       if(!(_loc19_ && param1))
                                                                                       {
                                                                                          addr598:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc17_:* = §§pop();
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          addr865:
                                                                                          _loc3_.§="8§.x -= _loc3_.§["A§ * _loc16_;
                                                                                          addr862:
                                                                                          addr863:
                                                                                          addr864:
                                                                                          addr859:
                                                                                          addr857:
                                                                                          addr866:
                                                                                          addr860:
                                                                                          §§push(_loc3_.§="8§);
                                                                                          §§push(_loc3_.§="8§.y);
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                addr851:
                                                                                                §§pop().y = §§pop() - _loc3_.§["A§ * _loc17_;
                                                                                                addr852:
                                                                                                addr848:
                                                                                                addr850:
                                                                                                addr849:
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   §§push(_loc3_.m_angularVelocity);
                                                                                                   if(!(_loc19_ && this))
                                                                                                   {
                                                                                                      §§push(_loc3_.§"g§);
                                                                                                      if(!(_loc19_ && this))
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            §§push(_loc17_);
                                                                                                            if(_loc18_ || param1)
                                                                                                            {
                                                                                                               addr822:
                                                                                                               addr823:
                                                                                                               addr824:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(_loc6_);
                                                                                                                  if(!(_loc19_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * _loc16_);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                               addr729:
                                                                                                               addr825:
                                                                                                               §§push(_loc4_.§="8§);
                                                                                                               if(_loc18_ || _loc3_)
                                                                                                               {
                                                                                                                  addr738:
                                                                                                                  §§push(_loc4_.§="8§);
                                                                                                                  if(_loc18_ || this)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        addr750:
                                                                                                                        §§push(_loc4_.§["A§);
                                                                                                                        if(!(_loc19_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr758:
                                                                                                                           §§push(_loc16_);
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 addr763:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    if(_loc18_ || param1)
                                                                                                                                    {
                                                                                                                                       addr773:
                                                                                                                                       §§pop().x = §§pop() + §§pop();
                                                                                                                                       addr774:
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_.§="8§);
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_.§="8§);
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc19_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc19_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc19_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_.§["A§);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc19_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc19_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           addr707:
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr715:
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!(_loc19_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                 addr723:
                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                    §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                    if(_loc18_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc4_.§"g§);
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc17_);
                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr642:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                   if(!(_loc19_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * _loc16_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr852);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   return;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr723);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr642);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr774);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr851);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr763);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr758);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr862);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr750);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr707);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr865);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr773);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr715);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr865);
                                                                                                                                                }
                                                                                                                                                §§goto(addr738);
                                                                                                                                             }
                                                                                                                                             §§goto(addr865);
                                                                                                                                          }
                                                                                                                                          §§goto(addr729);
                                                                                                                                       }
                                                                                                                                       §§goto(addr825);
                                                                                                                                    }
                                                                                                                                    §§goto(addr848);
                                                                                                                                 }
                                                                                                                                 §§goto(addr850);
                                                                                                                              }
                                                                                                                              §§goto(addr863);
                                                                                                                           }
                                                                                                                           §§goto(addr849);
                                                                                                                        }
                                                                                                                        §§goto(addr864);
                                                                                                                     }
                                                                                                                     §§goto(addr773);
                                                                                                                  }
                                                                                                                  §§goto(addr859);
                                                                                                               }
                                                                                                               §§goto(addr857);
                                                                                                            }
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                         }
                                                                                                         §§goto(addr822);
                                                                                                      }
                                                                                                      §§goto(addr823);
                                                                                                   }
                                                                                                   §§goto(addr824);
                                                                                                   addr854:
                                                                                                }
                                                                                                §§goto(addr866);
                                                                                             }
                                                                                             §§goto(addr860);
                                                                                          }
                                                                                          §§goto(addr851);
                                                                                       }
                                                                                       §§goto(addr854);
                                                                                    }
                                                                                    §§goto(addr598);
                                                                                 }
                                                                                 §§goto(addr577);
                                                                              }
                                                                              §§goto(addr552);
                                                                           }
                                                                           §§goto(addr548);
                                                                        }
                                                                        §§goto(addr544);
                                                                     }
                                                                     §§goto(addr548);
                                                                  }
                                                                  §§goto(addr552);
                                                               }
                                                               §§goto(addr520);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc18_)
                                                            {
                                                               §§goto(addr507);
                                                               §§push(Number(§§pop()));
                                                            }
                                                            §§goto(addr507);
                                                         }
                                                         §§goto(addr502);
                                                      }
                                                   }
                                                   §§goto(addr474);
                                                }
                                             }
                                          }
                                          §§goto(addr339);
                                       }
                                       §§goto(addr172);
                                    }
                                    _loc5_ = §§pop();
                                    §§goto(addr155);
                                 }
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr136);
                     }
                  }
                  §§goto(addr142);
               }
               §§goto(addr99);
            }
            §§goto(addr94);
         }
         §§goto(addr99);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         if(_loc18_ || _loc2_)
         {
            if(this.§7"E§ > 0)
            {
               if(!(_loc17_ && _loc2_))
               {
                  return true;
               }
            }
         }
         var _loc3_:b2Body = b2internal::8!Z;
         var _loc4_:b2Body = b2internal::4"0;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc18_ || _loc2_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(!(_loc17_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc18_ || _loc3_)
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
            if(_loc18_ || this)
            {
               §§push(§§pop() * §§pop());
               if(!_loc17_)
               {
                  addr110:
                  §§push(_loc2_.col2.x);
                  if(_loc18_)
                  {
                     addr117:
                     §§push(§§pop() + §§pop() * _loc6_);
                     if(_loc18_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr117);
               }
               var _loc7_:* = §§pop();
               if(_loc18_)
               {
                  §§push(_loc2_.col1.y);
                  if(_loc18_)
                  {
                     §§push(_loc5_);
                     if(!(_loc17_ && _loc2_))
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc17_)
                        {
                           §§push(_loc2_.col2.y);
                           if(!_loc17_)
                           {
                              addr145:
                              §§push(§§pop() * _loc6_);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc18_ || _loc2_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc18_)
                              {
                                 _loc6_ = §§pop();
                                 addr171:
                                 if(!_loc17_)
                                 {
                                    §§push(_loc7_);
                                    if(!(_loc17_ && _loc3_))
                                    {
                                       addr169:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 _loc2_ = _loc4_.m_xf.R;
                                 §§push(this.m_localAnchor2.x);
                                 if(!_loc17_)
                                 {
                                    §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                    if(!_loc17_)
                                    {
                                       addr188:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(this.m_localAnchor2.y);
                                    if(_loc18_)
                                    {
                                       §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                       if(_loc18_)
                                       {
                                          addr202:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc9_:* = §§pop();
                                       if(_loc18_ || this)
                                       {
                                          §§push(_loc2_.col1);
                                          loop0:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc17_)
                                             {
                                                §§push(_loc8_);
                                                if(!_loc17_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc17_ && _loc2_))
                                                   {
                                                      §§push(_loc2_.col2);
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§push(_loc9_);
                                                            addr315:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc18_ || this)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!_loc17_)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        loop47:
                                                                        while(true)
                                                                        {
                                                                           addr240:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.col1);
                                                                              if(!_loc17_)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc18_ || _loc3_)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    if(_loc18_ || _loc3_)
                                                                                    {
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    addr287:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          break loop0;
                                                                                       }
                                                                                       §§push(Number(§§pop()));
                                                                                       while(_loc18_)
                                                                                       {
                                                                                          _loc9_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                break loop4;
                                                                                             }
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                addr221:
                                                                                                break;
                                                                                             }
                                                                                             if(_loc18_ || param1)
                                                                                             {
                                                                                                _loc8_ = §§pop();
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   continue loop47;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                 }
                                                                                 addr364:
                                                                                 §§push(Number(§§pop()));
                                                                                 break loop4;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        addr328:
                                                                     }
                                                                     break;
                                                                  }
                                                                  var _loc10_:* = §§pop();
                                                                  §§push(_loc4_.m_sweep.c.y);
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc18_)
                                                                        {
                                                                           addr378:
                                                                           §§push(_loc3_.m_sweep.c.y);
                                                                           if(_loc18_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc18_)
                                                                              {
                                                                                 addr388:
                                                                                 §§push(§§pop() - _loc6_);
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    addr391:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc11_:* = §§pop();
                                                                                 var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                                                                 if(!(_loc17_ && _loc2_))
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    if(!(_loc17_ && _loc2_))
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(!(_loc17_ && this))
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                _loc10_ = §§pop();
                                                                                                if(_loc18_ || param1)
                                                                                                {
                                                                                                   addr441:
                                                                                                   §§push(_loc11_);
                                                                                                   if(!(_loc17_ && _loc3_))
                                                                                                   {
                                                                                                      addr459:
                                                                                                      §§push(_loc12_);
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            addr465:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               _loc11_ = §§pop();
                                                                                                               addr469:
                                                                                                               §§push(_loc12_);
                                                                                                               if(!(_loc17_ && _loc3_))
                                                                                                               {
                                                                                                                  addr479:
                                                                                                                  §§push(§§pop() - this.§+!@§);
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         var _loc13_:* = §§pop();
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            §§push(b2Math);
                                                                                                            §§push(_loc13_);
                                                                                                            §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                            }
                                                                                                            §§push(§§pop().§<O§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                            if(!(_loc17_ && param1))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!_loc17_)
                                                                                                               {
                                                                                                                  addr506:
                                                                                                                  _loc13_ = §§pop();
                                                                                                                  §§push(this.§+J§);
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     addr511:
                                                                                                                     §§push(-§§pop());
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc13_);
                                                                                                                        if(!_loc17_)
                                                                                                                        {
                                                                                                                           addr518:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     var _loc14_:* = §§pop();
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        this.§8"=§.Set(_loc10_,_loc11_);
                                                                                                                     }
                                                                                                                     §§push(_loc14_);
                                                                                                                     if(!(_loc17_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * this.§8"=§.x);
                                                                                                                        if(!(_loc17_ && this))
                                                                                                                        {
                                                                                                                           addr546:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc15_:* = §§pop();
                                                                                                                        §§push(_loc14_);
                                                                                                                        if(!(_loc17_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * this.§8"=§.y);
                                                                                                                           if(_loc18_ || this)
                                                                                                                           {
                                                                                                                              addr567:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc16_:* = §§pop();
                                                                                                                           if(!(_loc17_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(_loc3_.m_sweep);
                                                                                                                              loop5:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 loop6:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_.m_sweep);
                                                                                                                                    loop7:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().c);
                                                                                                                                       loop8:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                          loop9:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.§["A§);
                                                                                                                                             loop10:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc15_);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   loop12:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      loop13:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         loop14:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.m_sweep);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().c);
                                                                                                                                                               loop16:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_.m_sweep);
                                                                                                                                                                  loop17:
                                                                                                                                                                  while(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().c);
                                                                                                                                                                     loop18:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                        loop19:
                                                                                                                                                                        while(!_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_.§["A§);
                                                                                                                                                                           loop20:
                                                                                                                                                                           while(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                              loop21:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 loop22:
                                                                                                                                                                                 while(!_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                       addr909:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc3_.m_sweep);
                                                                                                                                                                                          addr841:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc3_.m_sweep);
                                                                                                                                                                                             addr843:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().a);
                                                                                                                                                                                                if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc3_.§"g§);
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                                                                         if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr871:
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr867:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr872:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr873:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr874:
                                                                                                                                                                                                }
                                                                                                                                                                                                addr875:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().a = §§pop();
                                                                                                                                                                                                   addr876:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc4_.m_sweep);
                                                                                                                                                                                                      continue loop5;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr815:
                                                                                                                                                                                       if(!(_loc18_ || param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop13;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc4_.§["A§);
                                                                                                                                                                                       loop38:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                          loop39:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             loop40:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                loop41:
                                                                                                                                                                                                while(_loc18_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                   loop42:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc4_.m_sweep);
                                                                                                                                                                                                      loop43:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().c);
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc18_ || _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop17;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop().c);
                                                                                                                                                                                                               if(_loc18_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop18;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!(_loc18_ || _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop8;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                  if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc4_.§["A§);
                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc18_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc16_);
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop21;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop39;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop20;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop22;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop40;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr773:
                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop38;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!(_loc18_ || this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc18_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop43;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop14;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop42;
                                                                                                                                                                                                                     addr592:
                                                                                                                                                                                                                     if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        return b2Math.§"p§(_loc13_) < b2Settings.b2_linearSlop;
                                                                                                                                                                                                                        addr599:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr875);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().c);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr811:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop43;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr815);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop13;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr805:
                                                                                                                                                                                                         while(!_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop6;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop16;
                                                                                                                                                                                                         §§goto(addr811);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop41;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop19;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop10;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop12;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop9;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop7;
                                                                                                                                                               }
                                                                                                                                                               if(_loc17_ && this)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc4_.m_sweep);
                                                                                                                                                               if(!_loc17_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().a);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_.§"g§);
                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                              if(_loc18_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr663:
                                                                                                                                                                                    if(_loc18_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc15_);
                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr684:
                                                                                                                                                                                                §§push(§§pop() * (§§pop() - §§pop() * §§pop()));
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr689:
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(_loc18_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().a = §§pop();
                                                                                                                                                                                                      loop45:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc3_.§,6§();
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc18_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc18_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr909);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop45;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr876);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr599);
                                                                                                                                                                                                      addr697:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr875);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr874);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr871);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr872);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr684);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr873);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr684);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr867);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr663);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr684);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr689);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr843);
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
                                                                                                                           §§goto(addr697);
                                                                                                                        }
                                                                                                                        §§goto(addr567);
                                                                                                                     }
                                                                                                                     §§goto(addr546);
                                                                                                                  }
                                                                                                                  §§goto(addr518);
                                                                                                               }
                                                                                                               §§goto(addr511);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr506);
                                                                                                      }
                                                                                                      §§goto(addr479);
                                                                                                   }
                                                                                                   §§goto(addr465);
                                                                                                }
                                                                                                §§goto(addr469);
                                                                                             }
                                                                                             §§goto(addr459);
                                                                                          }
                                                                                          §§goto(addr465);
                                                                                       }
                                                                                       §§goto(addr479);
                                                                                    }
                                                                                    §§goto(addr465);
                                                                                 }
                                                                                 §§goto(addr441);
                                                                              }
                                                                              §§goto(addr391);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr388);
                                                                  }
                                                                  §§goto(addr378);
                                                               }
                                                               break;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc17_ && _loc2_))
                                                            {
                                                               break loop0;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr360);
                                                }
                                                §§goto(addr357);
                                             }
                                             break;
                                          }
                                          §§push(_loc3_.m_sweep.c.x);
                                          if(!_loc17_)
                                          {
                                             §§goto(addr357);
                                          }
                                          §§goto(addr361);
                                       }
                                       §§goto(addr328);
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr188);
                              }
                           }
                           _loc5_ = §§pop();
                           §§goto(addr171);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr169);
               }
               §§goto(addr171);
            }
            §§goto(addr117);
         }
         §§goto(addr110);
      }
   }
}
