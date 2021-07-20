package §;!#§
{
   import § o§.b2Body;
   import § o§.b2TimeStep;
   import §"0§.b2internal;
   import §6!H§.b2Mat22;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §-!5§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §1E§:b2Vec2;
      
      private var §+L§:b2Vec2;
      
      private var §==§:b2Vec2;
      
      private var §>§:b2Mat22;
      
      private var §5§:b2Vec2;
      
      private var §"! §:Number;
      
      private var § A§:Number;
      
      private var §"&§:Number;
      
      private var §76§:Number;
      
      private var §]!F§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc4_:b2Mat22 = null;
         if(!(_loc6_ && this))
         {
            this.§-!5§ = new b2Mat22();
            while(true)
            {
               this.K1 = new b2Mat22();
               loop1:
               while(true)
               {
                  this.K2 = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.§1E§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§+L§ = new b2Vec2();
                        while(_loc5_)
                        {
                           this.§==§ = new b2Vec2();
                           loop5:
                           for(; _loc5_ || _loc3_; while(_loc5_ || param1)
                           {
                              super(param1);
                              §§goto(addr117);
                              §§goto(addr96);
                           })
                           {
                              this.§>§ = new b2Mat22();
                              while(true)
                              {
                                 this.§5§ = new b2Vec2();
                                 continue loop5;
                                 addr103:
                                 if(!(_loc5_ || this))
                                 {
                                    continue;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop3;
                                 }
                                 §§push(this.§+L§);
                                 if(_loc5_ || this)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§push(§§pop() - b2internal::3D.m_xf.position.x);
                                       if(_loc5_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc6_ && param1))
                                          {
                                             addr62:
                                             _loc2_ = §§pop();
                                             if(!(_loc6_ && param1))
                                             {
                                                continue loop1;
                                             }
                                             addr193:
                                             loop10:
                                             while(true)
                                             {
                                                if(_loc5_ || _loc2_)
                                                {
                                                   addr96:
                                                   if(!(_loc5_ || param1))
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§goto(addr103);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      addr81:
                                                      while(true)
                                                      {
                                                         §§push(this.§+L§);
                                                         if(_loc6_)
                                                         {
                                                            break loop10;
                                                         }
                                                         §§pop().SetV(param1.target);
                                                         continue loop10;
                                                      }
                                                      continue loop10;
                                                   }
                                                   addr117:
                                                }
                                             }
                                             addr193:
                                             §§push(§§pop().y);
                                             if(_loc5_ || param1)
                                             {
                                                addr201:
                                                §§push(§§pop() - b2internal::3D.m_xf.position.y);
                                                if(_loc5_)
                                                {
                                                   addr208:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc3_:* = §§pop();
                                             _loc4_ = b2internal::3D.m_xf.R;
                                             if(_loc5_ || _loc3_)
                                             {
                                                addr347:
                                                §§push(this.§1E§);
                                                §§push(_loc2_);
                                                if(!_loc6_)
                                                {
                                                   addr372:
                                                   addr376:
                                                   addr375:
                                                   addr377:
                                                   §§push(_loc4_.col1.x);
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr371:
                                                      §§push(§§pop() * §§pop());
                                                      §§push(_loc3_);
                                                   }
                                                   §§pop().x = §§pop() + §§pop() * _loc4_.col1.y;
                                                   addr378:
                                                   §§push(this.§1E§);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(_loc4_.col2.x);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc5_)
                                                                  {
                                                                     addr319:
                                                                     §§push(_loc3_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr322:
                                                                        §§push(_loc4_.col2.y);
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           addr333:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 addr343:
                                                                                 §§pop().y = §§pop() + §§pop();
                                                                                 this.§"! § = param1.§4d§;
                                                                                 this.§==§.§7_§();
                                                                                 addr344:
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       this.§ A§ = param1.§7!=§;
                                                                                       this.§"&§ = param1.§'m§;
                                                                                       this.§76§ = 0;
                                                                                       addr273:
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(!(_loc6_ && _loc2_))
                                                                                          {
                                                                                             this.§]!F§ = 0;
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(_loc5_ || param1)
                                                                                                {
                                                                                                   if(!(_loc5_ || _loc3_))
                                                                                                   {
                                                                                                      §§goto(addr344);
                                                                                                   }
                                                                                                   return;
                                                                                                   addr247:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr273);
                                                                                          }
                                                                                          §§goto(addr344);
                                                                                       }
                                                                                       addr267:
                                                                                       §§goto(addr267);
                                                                                    }
                                                                                    §§goto(addr378);
                                                                                 }
                                                                                 addr288:
                                                                                 §§goto(addr288);
                                                                              }
                                                                              §§goto(addr372);
                                                                           }
                                                                           §§goto(addr376);
                                                                        }
                                                                        §§goto(addr375);
                                                                     }
                                                                     §§goto(addr333);
                                                                  }
                                                                  §§goto(addr343);
                                                               }
                                                               §§goto(addr322);
                                                            }
                                                            §§goto(addr371);
                                                         }
                                                         §§goto(addr377);
                                                      }
                                                      §§goto(addr319);
                                                   }
                                                   §§goto(addr347);
                                                }
                                                §§goto(addr371);
                                             }
                                             §§goto(addr247);
                                          }
                                          §§goto(addr208);
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr62);
                                 }
                                 §§goto(addr193);
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr136);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§+L§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::3D.GetWorldPoint(this.§1E§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§==§.x);
            if(_loc3_)
            {
               addr52:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() * this.§==§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr52);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §%!+§() : b2Vec2
      {
         return this.§+L§;
      }
      
      public function §1,§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(b2internal::3D.IsAwake() == false)
            {
               while(true)
               {
                  b2internal::3D.SetAwake(true);
                  while(true)
                  {
                  }
               }
               addr56:
            }
            do
            {
               this.§+L§ = param1;
               if(!_loc2_)
               {
                  continue;
               }
            }
            while(_loc3_);
            
            return;
         }
         §§goto(addr56);
      }
      
      public function §#!T§() : Number
      {
         return this.§"! §;
      }
      
      public function §3K§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§"! § = param1;
         }
      }
      
      public function §?1§() : Number
      {
         return this.§ A§;
      }
      
      public function §`!=§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
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
         if(!_loc3_)
         {
            this.§"&§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc7_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc2_:b2Body = b2internal::3D;
         §§push(_loc2_.GetMass());
         if(_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(_loc13_)
         {
            §§push(§§pop() * this.§ A§);
            if(!_loc14_)
            {
               addr43:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(2 * _loc3_);
            if(_loc13_ || _loc3_)
            {
               §§push(this.§"&§);
               if(_loc13_)
               {
                  addr71:
                  §§push(§§pop() * §§pop());
                  if(!(_loc14_ && _loc2_))
                  {
                     §§push(_loc4_);
                  }
                  var _loc5_:Number = §§pop();
                  §§push(_loc3_);
                  if(!(_loc14_ && param1))
                  {
                     §§push(_loc4_);
                     if(!_loc14_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc13_ || this)
                        {
                           addr93:
                           §§push(§§pop() * _loc4_);
                           if(!_loc14_)
                           {
                              addr96:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           if(!_loc14_)
                           {
                              §§push(this);
                              §§push(param1.§1_§);
                              if(!_loc14_)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc14_ && this))
                                 {
                                    §§push(param1.§1_§);
                                    if(_loc13_)
                                    {
                                       §§push(§§pop() * _loc6_);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§pop().§]!F§ = §§pop();
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(this);
                                    if(_loc13_)
                                    {
                                       §§push(this.§]!F§);
                                       if(!(_loc14_ && this))
                                       {
                                          if(§§pop() != 0)
                                          {
                                             addr153:
                                             §§push(1 / this.§]!F§);
                                             if(_loc13_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc14_)
                                                {
                                                   addr171:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(0);
                                             if(!(_loc14_ && _loc3_))
                                             {
                                                §§goto(addr171);
                                             }
                                          }
                                       }
                                       §§pop().§]!F§ = §§pop();
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(param1.§1_§);
                                          if(_loc13_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc13_ || _loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc14_ && this)
                                                {
                                                   continue;
                                                }
                                                addr123:
                                                §§push(this.§]!F§);
                                             }
                                             §§push(§§pop() * §§pop());
                                             continue;
                                          }
                                          §§goto(addr123);
                                       }
                                       _loc7_ = _loc2_.m_xf.R;
                                       §§push(this.§1E§.x);
                                       if(!_loc14_)
                                       {
                                          §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                          if(_loc13_)
                                          {
                                             addr214:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc8_:* = §§pop();
                                          §§push(this.§1E§.y);
                                          if(!(_loc14_ && _loc3_))
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                             if(_loc13_ || this)
                                             {
                                                addr238:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc9_:* = §§pop();
                                             §§push(_loc7_.col1.x);
                                             if(!(_loc14_ && _loc2_))
                                             {
                                                §§push(_loc8_);
                                                if(_loc13_ || _loc2_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc14_)
                                                   {
                                                      §§push(_loc7_.col2.x);
                                                      if(_loc13_)
                                                      {
                                                         addr266:
                                                         §§push(§§pop() * _loc9_);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc14_ && _loc3_))
                                                      {
                                                         addr276:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc10_:* = §§pop();
                                                      if(!_loc14_)
                                                      {
                                                         §§push(_loc7_.col1);
                                                         while(true)
                                                         {
                                                            §§push(§§pop().y);
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_.col2.y);
                                                                     if(_loc13_ || _loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * _loc9_);
                                                                        }
                                                                        addr1113:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              _loc9_ = §§pop();
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       addr1085:
                                                                                       loop13:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.§+5§);
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             if(_loc14_ && param1)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          loop14:
                                                                                          while(!_loc14_)
                                                                                          {
                                                                                             _loc11_ = §§pop();
                                                                                             while(_loc13_)
                                                                                             {
                                                                                                §§push(_loc2_.§%L§);
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   continue loop14;
                                                                                                }
                                                                                                addr1056:
                                                                                                _loc12_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.K1);
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().col1);
                                                                                                      addr1029:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc11_);
                                                                                                         addr1030:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            addr1031:
                                                                                                            while(!(_loc14_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(this.K1);
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(_loc13_ || this)
                                                                                                {
                                                                                                   §§goto(addr920);
                                                                                                   §§goto(addr652);
                                                                                                }
                                                                                             }
                                                                                             continue loop8;
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
                                                               §§goto(addr1113);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr1085);
                                                   }
                                                   §§goto(addr276);
                                                }
                                                §§goto(addr266);
                                             }
                                             §§goto(addr276);
                                          }
                                          §§goto(addr238);
                                       }
                                       §§goto(addr214);
                                       addr173:
                                    }
                                    §§goto(addr153);
                                 }
                              }
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr96);
                     }
                  }
                  §§goto(addr93);
               }
               §§push(§§pop() * §§pop());
               if(!_loc13_)
               {
               }
            }
            §§goto(addr71);
         }
         §§goto(addr43);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = b2internal::3D;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§1E§.x);
         if(!(_loc15_ && _loc3_))
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!_loc15_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§1E§.y);
         if(!_loc15_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
            if(_loc16_ || _loc2_)
            {
               addr68:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(_loc16_ || this)
            {
               §§push(_loc3_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  while(true)
                  {
                     §§push(_loc6_);
                     if(!(_loc15_ && this))
                     {
                        §§push(§§pop() * §§pop());
                        loop2:
                        while(true)
                        {
                           §§push(_loc3_.col2);
                           addr213:
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(_loc15_)
                              {
                                 break;
                              }
                              §§push(_loc7_);
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr218:
                                 addr153:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr219:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr220:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          addr221:
                                          while(true)
                                          {
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                                 if(_loc15_ && param1)
                                 {
                                    continue;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(!_loc15_)
                                 {
                                    addr163:
                                    if(_loc16_ || _loc2_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc16_)
                                       {
                                          if(_loc16_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc15_ && _loc2_))
                                             {
                                                continue loop2;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr219);
                                          }
                                       }
                                       addr250:
                                       var _loc8_:Number = §§pop();
                                       addr249:
                                       §§push(_loc2_.§2!@§.y);
                                       if(!_loc15_)
                                       {
                                          §§push(_loc2_.m_angularVelocity);
                                          if(_loc16_ || this)
                                          {
                                             §§push(§§pop() * _loc6_);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc15_)
                                          {
                                             addr270:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc9_:* = §§pop();
                                          _loc3_ = this.§>§;
                                          if(_loc16_)
                                          {
                                             §§push(_loc8_);
                                             if(!_loc15_)
                                             {
                                                §§push(this.§76§);
                                                if(_loc16_ || param1)
                                                {
                                                   §§push(this.§5§);
                                                   if(!_loc15_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc16_ || param1)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc15_ && _loc3_))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc15_)
                                                            {
                                                               §§push(this.§]!F§);
                                                               if(_loc16_)
                                                               {
                                                                  §§push(this.§==§);
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc16_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc15_)
                                                                        {
                                                                           addr327:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc15_ && _loc2_))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc15_)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 if(_loc16_ || param1)
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    if(!(_loc15_ && this))
                                                                                    {
                                                                                       addr354:
                                                                                       §§push(this.§76§);
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          addr360:
                                                                                          §§push(this.§5§.y);
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                addr366:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc16_ || _loc2_)
                                                                                                {
                                                                                                   addr374:
                                                                                                   §§push(this.§]!F§);
                                                                                                   if(!(_loc15_ && this))
                                                                                                   {
                                                                                                      addr385:
                                                                                                      §§push(this.§==§.y);
                                                                                                      if(!(_loc15_ && _loc2_))
                                                                                                      {
                                                                                                         addr393:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc16_ || param1)
                                                                                                         {
                                                                                                            addr401:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!(_loc15_ && param1))
                                                                                                               {
                                                                                                                  addr412:
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  addr413:
                                                                                                                  §§push(_loc3_.col1.x);
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     addr418:
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(_loc16_ || _loc2_)
                                                                                                                     {
                                                                                                                        addr459:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!(_loc15_ && this))
                                                                                                                        {
                                                                                                                           §§push(_loc3_.col2.x);
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              addr450:
                                                                                                                              §§push(§§pop() * _loc5_);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§push(-§§pop());
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           addr463:
                                                                                                                           var _loc10_:* = Number(§§pop());
                                                                                                                           §§push(_loc3_.col1.y);
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              §§push(_loc4_);
                                                                                                                              if(_loc16_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    addr475:
                                                                                                                                    §§push(_loc3_.col2.y);
                                                                                                                                    if(!(_loc15_ && param1))
                                                                                                                                    {
                                                                                                                                       addr487:
                                                                                                                                       §§push(§§pop() + §§pop() * _loc5_);
                                                                                                                                       if(_loc16_ || param1)
                                                                                                                                       {
                                                                                                                                          addr495:
                                                                                                                                          §§push(-§§pop());
                                                                                                                                          if(!(_loc15_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       var _loc11_:* = §§pop();
                                                                                                                                       §§push(this.§==§.x);
                                                                                                                                       if(!(_loc15_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       var _loc12_:* = §§pop();
                                                                                                                                       §§push(this.§==§.y);
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       var _loc13_:* = §§pop();
                                                                                                                                       if(_loc16_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§==§);
                                                                                                                                          if(!(_loc15_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(this.§==§);
                                                                                                                                             if(!(_loc15_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                if(!(_loc15_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc16_ || param1)
                                                                                                                                                      {
                                                                                                                                                         addr568:
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         if(_loc16_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr580:
                                                                                                                                                            addr578:
                                                                                                                                                            §§push(this.§==§);
                                                                                                                                                            §§push(this.§==§.y);
                                                                                                                                                            if(!(_loc15_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr588:
                                                                                                                                                               §§push(§§pop() + _loc11_);
                                                                                                                                                            }
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            addr591:
                                                                                                                                                            §§push(param1.§1_§);
                                                                                                                                                            if(_loc16_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * this.§"! §);
                                                                                                                                                               if(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  addr600:
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               var _loc14_:* = §§pop();
                                                                                                                                                               if(!(_loc15_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§==§);
                                                                                                                                                                  loop12:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().§0]§());
                                                                                                                                                                     loop13:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc14_);
                                                                                                                                                                        if(!_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * _loc14_);
                                                                                                                                                                        }
                                                                                                                                                                        loop14:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§==§);
                                                                                                                                                                                 addr840:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                    if(!(_loc15_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() / this.§==§.§2P§());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().§[!T§(§§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr671:
                                                                                                                                                                                       if(_loc16_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          return;
                                                                                                                                                                                          addr678:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr838:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§==§);
                                                                                                                                                                              loop19:
                                                                                                                                                                              for(; _loc16_; §§push(this.§==§),if(!_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              },if(!(_loc15_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                 if(_loc16_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                    if(_loc16_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc16_ || this))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop14;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(_loc16_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr783);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr800);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr816);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr783);
                                                                                                                                                                              },§§goto(addr840))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                 loop20:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                    addr816:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(_loc16_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc10_ = §§pop();
                                                                                                                                                                                          addr826:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop19;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr838);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr783:
                                                                                                                                                                                          §§goto(addr840);
                                                                                                                                                                                          if(_loc15_ && _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop20;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!(_loc16_ || param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc11_ = Number(§§pop());
                                                                                                                                                                                          while(!(_loc15_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc2_.§2!@§);
                                                                                                                                                                                             loop25:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc2_.§2!@§);
                                                                                                                                                                                                addr730:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                   addr731:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc2_.§+5§);
                                                                                                                                                                                                      if(_loc16_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr736:
                                                                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr736:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr737:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         addr738:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                            continue loop25;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr826);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop12;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr724);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr600);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr591);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr588);
                                                                                                                                                }
                                                                                                                                                §§goto(addr568);
                                                                                                                                             }
                                                                                                                                             §§goto(addr580);
                                                                                                                                          }
                                                                                                                                          §§goto(addr578);
                                                                                                                                       }
                                                                                                                                       §§goto(addr580);
                                                                                                                                    }
                                                                                                                                    §§goto(addr487);
                                                                                                                                 }
                                                                                                                                 §§goto(addr495);
                                                                                                                              }
                                                                                                                              §§goto(addr487);
                                                                                                                           }
                                                                                                                           §§goto(addr475);
                                                                                                                        }
                                                                                                                        §§goto(addr463);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc15_ && _loc3_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr463);
                                                                                                                  }
                                                                                                                  §§goto(addr459);
                                                                                                               }
                                                                                                               §§goto(addr418);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr459);
                                                                                                      }
                                                                                                      §§goto(addr450);
                                                                                                   }
                                                                                                   §§goto(addr459);
                                                                                                }
                                                                                                §§goto(addr463);
                                                                                             }
                                                                                             §§goto(addr401);
                                                                                          }
                                                                                          §§goto(addr393);
                                                                                       }
                                                                                       §§goto(addr366);
                                                                                    }
                                                                                    §§goto(addr374);
                                                                                 }
                                                                                 §§goto(addr413);
                                                                              }
                                                                              §§goto(addr354);
                                                                           }
                                                                           §§goto(addr463);
                                                                        }
                                                                        §§goto(addr450);
                                                                     }
                                                                     §§goto(addr393);
                                                                  }
                                                                  §§goto(addr385);
                                                               }
                                                               §§goto(addr327);
                                                            }
                                                            §§goto(addr412);
                                                         }
                                                         §§goto(addr459);
                                                      }
                                                      §§goto(addr450);
                                                   }
                                                   §§goto(addr360);
                                                }
                                                §§goto(addr327);
                                             }
                                             §§goto(addr354);
                                          }
                                          §§goto(addr412);
                                       }
                                       §§goto(addr270);
                                    }
                                    else
                                    {
                                       §§goto(addr218);
                                    }
                                 }
                                 else
                                 {
                                    addr244:
                                    §§push(§§pop() + §§pop() * _loc7_);
                                    if(!_loc15_)
                                    {
                                       §§goto(addr249);
                                    }
                                 }
                                 §§goto(addr250);
                              }
                           }
                        }
                     }
                     §§goto(addr236);
                  }
               }
            }
            §§goto(addr198);
         }
         §§goto(addr68);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
