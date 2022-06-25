package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §^X§:b2Vec2;
      
      public var §#!,§:b2Vec2;
      
      public var §<?§:b2Vec2;
      
      public var §%!e§:b2Vec2;
      
      public var §1!C§:Number;
      
      public var §@2§:Number;
      
      public var §-Q§:Number;
      
      public var §?! §:Number;
      
      public var §8B§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§^X§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§#!,§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§<?§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§%!e§ = new b2Vec2();
                     while(!_loc2_)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           type = b2Joint.§+!L§;
                           while(true)
                           {
                              this.§^X§.Set(-1,1);
                              while(!_loc2_)
                              {
                                 this.§#!,§.Set(1,1);
                                 while(!_loc2_)
                                 {
                                    this.§<?§.Set(-1,0);
                                    while(!(_loc2_ && _loc2_))
                                    {
                                       this.§%!e§.Set(1,0);
                                       while(true)
                                       {
                                          this.§1!C§ = 0;
                                          addr114:
                                          loop10:
                                          while(true)
                                          {
                                             this.§@2§ = 0;
                                             addr109:
                                             while(true)
                                             {
                                                this.§-Q§ = 0;
                                                continue loop10;
                                             }
                                          }
                                       }
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(_loc1_)
                                          {
                                             return;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                        this.§?! § = 0;
                        §§goto(addr71);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      public function §%%§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_ || param2)
         {
            §3x§ = param1;
            while(true)
            {
               §8P§ = param2;
               loop1:
               for(; _loc13_ || param2; loop3:
               while(_loc13_ || this)
               {
                  loop4:
                  while(true)
                  {
                     this.§<?§ = §3x§.GetLocalPoint(param5);
                     loop5:
                     while(!_loc14_)
                     {
                        while(true)
                        {
                           this.§%!e§ = §8P§.GetLocalPoint(param6);
                           if(_loc14_ && param2)
                           {
                              continue loop5;
                           }
                           if(_loc13_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           §§goto(addr68);
                        }
                        §§push(param5.x);
                        if(_loc13_)
                        {
                           §§push(§§pop() - param3.x);
                           if(!(_loc14_ && param1))
                           {
                              addr99:
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           §§push(param5.y);
                           if(_loc13_)
                           {
                              §§push(§§pop() - param3.y);
                              if(_loc13_)
                              {
                                 addr110:
                                 §§push(Number(§§pop()));
                              }
                              var _loc9_:* = §§pop();
                              if(!_loc14_)
                              {
                                 this.§1!C§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                              }
                              §§push(param6.x);
                              if(_loc13_)
                              {
                                 §§push(§§pop() - param4.x);
                                 if(_loc13_)
                                 {
                                    addr144:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc10_:* = §§pop();
                                 §§push(param6.y);
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop() - param4.y);
                                    if(!(_loc14_ && param1))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc11_:* = §§pop();
                                 if(!_loc14_)
                                 {
                                    this.§-Q§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                    if(!(_loc14_ && param3))
                                    {
                                       this.§8B§ = param7;
                                    }
                                 }
                                 §§push(this.§1!C§);
                                 if(!(_loc14_ && this))
                                 {
                                    §§push(this.§8B§);
                                    if(!_loc14_)
                                    {
                                       §§push(§§pop() * this.§-Q§);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc14_ && param1))
                                    {
                                       addr209:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc12_:* = §§pop();
                                    if(!(_loc14_ && param2))
                                    {
                                       §§push(this);
                                       §§push(_loc12_);
                                       if(!(_loc14_ && param3))
                                       {
                                          §§push(this.§8B§);
                                          if(_loc13_ || param3)
                                          {
                                             §§push(§§pop() * b2PulleyJoint.§3!i§);
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§pop().§@2§ = §§pop();
                                    }
                                    do
                                    {
                                       §§push(this);
                                       §§push(_loc12_);
                                       if(_loc13_)
                                       {
                                          §§push(b2PulleyJoint.§3!i§);
                                          if(!_loc14_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc13_)
                                             {
                                                continue;
                                             }
                                             §§push(this.§8B§);
                                          }
                                          §§push(§§pop() / §§pop());
                                       }
                                    }
                                    while(§§pop().§?! § = §§pop(), !(_loc13_ || param3));
                                    
                                    return;
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr99);
                     }
                     continue loop3;
                  }
               })
               {
                  this.§^X§.SetV(param3);
                  while(true)
                  {
                     this.§#!,§.SetV(param4);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr49);
      }
   }
}
