package §,,§
{
   import §,"[§.b2internal;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §#d§:b2Vec2;
      
      public var §8f§:b2Vec2;
      
      public var §-!,§:b2Vec2;
      
      public var §["9§:b2Vec2;
      
      public var §'!<§:Number;
      
      public var §'"B§:Number;
      
      public var §"[§:Number;
      
      public var §-6§:Number;
      
      public var §#9§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§#d§ = new b2Vec2();
            while(true)
            {
               this.§8f§ = new b2Vec2();
               loop4:
               for(; _loc1_ || this; if(_loc2_ && this)
               {
                  continue;
               },this.§#9§ = 1,while(!_loc2_)
               {
                  collideConnected = true;
                  if(!(_loc1_ || this))
                  {
                     continue;
                  }
                  §§goto(addr39);
               },§§goto(addr110))
               {
                  type = b2Joint.§3`§;
                  loop5:
                  while(true)
                  {
                     this.§#d§.Set(-1,1);
                     addr161:
                     loop6:
                     while(_loc1_ || _loc2_)
                     {
                        this.§8f§.Set(1,1);
                        while(true)
                        {
                           this.§-!,§.Set(-1,0);
                           loop8:
                           for(; _loc1_; while(true)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 this.§-6§ = 0;
                                 continue;
                              }
                              continue loop8;
                           },continue loop5)
                           {
                              this.§["9§.Set(1,0);
                              while(true)
                              {
                                 this.§'!<§ = 0;
                                 addr117:
                                 loop10:
                                 while(_loc1_ || _loc2_)
                                 {
                                    addr124:
                                    if(!(_loc2_ && this))
                                    {
                                       this.§'"B§ = 0;
                                       while(!_loc2_)
                                       {
                                          this.§"[§ = 0;
                                          continue loop8;
                                       }
                                       continue;
                                       addr110:
                                    }
                                    else
                                    {
                                       addr213:
                                    }
                                    while(true)
                                    {
                                       this.§-!,§ = new b2Vec2();
                                       break loop10;
                                       §§goto(addr124);
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§["9§ = new b2Vec2();
                                    break loop6;
                                    §§goto(addr117);
                                 }
                                 addr67:
                                 if(_loc1_ || this)
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        super();
                        continue loop4;
                        §§goto(addr161);
                     }
                  }
               }
            }
         }
         §§goto(addr213);
      }
      
      public function §6!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_ || param1)
         {
            §`y§ = param1;
            loop0:
            while(true)
            {
               §8!7§ = param2;
               loop1:
               while(true)
               {
                  this.§#d§.SetV(param3);
                  while(true)
                  {
                     this.§8f§.SetV(param4);
                     while(true)
                     {
                        if(_loc14_ && param3)
                        {
                           break;
                           addr43:
                        }
                        while(true)
                        {
                           this.§-!,§ = §`y§.GetLocalPoint(param5);
                           continue loop1;
                        }
                        addr32:
                        if(!(_loc13_ || param3))
                        {
                           continue;
                        }
                        if(!_loc13_)
                        {
                           continue loop0;
                        }
                        while(false)
                        {
                           §§goto(addr43);
                        }
                        §§push(param5.x);
                        if(!_loc14_)
                        {
                           §§push(§§pop() - param3.x);
                           if(_loc13_ || this)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc8_:* = §§pop();
                        §§push(param5.y);
                        if(!(_loc14_ && param2))
                        {
                           §§push(§§pop() - param3.y);
                           if(_loc13_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc9_:* = §§pop();
                        if(!_loc14_)
                        {
                           this.§'!<§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                        }
                        §§push(param6.x);
                        if(!_loc14_)
                        {
                           §§push(§§pop() - param4.x);
                           if(_loc13_ || param3)
                           {
                              addr154:
                              §§push(Number(§§pop()));
                           }
                           var _loc10_:* = §§pop();
                           §§push(param6.y);
                           if(!_loc14_)
                           {
                              §§push(§§pop() - param4.y);
                              if(!_loc14_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc11_:* = §§pop();
                           if(!_loc14_)
                           {
                              this.§"[§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                              if(!_loc14_)
                              {
                                 addr182:
                                 this.§#9§ = param7;
                              }
                              §§push(this.§'!<§);
                              if(!(_loc14_ && param3))
                              {
                                 §§push(this.§#9§);
                                 if(!(_loc14_ && param3))
                                 {
                                    §§push(§§pop() * this.§"[§);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc13_ || this)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc12_:* = §§pop();
                              if(!_loc14_)
                              {
                                 §§push(this);
                                 §§push(_loc12_);
                                 if(_loc13_ || this)
                                 {
                                    §§push(this.§#9§);
                                    if(_loc13_)
                                    {
                                       §§push(§§pop() * b2PulleyJoint.§%!A§);
                                    }
                                    §§push(§§pop() - §§pop());
                                 }
                                 §§pop().§'"B§ = §§pop();
                                 do
                                 {
                                    §§push(this);
                                    §§push(_loc12_);
                                    if(!(_loc14_ && this))
                                    {
                                       §§push(b2PulleyJoint.§%!A§);
                                       if(_loc13_ || this)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc13_)
                                          {
                                             continue;
                                          }
                                          §§push(this.§#9§);
                                       }
                                       §§push(§§pop() / §§pop());
                                    }
                                 }
                                 while(§§pop().§-6§ = §§pop(), _loc14_);
                                 
                              }
                              return;
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr154);
                     }
                  }
               }
            }
         }
         §§goto(addr41);
      }
   }
}
