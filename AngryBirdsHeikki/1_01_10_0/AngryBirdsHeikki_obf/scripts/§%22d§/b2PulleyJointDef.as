package §"d§
{
   import §3!R§.b2Body;
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §%R§:b2Vec2;
      
      public var §>!M§:b2Vec2;
      
      public var §@b§:b2Vec2;
      
      public var §=i§:b2Vec2;
      
      public var §`1§:Number;
      
      public var §7!B§:Number;
      
      public var §,D§:Number;
      
      public var §-!]§:Number;
      
      public var §9K§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§%R§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§>!M§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§@b§ = new b2Vec2();
                  while(true)
                  {
                     this.§=i§ = new b2Vec2();
                     loop3:
                     while(!_loc2_)
                     {
                        super();
                        while(!_loc2_)
                        {
                           type = b2Joint.§ h§;
                           while(true)
                           {
                              this.§%R§.Set(-1,1);
                              addr156:
                              while(true)
                              {
                                 this.§>!M§.Set(1,1);
                                 addr81:
                                 if(_loc1_ || _loc2_)
                                 {
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop3;
                                    }
                                    this.§-!]§ = 0;
                                    §§goto(addr67);
                                    continue loop3;
                                 }
                              }
                           }
                           while(!(_loc2_ && _loc2_))
                           {
                              this.§9K§ = 1;
                              while(_loc1_ || _loc1_)
                              {
                                 collideConnected = true;
                                 if(!(_loc1_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 addr34:
                                 if(_loc1_ || this)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr43:
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          return;
                                       }
                                       loop8:
                                       for(; _loc1_; §§goto(addr43))
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop1;
                                          }
                                          this.§=i§.Set(1,0);
                                          while(true)
                                          {
                                             this.§`1§ = 0;
                                             addr124:
                                             while(true)
                                             {
                                                this.§7!B§ = 0;
                                             }
                                             addr112:
                                             if(_loc2_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             this.§,D§ = 0;
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr81);
                                                }
                                                addr149:
                                                while(true)
                                                {
                                                   this.§@b§.Set(-1,0);
                                                   continue loop8;
                                                }
                                                §§goto(addr34);
                                             }
                                             §§goto(addr156);
                                          }
                                       }
                                       §§goto(addr162);
                                    }
                                    while(_loc1_)
                                    {
                                       §§goto(addr112);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr79);
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr149);
      }
      
      public function §';§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_)
         {
            §&]§ = param1;
            loop0:
            while(true)
            {
               §+0§ = param2;
               loop1:
               while(true)
               {
                  this.§%R§.SetV(param3);
                  while(_loc13_)
                  {
                     this.§>!M§.SetV(param4);
                     continue loop1;
                     addr37:
                     if(_loc14_ && param3)
                     {
                        continue;
                     }
                     this.§=i§ = §+0§.GetLocalPoint(param6);
                     if(_loc13_)
                     {
                        addr27:
                        if(false)
                        {
                           while(true)
                           {
                              this.§@b§ = §&]§.GetLocalPoint(param5);
                              addr35:
                              while(!_loc14_)
                              {
                                 §§goto(addr37);
                              }
                              continue loop1;
                              §§goto(addr27);
                           }
                           addr29:
                        }
                        §§push(param5.x);
                        if(_loc13_ || this)
                        {
                           §§push(§§pop() - param3.x);
                           if(_loc13_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc8_:* = §§pop();
                        §§push(param5.y);
                        if(!_loc14_)
                        {
                           §§push(§§pop() - param3.y);
                           if(_loc13_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc9_:* = §§pop();
                        if(_loc13_)
                        {
                           this.§`1§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                        }
                        §§push(param6.x);
                        if(_loc13_ || this)
                        {
                           §§push(§§pop() - param4.x);
                           if(!_loc14_)
                           {
                              addr139:
                              §§push(Number(§§pop()));
                           }
                           var _loc10_:* = §§pop();
                           §§push(param6.y);
                           if(!(_loc14_ && param3))
                           {
                              §§push(§§pop() - param4.y);
                              if(_loc13_ || param3)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc11_:* = §§pop();
                           if(!_loc14_)
                           {
                              this.§,D§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                              if(!_loc14_)
                              {
                                 this.§9K§ = param7;
                              }
                           }
                           §§push(this.§`1§);
                           if(!(_loc14_ && param2))
                           {
                              §§push(this.§9K§);
                              if(!_loc14_)
                              {
                                 §§push(§§pop() * this.§,D§);
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc14_ && param2))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc12_:* = §§pop();
                           if(_loc13_)
                           {
                              §§push(this);
                              §§push(_loc12_);
                              if(!(_loc14_ && this))
                              {
                                 §§push(this.§9K§);
                                 if(_loc13_)
                                 {
                                    §§push(§§pop() * b2PulleyJoint.§%a§);
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§pop().§7!B§ = §§pop();
                           }
                           do
                           {
                              §§push(this);
                              §§push(_loc12_);
                              if(!_loc14_)
                              {
                                 §§push(b2PulleyJoint.§%a§);
                                 if(_loc13_ || param1)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc14_ && param3)
                                    {
                                       continue;
                                    }
                                    addr235:
                                    §§push(this.§9K§);
                                 }
                                 §§push(§§pop() / §§pop());
                                 continue;
                              }
                              §§goto(addr235);
                           }
                           while(§§pop().§-!]§ = §§pop(), !_loc13_);
                           
                           return;
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr35);
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§goto(addr29);
         }
      }
   }
}
