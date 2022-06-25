package §&a§
{
   import §#V§.b2Body;
   import §3!m§.b2internal;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §>y§:b2Vec2;
      
      public var §]k§:b2Vec2;
      
      public var §4!%§:b2Vec2;
      
      public var §=!I§:b2Vec2;
      
      public var §`P§:Number;
      
      public var §0#§:Number;
      
      public var §'=§:Number;
      
      public var §"!<§:Number;
      
      public var § N§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§>y§ = new b2Vec2();
            while(true)
            {
               this.§]k§ = new b2Vec2();
               loop4:
               while(_loc2_ || this)
               {
                  type = b2Joint.§-L§;
                  loop5:
                  while(true)
                  {
                     this.§>y§.Set(-1,1);
                     loop6:
                     while(true)
                     {
                        this.§]k§.Set(1,1);
                        addr135:
                        addr194:
                        loop7:
                        while(!(_loc1_ && _loc2_))
                        {
                           this.§4!%§.Set(-1,0);
                           loop8:
                           for(; _loc2_; if(!(_loc2_ || this))
                           {
                              continue;
                           },if(_loc1_)
                           {
                              continue loop5;
                           },this.§"!<§ = 0,§§goto(addr54))
                           {
                              this.§=!I§.Set(1,0);
                              loop9:
                              while(true)
                              {
                                 this.§`P§ = 0;
                                 loop10:
                                 while(true)
                                 {
                                    if(_loc1_ && _loc2_)
                                    {
                                       continue loop9;
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop7;
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop6;
                                    }
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    this.§0#§ = 0;
                                    while(true)
                                    {
                                       this.§'=§ = 0;
                                       addr68:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop8;
                                          }
                                          continue loop10;
                                       }
                                       continue loop5;
                                       addr56:
                                       if(_loc1_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       this.§ N§ = 1;
                                       do
                                       {
                                          collideConnected = true;
                                       }
                                       while(_loc1_ && _loc1_);
                                       
                                       addr63:
                                       if(!_loc2_)
                                       {
                                          while(!_loc1_)
                                          {
                                             §§goto(addr56);
                                             §§goto(addr63);
                                          }
                                          §§goto(addr68);
                                          addr54:
                                       }
                                       addr37:
                                       if(_loc2_ || _loc1_)
                                       {
                                          return;
                                       }
                                       addr188:
                                       while(true)
                                       {
                                          this.§=!I§ = new b2Vec2();
                                          break loop8;
                                          §§goto(addr37);
                                       }
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                           while(true)
                           {
                              super();
                              continue loop4;
                           }
                        }
                        while(true)
                        {
                           this.§4!%§ = new b2Vec2();
                           §§goto(addr188);
                           §§goto(addr135);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr194);
      }
      
      public function §'K§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(!_loc13_)
         {
            §0w§ = param1;
            loop0:
            while(true)
            {
               §^2§ = param2;
               loop1:
               while(true)
               {
                  this.§>y§.SetV(param3);
                  addr37:
                  if(_loc13_ && param1)
                  {
                     continue;
                  }
                  if(false)
                  {
                     loop4:
                     while(true)
                     {
                        this.§4!%§ = §0w§.GetLocalPoint(param5);
                        while(true)
                        {
                           if(_loc14_)
                           {
                              this.§=!I§ = §^2§.GetLocalPoint(param6);
                              if(!_loc13_)
                              {
                                 if(!_loc13_)
                                 {
                                    addr30:
                                    if(_loc14_ || param1)
                                    {
                                       §§goto(addr37);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§]k§.SetV(param4);
                                          break loop4;
                                          §§goto(addr30);
                                       }
                                       addr66:
                                    }
                                 }
                                 break loop4;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     while(true)
                     {
                        §§goto(addr46);
                     }
                     addr46:
                     continue loop0;
                  }
                  §§push(param5.x);
                  if(_loc14_ || param1)
                  {
                     §§push(§§pop() - param3.x);
                     if(!(_loc13_ && param1))
                     {
                        addr95:
                        §§push(Number(§§pop()));
                     }
                     var _loc8_:* = §§pop();
                     §§push(param5.y);
                     if(_loc14_)
                     {
                        §§push(§§pop() - param3.y);
                        if(!(_loc13_ && this))
                        {
                           addr111:
                           §§push(Number(§§pop()));
                        }
                        var _loc9_:* = §§pop();
                        if(_loc14_ || param1)
                        {
                           this.§`P§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                        }
                        §§push(param6.x);
                        if(!(_loc13_ && this))
                        {
                           §§push(§§pop() - param4.x);
                           if(!_loc13_)
                           {
                              addr155:
                              §§push(Number(§§pop()));
                           }
                           var _loc10_:* = §§pop();
                           §§push(param6.y);
                           if(_loc14_ || this)
                           {
                              §§push(§§pop() - param4.y);
                              if(!(_loc13_ && param2))
                              {
                                 addr176:
                                 §§push(Number(§§pop()));
                              }
                              var _loc11_:* = §§pop();
                              if(!(_loc13_ && param2))
                              {
                                 this.§'=§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                 if(_loc14_)
                                 {
                                    addr198:
                                    this.§ N§ = param7;
                                 }
                                 §§push(this.§`P§);
                                 if(!_loc13_)
                                 {
                                    §§push(this.§ N§);
                                    if(!_loc13_)
                                    {
                                       §§push(§§pop() * this.§'=§);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc14_ || param3)
                                    {
                                       addr220:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc12_:* = §§pop();
                                    if(!_loc13_)
                                    {
                                       §§push(this);
                                       §§push(_loc12_);
                                       if(!(_loc13_ && this))
                                       {
                                          §§push(this.§ N§);
                                          if(_loc14_ || param3)
                                          {
                                             §§push(§§pop() * b2PulleyJoint.§@!A§);
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§pop().§0#§ = §§pop();
                                       do
                                       {
                                          §§push(this);
                                          §§push(_loc12_);
                                          if(!_loc13_)
                                          {
                                             §§push(b2PulleyJoint.§@!A§);
                                             if(_loc14_ || this)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc13_ && param2)
                                                {
                                                   continue;
                                                }
                                                §§push(this.§ N§);
                                             }
                                             §§push(§§pop() / §§pop());
                                          }
                                       }
                                       while(§§pop().§"!<§ = §§pop(), _loc13_ && this);
                                       
                                    }
                                    return;
                                 }
                                 §§goto(addr220);
                              }
                              §§goto(addr198);
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr95);
               }
            }
         }
         §§goto(addr66);
      }
   }
}
