package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §1w§:b2Vec2;
      
      public var §1!"§:b2Vec2;
      
      public var §8D§:b2Vec2;
      
      public var §@"$§:b2Vec2;
      
      public var §+!f§:Number;
      
      public var §=i§:Number;
      
      public var §,r§:Number;
      
      public var §&!'§:Number;
      
      public var §`,§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§1w§ = new b2Vec2();
            while(true)
            {
               this.§1!"§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§8D§ = new b2Vec2();
                  addr173:
                  while(true)
                  {
                     this.§@"$§ = new b2Vec2();
                     addr167:
                     while(true)
                     {
                        super();
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      public function §6R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!(_loc14_ && this))
         {
            §9!w§ = param1;
         }
         loop0:
         while(true)
         {
            §>!W§ = param2;
            while(true)
            {
               this.§1w§.SetV(param3);
               loop2:
               while(_loc13_ || param3)
               {
                  this.§1!"§.SetV(param4);
                  loop3:
                  while(true)
                  {
                     addr39:
                     addr85:
                     while(true)
                     {
                        this.§8D§ = §9!w§.GetLocalPoint(param5);
                        addr45:
                        while(true)
                        {
                           if(_loc13_)
                           {
                              if(_loc14_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                     §§push(param5.x);
                     if(_loc13_)
                     {
                        §§push(§§pop() - param3.x);
                        if(!_loc14_)
                        {
                           addr94:
                           §§push(Number(§§pop()));
                        }
                        var _loc8_:* = §§pop();
                        §§push(param5.y);
                        if(!_loc14_)
                        {
                           §§push(§§pop() - param3.y);
                           if(_loc13_ || param3)
                           {
                              addr110:
                              §§push(Number(§§pop()));
                           }
                           var _loc9_:* = §§pop();
                           if(!_loc14_)
                           {
                              this.§+!f§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                           }
                           §§push(param6.x);
                           if(!_loc14_)
                           {
                              §§push(§§pop() - param4.x);
                              if(_loc13_ || param1)
                              {
                                 addr149:
                                 §§push(Number(§§pop()));
                              }
                              var _loc10_:* = §§pop();
                              §§push(param6.y);
                              if(!_loc14_)
                              {
                                 §§push(§§pop() - param4.y);
                                 if(_loc13_ || param2)
                                 {
                                    addr165:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc11_:* = §§pop();
                                 if(_loc13_)
                                 {
                                    this.§,r§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                    if(!(_loc14_ && param1))
                                    {
                                       this.§`,§ = param7;
                                    }
                                 }
                                 §§push(this.§+!f§);
                                 if(_loc13_ || param1)
                                 {
                                    §§push(this.§`,§);
                                    if(!(_loc14_ && param3))
                                    {
                                       §§push(§§pop() * this.§,r§);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc14_ && param2))
                                    {
                                       addr219:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc12_:* = §§pop();
                                    if(_loc13_)
                                    {
                                       §§push(this);
                                       §§push(_loc12_);
                                       if(!(_loc14_ && param2))
                                       {
                                          §§push(this.§`,§);
                                          if(!(_loc14_ && param3))
                                          {
                                             §§push(§§pop() * b2PulleyJoint.§>!>§);
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§pop().§=i§ = §§pop();
                                    }
                                    addr290:
                                    §§push(this);
                                    §§push(_loc12_);
                                    if(!_loc14_)
                                    {
                                       §§push(b2PulleyJoint.§>!>§);
                                       if(_loc13_ || param2)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc14_ && this))
                                          {
                                             addr252:
                                             §§push(§§pop() / this.§`,§);
                                          }
                                          §§pop().§&!'§ = §§pop();
                                          if(!_loc13_)
                                          {
                                             §§goto(addr290);
                                          }
                                          return;
                                       }
                                    }
                                    §§goto(addr252);
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr94);
                  }
               }
            }
         }
      }
   }
}
