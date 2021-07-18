package §;!#§
{
   import § o§.b2Body;
   import § o§.b2TimeStep;
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §6!H§.b2Mat22;
   import §6!H§.b2Mat33;
   import §6!H§.b2Math;
   import §6!H§.b2Transform;
   import §6!H§.b2Vec2;
   import §6!H§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var § do§:b2Vec2;
      
      private var §@!a§:b2Vec2;
      
      private var §0r§:Number;
      
      private var §2d§:b2Vec2;
      
      private var §%!&§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §5!R§:b2Mat33;
      
      private var §==§:b2Vec3;
      
      private var §>!§:Number;
      
      private var §+!$§:Number;
      
      private var §1c§:Number;
      
      private var §,I§:Number;
      
      private var §99§:Number;
      
      private var §`W§:Number;
      
      private var §3!e§:Boolean;
      
      private var §2!c§:Boolean;
      
      private var §,=§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
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
               loop1:
               while(true)
               {
                  this.§ do§ = new b2Vec2();
                  addr341:
                  while(true)
                  {
                     this.§@!a§ = new b2Vec2();
                     continue loop1;
                  }
               }
               if(_loc5_ && this)
               {
                  continue;
               }
               §§goto(addr265);
            }
         }
         §§goto(addr91);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || _loc2_)
         {
            §§push(this.§==§.x);
            if(_loc2_ || _loc3_)
            {
               §§push(this.§%!&§.x);
               if(!_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc2_ || this)
                  {
                     §§push(this.§+!$§);
                     if(_loc2_)
                     {
                        §§push(this.§==§.z);
                        if(_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(this.§2d§.x);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc2_ || param1)
                                 {
                                    addr88:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc3_ && param1))
                                    {
                                       addr96:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(_loc2_)
                                       {
                                          addr100:
                                          §§push(this.§==§.x);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§push(this.§%!&§.y);
                                             if(_loc2_ || this)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc2_ || param1)
                                                {
                                                   addr128:
                                                   §§push(this.§+!$§);
                                                   if(!_loc3_)
                                                   {
                                                      addr132:
                                                      §§push(this.§==§.z);
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         §§goto(addr165);
                                                      }
                                                   }
                                                   §§goto(addr163);
                                                }
                                                §§goto(addr165);
                                             }
                                             §§goto(addr132);
                                          }
                                          §§goto(addr128);
                                       }
                                    }
                                    §§goto(addr165);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr132);
                           }
                           addr165:
                           §§push(§§pop() + §§pop());
                           if(_loc2_ || this)
                           {
                              addr163:
                              §§push(§§pop() * this.§2d§.y);
                           }
                           return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr100);
               }
               §§goto(addr128);
            }
         }
         §§goto(addr96);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_ || this)
         {
            return §§pop() * this.§==§.y;
         }
      }
      
      public function § !Q§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::6z;
         var _loc2_:b2Body = b2internal::3D;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(!(_loc11_ && this))
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc11_ && _loc3_))
            {
               addr56:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(!(_loc11_ && this))
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc10_ || _loc3_)
               {
                  addr87:
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               var _loc8_:b2Vec2;
               §§push((_loc8_ = _loc1_.§?!4§(this.§ do§)).x);
               if(_loc10_ || _loc3_)
               {
                  §§push(_loc6_);
                  if(!(_loc11_ && this))
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc11_)
                     {
                        §§push(_loc8_.y);
                        if(!(_loc11_ && _loc1_))
                        {
                           §§push(§§pop() * _loc7_);
                           if(_loc10_ || _loc3_)
                           {
                           }
                           §§goto(addr148);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc11_)
                        {
                           addr147:
                           §§push(Number(§§pop()));
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr147);
                  }
                  addr148:
                  var _loc9_:* = §§pop();
                  return §§pop();
               }
               §§goto(addr147);
            }
            §§goto(addr87);
         }
         §§goto(addr56);
      }
      
      public function §,&§() : Number
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::6z;
         var _loc2_:b2Body = b2internal::3D;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc21_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!_loc21_)
            {
               addr43:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc22_ || _loc1_)
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(!_loc21_)
               {
                  addr62:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(_loc3_.col1.x);
               if(_loc22_ || _loc2_)
               {
                  §§push(_loc4_);
                  if(!(_loc21_ && _loc2_))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc22_ || this)
                     {
                        addr90:
                        §§push(_loc3_.col2.x);
                        if(!_loc21_)
                        {
                           addr95:
                           §§push(§§pop() * _loc5_);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc21_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc6_:* = §§pop();
                     if(!_loc21_)
                     {
                        §§push(_loc3_.col1.y);
                        if(!(_loc21_ && this))
                        {
                           §§push(_loc4_);
                           if(_loc22_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc22_)
                              {
                                 §§push(_loc3_.col2.y);
                                 if(!_loc21_)
                                 {
                                    addr127:
                                    §§push(§§pop() + §§pop() * _loc5_);
                                    if(_loc22_ || _loc1_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc22_)
                                       {
                                          _loc5_ = §§pop();
                                          addr151:
                                          if(!_loc21_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc22_ || _loc2_)
                                             {
                                                addr149:
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          _loc3_ = _loc2_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(!_loc21_)
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                             if(_loc22_ || _loc3_)
                                             {
                                                addr173:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc7_:* = §§pop();
                                             §§push(this.m_localAnchor2.y);
                                             if(_loc22_)
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                                if(_loc22_ || _loc3_)
                                                {
                                                   addr192:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc8_:* = §§pop();
                                                if(!_loc21_)
                                                {
                                                   §§push(_loc3_.col1);
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!_loc21_)
                                                      {
                                                         §§push(_loc7_);
                                                         if(!_loc21_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            while(true)
                                                            {
                                                               §§push(_loc3_.col2);
                                                               addr307:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr308:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     addr309:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr305:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         addr310:
                                                      }
                                                      addr311:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr312:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr313:
                                                            while(true)
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr226);
                                             }
                                             §§goto(addr192);
                                          }
                                          §§goto(addr173);
                                       }
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr127);
                              }
                              _loc4_ = §§pop();
                              §§goto(addr151);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr95);
               }
               §§goto(addr90);
            }
            §§goto(addr62);
         }
         §§goto(addr43);
      }
      
      public function §>!L§() : Boolean
      {
         return this.§3!e§;
      }
      
      public function §@>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::6z.SetAwake(true);
         }
         do
         {
            b2internal::3D.SetAwake(true);
            do
            {
               this.§3!e§ = param1;
            }
            while(!_loc3_);
            
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      public function §+!I§() : Number
      {
         return this.§1c§;
      }
      
      public function §`m§() : Number
      {
         return this.§,I§;
      }
      
      public function §64§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            b2internal::6z.SetAwake(true);
         }
         loop0:
         while(true)
         {
            b2internal::3D.SetAwake(true);
            while(true)
            {
               this.§1c§ = param1;
               while(_loc3_ || param2)
               {
                  continue loop0;
                  this.§,I§ = param2;
                  if(!_loc4_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §;!c§() : Boolean
      {
         return this.§2!c§;
      }
      
      public function §#<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            b2internal::6z.SetAwake(true);
            while(true)
            {
               b2internal::3D.SetAwake(true);
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            this.§2!c§ = param1;
            if(!_loc3_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            b2internal::6z.SetAwake(true);
            do
            {
               b2internal::3D.SetAwake(true);
               do
               {
                  this.§`W§ = param1;
               }
               while(!(_loc2_ || this));
               
            }
            while(_loc3_);
            
         }
      }
      
      public function § U§() : Number
      {
         return this.§`W§;
      }
      
      public function §1!h§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            b2internal::6z.SetAwake(true);
            do
            {
               b2internal::3D.SetAwake(true);
               do
               {
                  this.§99§ = param1;
               }
               while(!_loc2_);
               
            }
            while(_loc3_);
            
         }
      }
      
      public function §>4§() : Number
      {
         return this.§+!$§;
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
         var _loc25_:Boolean = true;
         var _loc26_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:* = NaN;
         var _loc19_:b2Vec3 = null;
         var _loc20_:b2Vec3 = null;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc2_:b2Body = b2internal::6z;
         var _loc3_:b2Body = b2internal::3D;
         var _loc4_:b2Vec2 = _loc2_.§2!@§;
         §§push(_loc2_.m_angularVelocity);
         if(!(_loc26_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:b2Vec2 = _loc3_.§2!@§;
         §§push(_loc3_.m_angularVelocity);
         if(!_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!(_loc26_ && _loc2_))
         {
            §§push(this.§2!c§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr683:
                        while(true)
                        {
                           §§push(this.§,=§ == b2internal::0!F);
                           if(_loc25_ || param1)
                           {
                              §§push(!§§pop());
                           }
                           if(_loc26_ && this)
                           {
                              break;
                           }
                           if(!_loc25_)
                           {
                              continue loop1;
                           }
                           if(!_loc25_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§2d§.x);
                        loop6:
                        while(true)
                        {
                           §§push(_loc6_.x);
                           if(_loc25_)
                           {
                              §§push(_loc4_.x);
                              loop7:
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§2d§);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop().y);
                                          if(_loc25_ || this)
                                          {
                                             §§push(_loc6_.y);
                                             if(_loc25_)
                                             {
                                                §§push(_loc4_.y);
                                                if(_loc25_ || param1)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc26_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(this.m_a2);
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               if(_loc25_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_a1);
                                                                        if(_loc26_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(_loc5_);
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc25_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc25_ || param1)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc14_ = §§pop();
                                                                                 addr676:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§>!§);
                                                                                    if(!_loc26_)
                                                                                    {
                                                                                       if(!(_loc25_ || _loc3_))
                                                                                       {
                                                                                          break;
                                                                                          addr545:
                                                                                       }
                                                                                       §§push(this.§`W§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc14_);
                                                                                          if(!_loc25_)
                                                                                          {
                                                                                             break loop13;
                                                                                          }
                                                                                          continue loop16;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    addr723:
                                                                                    addr723:
                                                                                    §§push(this.§%!&§.y);
                                                                                    if(_loc25_ || _loc3_)
                                                                                    {
                                                                                       addr733:
                                                                                       §§push(_loc6_.y);
                                                                                       if(!_loc26_)
                                                                                       {
                                                                                          addr737:
                                                                                          addr739:
                                                                                          §§push(§§pop() - _loc4_.y);
                                                                                          if(_loc25_ || _loc2_)
                                                                                          {
                                                                                             break loop13;
                                                                                          }
                                                                                          addr770:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc25_)
                                                                                          {
                                                                                             addr773:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc25_ || _loc2_)
                                                                                             {
                                                                                                addr781:
                                                                                                §§push(this.m_s1);
                                                                                                if(!_loc26_)
                                                                                                {
                                                                                                   addr787:
                                                                                                   §§push(§§pop() - §§pop() * _loc5_);
                                                                                                   if(_loc25_)
                                                                                                   {
                                                                                                      addr790:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   var _loc12_:* = §§pop();
                                                                                                   §§push(_loc7_);
                                                                                                   if(!(_loc26_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop() - _loc5_);
                                                                                                      if(!(_loc26_ && param1))
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   var _loc13_:* = §§pop();
                                                                                                   if(!(_loc26_ && param1))
                                                                                                   {
                                                                                                      §§push(this.§3!e§);
                                                                                                      if(_loc25_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(!(_loc26_ && _loc2_))
                                                                                                         {
                                                                                                            addr830:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!(_loc26_ && param1))
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(_loc25_)
                                                                                                                  {
                                                                                                                     addr842:
                                                                                                                     §§push(this.§,=§ == b2internal::9!d);
                                                                                                                     if(_loc25_)
                                                                                                                     {
                                                                                                                        addr849:
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc26_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(this.§2d§.x);
                                                                                                                              if(_loc25_ || this)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                 if(!_loc26_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_.x);
                                                                                                                                    if(_loc25_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(!(_loc26_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc25_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§2d§.y);
                                                                                                                                             if(_loc25_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.y);
                                                                                                                                                if(_loc25_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - _loc4_.y);
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc25_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!(_loc26_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(this.m_a2);
                                                                                                                                                            if(_loc25_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(_loc25_ || this)
                                                                                                                                                               {
                                                                                                                                                                  addr933:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc25_)
                                                                                                                                                                  {
                                                                                                                                                                     addr936:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc25_)
                                                                                                                                                                     {
                                                                                                                                                                        addr939:
                                                                                                                                                                        §§push(this.m_a1);
                                                                                                                                                                        if(!_loc25_)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        addr945:
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        if(_loc25_)
                                                                                                                                                                        {
                                                                                                                                                                           addr948:
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        _loc18_ = §§pop();
                                                                                                                                                                        _loc19_ = this.§==§.Copy();
                                                                                                                                                                        _loc20_ = this.§5!R§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§==§);
                                                                                                                                                                           loop95:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().§!!,§(_loc20_);
                                                                                                                                                                              loop96:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§,=§);
                                                                                                                                                                                 loop97:
                                                                                                                                                                                 while(§§pop() != b2internal::'M)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§,=§);
                                                                                                                                                                                    if(!(_loc25_ || _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(§§pop() == b2internal::6!f)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop98:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc26_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break loop97;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(this.§==§);
                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(b2Math.§?I§(this.§==§.z,0));
                                                                                                                                                                                                if(_loc25_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().z = §§pop();
                                                                                                                                                                                                   loop99:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1076:
                                                                                                                                                                                                      loop100:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                                                                         loop101:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(-§§pop());
                                                                                                                                                                                                            if(_loc25_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§==§);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().z);
                                                                                                                                                                                                                  addr1089:
                                                                                                                                                                                                                  addr990:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc19_.z);
                                                                                                                                                                                                                     addr1091:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        addr1092:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§5!R§);
                                                                                                                                                                                                                           addr1094:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().col3);
                                                                                                                                                                                                                              addr1095:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                                                                 addr1096:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    addr1097:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(this.§==§);
                                                                                                                                                                                                                  if(!(_loc25_ || _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop().z);
                                                                                                                                                                                                                  if(!(_loc26_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc25_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc19_.z);
                                                                                                                                                                                                                        if(_loc25_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc25_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1033:
                                                                                                                                                                                                                                 §§push(this.§5!R§);
                                                                                                                                                                                                                                 if(_loc25_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().col3);
                                                                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1041:
                                                                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1044:
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(_loc25_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc25_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1052:
                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                if(_loc25_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc25_ || _loc2_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc25_ || _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop101;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   _loc22_ = §§pop();
                                                                                                                                                                                                                                                   if(!(_loc25_ || param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop99;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop100;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1181:
                                                                                                                                                                                                                                                   _loc23_ = this.§5!R§.Solve22(new b2Vec2(),_loc21_,_loc22_);
                                                                                                                                                                                                                                                   §§push(_loc23_);
                                                                                                                                                                                                                                                   §§push(_loc23_.x);
                                                                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + _loc19_.x);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                                                                   if(_loc25_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc23_);
                                                                                                                                                                                                                                                      §§push(_loc23_.y);
                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + _loc19_.y);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§==§);
                                                                                                                                                                                                                                                         loop119:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc23_.x);
                                                                                                                                                                                                                                                            addr1654:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                                                                                                                               continue loop119;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!(_loc25_ || this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                                                                         if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc25_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1342);
                                                                                                                                                                                                                                                                     §§push(b2internal::^l * _loc10_);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1568);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1495);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1505);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1361);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr2058);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1089);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc21_ = §§pop();
                                                                                                                                                                                                                                                continue loop99;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1099:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1092);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1096);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1095);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1094);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1044);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1091);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1041);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1097);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1033);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1098:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1099);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1076);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc25_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break loop98;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(b2Math.§@e§(this.§==§.z,0));
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1166:
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().z = §§pop();
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc26_ && _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop96;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                             if(!(_loc26_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                if(_loc25_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr983:
                                                                                                                                                                                                   if(!(_loc26_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr990);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1098);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1052);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr983);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1181);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop95;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1076);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1166);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1116);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr948);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr945);
                                                                                                                                                               }
                                                                                                                                                               addr944:
                                                                                                                                                               §§goto(addr945);
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr939);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr933);
                                                                                                                                                }
                                                                                                                                                §§goto(addr944);
                                                                                                                                             }
                                                                                                                                             §§goto(addr936);
                                                                                                                                          }
                                                                                                                                          §§goto(addr948);
                                                                                                                                       }
                                                                                                                                       §§goto(addr939);
                                                                                                                                    }
                                                                                                                                    §§goto(addr933);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr939);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           _loc24_ = this.§5!R§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
                                                                                                                           if(_loc25_)
                                                                                                                           {
                                                                                                                              §§push(this.§==§);
                                                                                                                              loop54:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§==§);
                                                                                                                                 addr2005:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    addr2006:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc24_.x);
                                                                                                                                       addr2008:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          addr2009:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                             continue loop54;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1847);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr849);
                                                                                                                  }
                                                                                                                  §§goto(addr939);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr849);
                                                                                                      }
                                                                                                      §§goto(addr830);
                                                                                                   }
                                                                                                   §§goto(addr842);
                                                                                                }
                                                                                                §§goto(addr787);
                                                                                             }
                                                                                             §§goto(addr790);
                                                                                          }
                                                                                          §§goto(addr787);
                                                                                       }
                                                                                       break loop13;
                                                                                    }
                                                                                 }
                                                                                 continue loop12;
                                                                                 addr146:
                                                                                 if(_loc26_ && _loc2_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr153:
                                                                                 _loc7_ = §§pop();
                                                                                 if(!(_loc26_ && param1))
                                                                                 {
                                                                                    addr161:
                                                                                    if(!(_loc26_ && _loc3_))
                                                                                    {
                                                                                       addr168:
                                                                                       if(!(_loc26_ && _loc2_))
                                                                                       {
                                                                                          addr175:
                                                                                          if(_loc25_ || param1)
                                                                                          {
                                                                                             if(_loc25_ || param1)
                                                                                             {
                                                                                                if(_loc25_)
                                                                                                {
                                                                                                   if(_loc25_)
                                                                                                   {
                                                                                                      if(true)
                                                                                                      {
                                                                                                         break loop4;
                                                                                                      }
                                                                                                      loop52:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         §§push(_loc6_.y);
                                                                                                         if(_loc25_)
                                                                                                         {
                                                                                                            §§push(§§pop() + b2internal::1! * _loc9_);
                                                                                                         }
                                                                                                         §§pop().y = §§pop();
                                                                                                         addr206:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            if(_loc25_ || _loc2_)
                                                                                                            {
                                                                                                               if(_loc26_ && this)
                                                                                                               {
                                                                                                                  break loop52;
                                                                                                               }
                                                                                                               §§push(b2internal::4!3 * _loc11_);
                                                                                                               if(_loc25_)
                                                                                                               {
                                                                                                                  addr110:
                                                                                                                  if(!(_loc26_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        addr120:
                                                                                                                        if(!(_loc26_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr127:
                                                                                                                           if(_loc25_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(_loc25_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(!_loc26_)
                                                                                                                                 {
                                                                                                                                    if(_loc25_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr146);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(_loc25_)
                                                                                                                                          {
                                                                                                                                             _loc15_ = §§pop();
                                                                                                                                             loop33:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§2d§);
                                                                                                                                                addr440:
                                                                                                                                                addr762:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc25_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      if(!(_loc25_ || this))
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      if(_loc25_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         while(_loc25_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc8_ = §§pop();
                                                                                                                                                               addr462:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                  continue loop33;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr127);
                                                                                                                                                         }
                                                                                                                                                         continue loop6;
                                                                                                                                                         addr458:
                                                                                                                                                      }
                                                                                                                                                      continue loop13;
                                                                                                                                                   }
                                                                                                                                                   continue loop10;
                                                                                                                                                }
                                                                                                                                                addr762:
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                if(_loc25_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr770);
                                                                                                                                                }
                                                                                                                                                §§goto(addr787);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       addr755:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr758);
                                                                                                                                       }
                                                                                                                                       §§goto(addr787);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr461);
                                                                                                                              }
                                                                                                                              §§goto(addr790);
                                                                                                                           }
                                                                                                                           §§goto(addr458);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr781);
                                                                                                                  }
                                                                                                                  §§goto(addr506);
                                                                                                               }
                                                                                                               §§goto(addr762);
                                                                                                            }
                                                                                                            §§goto(addr790);
                                                                                                            §§goto(addr153);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               §§push(b2internal::^l * _loc10_);
                                                                                                               if(_loc25_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc25_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        if(_loc25_)
                                                                                                                        {
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              _loc5_ = §§pop();
                                                                                                                              §§goto(addr258);
                                                                                                                           }
                                                                                                                           §§goto(addr318);
                                                                                                                        }
                                                                                                                        §§goto(addr354);
                                                                                                                     }
                                                                                                                     §§goto(addr689);
                                                                                                                  }
                                                                                                                  §§goto(addr723);
                                                                                                               }
                                                                                                               §§goto(addr787);
                                                                                                            }
                                                                                                            break;
                                                                                                            §§goto(addr120);
                                                                                                         }
                                                                                                         §§goto(addr371);
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   §§goto(addr676);
                                                                                                }
                                                                                                §§goto(addr515);
                                                                                             }
                                                                                             §§goto(addr416);
                                                                                          }
                                                                                          §§goto(addr389);
                                                                                       }
                                                                                       §§goto(addr258);
                                                                                    }
                                                                                    §§goto(addr223);
                                                                                 }
                                                                                 §§goto(addr206);
                                                                              }
                                                                           }
                                                                           §§goto(addr762);
                                                                        }
                                                                     }
                                                                     §§push(_loc4_.x);
                                                                     if(_loc25_ || _loc3_)
                                                                     {
                                                                        break loop10;
                                                                     }
                                                                     §§goto(addr737);
                                                                  }
                                                                  addr652:
                                                               }
                                                               break;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc25_ || _loc3_)
                                                   {
                                                      §§goto(addr755);
                                                   }
                                                   §§goto(addr773);
                                                }
                                                §§goto(addr739);
                                             }
                                             break;
                                          }
                                          §§goto(addr652);
                                       }
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc26_ && _loc2_))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc26_ && this))
                                          {
                                             §§goto(addr723);
                                          }
                                          §§goto(addr781);
                                       }
                                       §§goto(addr773);
                                    }
                                 }
                              }
                           }
                           §§goto(addr787);
                        }
                     }
                  }
                  §§push(this.§%!&§.x);
                  if(_loc25_)
                  {
                     §§goto(addr689);
                  }
                  §§goto(addr758);
               }
            }
         }
         §§goto(addr315);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
