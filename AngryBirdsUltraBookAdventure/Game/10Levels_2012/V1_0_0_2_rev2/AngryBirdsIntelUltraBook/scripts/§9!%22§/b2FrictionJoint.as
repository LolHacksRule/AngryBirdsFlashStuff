package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Mat22;
   import §>H§.b2Math;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   import §`w§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §4!'§:b2Vec2;
      
      private var §^6§:b2Vec2;
      
      public var §31§:b2Mat22;
      
      public var §3Y§:Number;
      
      private var §+!K§:b2Vec2;
      
      private var § Y§:Number;
      
      private var §;!?§:Number;
      
      private var §3§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§4!'§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§^6§ = new b2Vec2();
               while(true)
               {
                  this.§31§ = new b2Mat22();
                  continue loop0;
                  loop7:
                  while(!(_loc3_ && _loc3_))
                  {
                     this.§3Y§ = 0;
                     loop8:
                     do
                     {
                        this.§+!K§.§`!5§();
                        loop9:
                        for(; _loc2_; if(_loc2_ || param1)
                        {
                           continue loop8;
                        })
                        {
                           this.§ Y§ = 0;
                           while(_loc2_ || _loc3_)
                           {
                              this.§;!?§ = param1.§`z§;
                              do
                              {
                                 this.§3§ = param1.maxTorque;
                              }
                              while(_loc3_ && param1);
                              
                              if(_loc2_ || _loc2_)
                              {
                                 continue loop9;
                              }
                           }
                           loop5:
                           while(true)
                           {
                              this.§^6§.SetV(param1.§%!e§);
                              addr127:
                              while(!_loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    this.§31§.§`!5§();
                                    break loop9;
                                 }
                                 continue loop0;
                              }
                              addr143:
                              while(!_loc3_)
                              {
                                 this.§4!'§.SetV(param1.§<?§);
                                 continue loop5;
                              }
                              while(true)
                              {
                                 super(param1);
                                 §§goto(addr143);
                              }
                           }
                           addr89:
                        }
                        continue loop7;
                     }
                     while(_loc3_ && param1);
                     
                     if(!(_loc3_ && param1))
                     {
                        return;
                     }
                     §§goto(addr127);
                  }
               }
            }
         }
         §§goto(addr138);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6!G.GetWorldPoint(this.§4!'§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::0!w.GetWorldPoint(this.§^6§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc2_)
         {
            §§push(this.§+!K§.x);
            if(!(_loc2_ && param1))
            {
               §§goto(addr42);
            }
            §§goto(addr50);
         }
         addr42:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc3_ || this)
         {
            addr50:
            §§push(§§pop() * this.§+!K§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_ || _loc3_)
         {
            return §§pop() * this.§ Y§;
         }
      }
      
      public function §+l§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§;!?§ = param1;
         }
      }
      
      public function §3!§() : Number
      {
         return this.§;!?§;
      }
      
      public function §6[§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3§ = param1;
         }
      }
      
      public function §2$§() : Number
      {
         return this.§3§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:b2Mat22 = null;
         var _loc15_:b2Vec2 = null;
         _loc4_ = b2internal::6!G;
         _loc5_ = b2internal::0!w;
         _loc2_ = _loc4_.m_xf.R;
         if(_loc17_)
         {
            §§push(this.§4!'§);
            if(_loc17_ || param1)
            {
               §§push(§§pop().x);
               if(!_loc16_)
               {
                  §§push(_loc4_.m_sweep);
                  if(!(_loc16_ && _loc2_))
                  {
                     §§push(§§pop().localCenter);
                     if(_loc17_ || _loc3_)
                     {
                        §§push(§§pop().x);
                        if(!(_loc16_ && _loc2_))
                        {
                           §§push(§§pop() - §§pop());
                           if(!(_loc16_ && this))
                           {
                              §§push(Number(§§pop()));
                              if(_loc17_)
                              {
                                 _loc6_ = §§pop();
                                 addr108:
                                 addr106:
                                 §§push(this.§4!'§.y);
                                 if(_loc16_)
                                 {
                                 }
                                 addr119:
                                 var _loc7_:* = §§pop();
                                 if(_loc17_)
                                 {
                                    §§push(_loc2_.col1);
                                    loop0:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr231:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(_loc17_ || param1)
                                          {
                                             §§push(§§pop() * §§pop());
                                             while(true)
                                             {
                                                §§push(_loc2_.col2);
                                                addr242:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc17_ || this)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         addr251:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                      }
                                                      addr250:
                                                   }
                                                   addr252:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr253:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr254:
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            addr255:
                                                            while(true)
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr240:
                                          }
                                          §§goto(addr250);
                                       }
                                    }
                                 }
                                 §§goto(addr255);
                              }
                           }
                           addr114:
                           §§push(_loc4_.m_sweep.localCenter.y);
                        }
                        §§push(§§pop() - §§pop());
                        if(!_loc16_)
                        {
                           §§goto(addr119);
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr119);
                     }
                  }
                  §§goto(addr114);
               }
               §§goto(addr119);
            }
            §§goto(addr108);
         }
         §§goto(addr106);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc18_:* = NaN;
         var _loc4_:b2Body = b2internal::6!G;
         var _loc5_:b2Body = b2internal::0!w;
         var _loc6_:b2Vec2 = _loc4_.§^O§;
         §§push(_loc4_.m_angularVelocity);
         if(!(_loc27_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§^O§;
         §§push(_loc5_.m_angularVelocity);
         if(!(_loc27_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§7n§);
         if(!(_loc27_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§7n§);
         if(_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§;5§);
         if(!(_loc27_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§;5§);
         if(!_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§4!'§.x);
         if(!(_loc27_ && this))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc26_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§4!'§.y);
         if(_loc26_ || _loc2_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(_loc26_ || _loc2_)
            {
               addr144:
               §§push(Number(§§pop()));
            }
            var _loc15_:* = §§pop();
            if(!_loc27_)
            {
               §§push(_loc2_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  addr251:
                  while(true)
                  {
                     §§push(_loc14_);
                     addr252:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr253:
                        while(true)
                        {
                           §§push(_loc2_.col2);
                           addr255:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr256:
                              while(true)
                              {
                                 §§push(_loc15_);
                                 addr257:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr258:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr259:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr260:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  loop11:
                  while(true)
                  {
                     §§push(_loc2_.col1);
                     if(!(_loc26_ || _loc3_))
                     {
                        continue loop0;
                     }
                     §§push(§§pop().y);
                     if(_loc26_ || _loc2_)
                     {
                        if(_loc26_)
                        {
                           §§push(_loc14_);
                           if(_loc26_ || _loc2_)
                           {
                              if(_loc26_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc26_ || this)
                                 {
                                    §§push(_loc2_.col2);
                                    if(_loc26_)
                                    {
                                       §§push(§§pop().y);
                                       if(_loc26_)
                                       {
                                          §§push(_loc15_);
                                          if(!(_loc27_ && _loc3_))
                                          {
                                             addr227:
                                             §§push(§§pop() * §§pop());
                                             if(_loc26_)
                                             {
                                                if(_loc26_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc26_ || _loc3_)
                                                   {
                                                      addr239:
                                                      if(_loc26_)
                                                      {
                                                         addr242:
                                                         §§push(Number(§§pop()));
                                                         loop12:
                                                         for(; _loc26_; §§push(_loc3_),if(_loc26_ || param1)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         },if(!_loc27_)
                                                         {
                                                            if(_loc26_ || _loc2_)
                                                            {
                                                               _loc14_ = §§pop();
                                                               if(!_loc26_)
                                                               {
                                                                  §§goto(addr245);
                                                               }
                                                               if(false)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               _loc2_ = _loc5_.m_xf.R;
                                                               §§push(this.§^6§.x);
                                                               if(_loc26_)
                                                               {
                                                                  §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                                  if(!(_loc27_ && _loc2_))
                                                                  {
                                                                     addr284:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc16_:* = §§pop();
                                                                  §§push(this.§^6§.y);
                                                                  if(!(_loc27_ && this))
                                                                  {
                                                                     §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                                     if(!(_loc27_ && this))
                                                                     {
                                                                        addr308:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc17_:* = §§pop();
                                                                     if(!(_loc27_ && param1))
                                                                     {
                                                                        §§push(_loc2_.col1);
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc16_);
                                                                              addr441:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc26_ || param1)
                                                                                 {
                                                                                    §§push(_loc2_.col2);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr452:
                                                                                       addr382:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc17_);
                                                                                          addr453:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr454:
                                                                                             do
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             while(!(_loc27_ && _loc2_));
                                                                                             
                                                                                             addr468:
                                                                                             §§push(§§pop() - _loc7_);
                                                                                             if(_loc26_)
                                                                                             {
                                                                                                addr472:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc19_:* = §§pop();
                                                                                             §§push(this.§3Y§);
                                                                                             if(_loc26_ || this)
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   §§push(§§pop() * _loc19_);
                                                                                                   if(!(_loc27_ && this))
                                                                                                   {
                                                                                                      addr495:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   var _loc20_:* = §§pop();
                                                                                                   §§push(this.§ Y§);
                                                                                                   if(!(_loc27_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   var _loc21_:* = §§pop();
                                                                                                   if(!(_loc27_ && param1))
                                                                                                   {
                                                                                                      §§push(param1.§^Z§);
                                                                                                      if(!(_loc27_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(this.§3§);
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  _loc18_ = §§pop();
                                                                                                                  loop27:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this);
                                                                                                                     §§push(b2Math);
                                                                                                                     §§push(this.§ Y§);
                                                                                                                     if(_loc26_)
                                                                                                                     {
                                                                                                                        §§push(_loc20_);
                                                                                                                        if(!(_loc27_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr659:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           §§push(_loc18_);
                                                                                                                           if(!(_loc27_ && this))
                                                                                                                           {
                                                                                                                              addr667:
                                                                                                                              §§push(-§§pop());
                                                                                                                           }
                                                                                                                           §§pop().§ Y§ = §§pop().§]#§(§§pop(),§§pop(),_loc18_);
                                                                                                                           loop28:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§ Y§);
                                                                                                                              if(_loc26_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc21_);
                                                                                                                                 if(!(_loc27_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(_loc26_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(!(_loc27_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          _loc20_ = §§pop();
                                                                                                                                          loop29:
                                                                                                                                          while(!_loc27_)
                                                                                                                                          {
                                                                                                                                             loop30:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                if(_loc26_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                      if(_loc26_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         loop31:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            if(!(_loc27_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc7_ = §§pop();
                                                                                                                                                                  while(_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc13_);
                                                                                                                                                                           if(_loc26_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop31;
                                                                                                                                                                           }
                                                                                                                                                                           addr710:
                                                                                                                                                                           addr710:
                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              addr713:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr724:
                                                                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                                                                    if(_loc26_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    addr746:
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr749:
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       break loop28;
                                                                                                                                                                                    }
                                                                                                                                                                                    break loop28;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr749);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              if(_loc26_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr741:
                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr745:
                                                                                                                                                                                    §§goto(addr746);
                                                                                                                                                                                    §§push(§§pop() * _loc15_);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr746);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr745);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     _loc9_ = §§pop();
                                                                                                                                                                     if(_loc27_ && this)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop28;
                                                                                                                                                                     }
                                                                                                                                                                     if(false)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop30;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc8_.x);
                                                                                                                                                                     if(_loc26_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        break loop31;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr749);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop29;
                                                                                                                                                               }
                                                                                                                                                               addr601:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr749);
                                                                                                                                                         }
                                                                                                                                                         addr702:
                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                         if(!(_loc27_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr710);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr745);
                                                                                                                                                         addr580:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr745);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr580);
                                                                                                                                                }
                                                                                                                                                §§goto(addr601);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop27;
                                                                                                                                       }
                                                                                                                                       §§goto(addr702);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr746);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           var _loc22_:* = §§pop();
                                                                                                                           §§push(_loc8_.y);
                                                                                                                           if(_loc26_)
                                                                                                                           {
                                                                                                                              §§push(_loc9_);
                                                                                                                              if(!(_loc27_ && this))
                                                                                                                              {
                                                                                                                                 §§push(_loc16_);
                                                                                                                                 if(_loc26_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc26_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc26_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                          if(!(_loc27_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                if(!(_loc27_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr799:
                                                                                                                                                   §§push(§§pop() - §§pop() * _loc14_);
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      addr802:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr799);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr799);
                                                                                                                                       }
                                                                                                                                       var _loc23_:* = §§pop();
                                                                                                                                       §§push(b2Math);
                                                                                                                                       §§push(this.§31§);
                                                                                                                                       §§push(§§findproperty(b2Vec2));
                                                                                                                                       §§push(_loc22_);
                                                                                                                                       if(!(_loc27_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(-§§pop());
                                                                                                                                       }
                                                                                                                                       §§push(_loc23_);
                                                                                                                                       if(!(_loc27_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(-§§pop());
                                                                                                                                       }
                                                                                                                                       var _loc24_:b2Vec2 = §§pop().§'q§(§§pop(),new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                       var _loc25_:b2Vec2 = this.§+!K§.Copy();
                                                                                                                                       if(!(_loc27_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(this.§+!K§);
                                                                                                                                          loop34:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().§7x§(_loc24_);
                                                                                                                                             loop35:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(param1.§^Z§);
                                                                                                                                                if(!(_loc27_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§;!?§);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      addr912:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr911:
                                                                                                                                                }
                                                                                                                                                loop38:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc18_ = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      loop40:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§+!K§);
                                                                                                                                                         loop41:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().§ !W§());
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               continue loop38;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc27_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                               if(_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * _loc18_);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr911);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§+!K§);
                                                                                                                                                                     while(!_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().Normalize();
                                                                                                                                                                        addr898:
                                                                                                                                                                        §§push(this.§+!K§);
                                                                                                                                                                        if(!(_loc26_ || _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        addr853:
                                                                                                                                                                        if(!(_loc26_ || _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop41;
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§^$§(_loc18_);
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop35;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr898);
                                                                                                                                                                              §§goto(addr853);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop41;
                                                                                                                                                                           addr896:
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           break loop40;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(true)
                                                                                                                                                                           {
                                                                                                                                                                              break loop41;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop40;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop34;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr896);
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr912);
                                                                                                                                                         }
                                                                                                                                                         _loc24_ = b2Math.§54§(this.§+!K§,_loc25_);
                                                                                                                                                         if(!(_loc27_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            §§push(_loc6_.x);
                                                                                                                                                            if(_loc26_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                               if(!(_loc27_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * _loc24_.x);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            loop45:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                               §§push(_loc6_.y);
                                                                                                                                                               if(!_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc10_);
                                                                                                                                                                  if(!(_loc27_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * _loc24_.y);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                  loop47:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc14_);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc24_.y);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc24_.x);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc7_ = §§pop();
                                                                                                                                                                                                   addr1147:
                                                                                                                                                                                                   while(_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                      §§push(_loc8_.x);
                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                         if(!(_loc27_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop45;
                                                                                                                                                                                                   addr1063:
                                                                                                                                                                                                   if(!(_loc26_ || _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop47;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1073:
                                                                                                                                                                                                   _loc9_ = Number(§§pop());
                                                                                                                                                                                                   loop61:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc4_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc27_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc26_ || _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop61;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1147);
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
                                                                                                                                                         §§goto(addr1123);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr866);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr799);
                                                                                                                           }
                                                                                                                           §§goto(addr802);
                                                                                                                        }
                                                                                                                        §§goto(addr667);
                                                                                                                     }
                                                                                                                     §§goto(addr659);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr741);
                                                                                                            }
                                                                                                            §§goto(addr724);
                                                                                                         }
                                                                                                         §§goto(addr710);
                                                                                                      }
                                                                                                      §§goto(addr702);
                                                                                                   }
                                                                                                   §§goto(addr604);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr495);
                                                                                          }
                                                                                       }
                                                                                       §§push(_loc2_.col2);
                                                                                       if(_loc27_ && _loc3_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc26_ || this)
                                                                                       {
                                                                                          addr399:
                                                                                          if(_loc26_ || _loc3_)
                                                                                          {
                                                                                             §§push(_loc17_);
                                                                                             if(_loc26_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc27_ && param1))
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc27_ && this))
                                                                                                   {
                                                                                                      addr425:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         addr428:
                                                                                                         if(_loc27_ && _loc2_)
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         _loc17_ = §§pop();
                                                                                                         do
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            if(!(_loc26_ || this))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  addr464:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr463:
                                                                                                            }
                                                                                                         }
                                                                                                         while(_loc16_ = §§pop(), !_loc26_);
                                                                                                         
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     §§goto(addr468);
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            §§goto(addr472);
                                                                                                            addr337:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr464);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr468);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr453);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr452);
                                                                                          }
                                                                                          §§goto(addr453);
                                                                                       }
                                                                                       §§goto(addr468);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr463);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr337);
                                                                  }
                                                                  §§goto(addr308);
                                                               }
                                                               §§goto(addr284);
                                                            }
                                                            break loop11;
                                                         })
                                                         {
                                                            _loc15_ = §§pop();
                                                            while(_loc26_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop11;
                                                            }
                                                         }
                                                         §§goto(addr253);
                                                         addr242:
                                                      }
                                                      §§goto(addr260);
                                                   }
                                                   §§goto(addr242);
                                                }
                                                §§goto(addr256);
                                             }
                                             §§goto(addr258);
                                          }
                                          §§goto(addr257);
                                       }
                                       §§goto(addr227);
                                    }
                                    §§goto(addr255);
                                 }
                                 §§goto(addr239);
                              }
                              §§goto(addr252);
                           }
                           §§goto(addr227);
                        }
                        §§goto(addr259);
                     }
                     §§goto(addr242);
                  }
                  §§goto(addr251);
               }
            }
            §§goto(addr261);
         }
         §§goto(addr144);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
