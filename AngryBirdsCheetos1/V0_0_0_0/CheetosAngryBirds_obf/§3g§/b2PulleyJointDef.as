package §3g§
{
   import §&!"§.b2Body;
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §,_§:b2Vec2;
      
      public var §1r§:b2Vec2;
      
      public var §4B§:b2Vec2;
      
      public var § !Q§:b2Vec2;
      
      public var §,Z§:Number;
      
      public var §+b§:Number;
      
      public var § f§:Number;
      
      public var §"D§:Number;
      
      public var §]7§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§,_§ = new b2Vec2();
            while(true)
            {
               this.§1r§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§4B§ = new b2Vec2();
                  while(true)
                  {
                     this.§ !Q§ = new b2Vec2();
                     addr182:
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           type = b2Joint.§+!2§;
                           addr172:
                           while(true)
                           {
                              this.§,_§.Set(-1,1);
                              continue loop4;
                           }
                        }
                        addr82:
                        if(_loc2_ || _loc1_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(_loc2_ || _loc2_)
               {
                  this.§4B§.Set(-1,0);
                  §§goto(addr136);
                  §§goto(addr63);
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §1D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_)
         {
            §<§ = param1;
            while(true)
            {
               §,!M§ = param2;
            }
            addr75:
         }
         loop1:
         while(true)
         {
            this.§,_§.SetV(param3);
            while(_loc14_)
            {
               this.§1r§.SetV(param4);
               loop3:
               while(_loc14_ || this)
               {
                  while(true)
                  {
                     this.§4B§ = §<§.GetLocalPoint(param5);
                     continue loop3;
                     addr28:
                     if(_loc13_)
                     {
                        break;
                     }
                     if(false)
                     {
                        continue;
                     }
                     §§push(param5.x);
                     if(!(_loc13_ && param3))
                     {
                        §§push(§§pop() - param3.x);
                        if(_loc14_ || param1)
                        {
                           addr95:
                           §§push(Number(§§pop()));
                        }
                        var _loc8_:* = §§pop();
                        §§push(param5.y);
                        if(!(_loc13_ && param1))
                        {
                           §§push(§§pop() - param3.y);
                           if(!_loc13_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc9_:* = §§pop();
                        if(_loc14_ || param1)
                        {
                           this.§,Z§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                        }
                        §§push(param6.x);
                        if(!_loc13_)
                        {
                           §§push(§§pop() - param4.x);
                           if(_loc14_ || param2)
                           {
                              addr155:
                              §§push(Number(§§pop()));
                           }
                           var _loc10_:* = §§pop();
                           §§push(param6.y);
                           if(!(_loc13_ && param2))
                           {
                              §§push(§§pop() - param4.y);
                              if(_loc14_ || param3)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc11_:* = §§pop();
                           if(!(_loc13_ && param2))
                           {
                              this.§ f§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                              if(_loc14_)
                              {
                                 this.§]7§ = param7;
                              }
                           }
                           §§push(this.§,Z§);
                           if(_loc14_ || this)
                           {
                              §§push(this.§]7§);
                              if(!(_loc13_ && param3))
                              {
                                 §§push(§§pop() * this.§ f§);
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc13_)
                              {
                                 addr225:
                                 §§push(Number(§§pop()));
                              }
                              var _loc12_:* = §§pop();
                              if(!_loc13_)
                              {
                                 §§push(this);
                                 §§push(_loc12_);
                                 if(!_loc13_)
                                 {
                                    §§push(this.§]7§);
                                    if(_loc14_ || param1)
                                    {
                                       §§push(§§pop() * b2PulleyJoint.§9$§);
                                    }
                                    §§push(§§pop() - §§pop());
                                 }
                                 §§pop().§+b§ = §§pop();
                                 do
                                 {
                                    §§push(this);
                                    §§push(_loc12_);
                                    if(_loc14_)
                                    {
                                       §§push(b2PulleyJoint.§9$§);
                                       if(!_loc13_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc14_)
                                          {
                                             continue;
                                          }
                                          addr246:
                                          §§push(this.§]7§);
                                       }
                                       §§push(§§pop() / §§pop());
                                       continue;
                                    }
                                    §§goto(addr246);
                                 }
                                 while(§§pop().§"D§ = §§pop(), !(_loc14_ || param3));
                                 
                              }
                              return;
                           }
                           §§goto(addr225);
                        }
                        §§goto(addr155);
                     }
                     while(_loc14_ || param1)
                     {
                        this.§ !Q§ = §,!M§.GetLocalPoint(param6);
                        if(_loc13_)
                        {
                           continue;
                        }
                        §§goto(addr28);
                     }
                     §§goto(addr95);
                  }
                  continue loop1;
               }
            }
            §§goto(addr75);
         }
      }
   }
}
