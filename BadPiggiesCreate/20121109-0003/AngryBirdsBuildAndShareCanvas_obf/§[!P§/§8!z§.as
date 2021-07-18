package §[!P§
{
   import §%!0§.§,4§;
   import §&!P§.§``§;
   import §,!0§.b2DistanceJointDef;
   import §,!0§.b2JointDef;
   import §,!0§.b2PrismaticJointDef;
   import §,!0§.b2RevoluteJointDef;
   import §,!0§.b2WeldJointDef;
   import §<!a§.b2Vec2;
   import flash.geom.Point;
   
   public class §8!z§
   {
      
      public static const §8v§:uint = 1;
      
      public static const §`,§:uint = 2;
      
      public static const §%!^§:uint = 3;
      
      public static const §%_§:uint = 4;
      
      public static const §3I§:uint = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §8v§ = 1;
         }
         loop0:
         while(true)
         {
            §`,§ = 2;
            loop1:
            do
            {
               §%!^§ = 3;
               while(true)
               {
                  §%_§ = 4;
                  while(_loc1_ || _loc1_)
                  {
                     continue loop0;
                     §3I§ = 5;
                     if(!(_loc2_ && §8!z§))
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(!(_loc1_ || §8!z§));
            
            return;
         }
      }
      
      private var §%!G§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §-g§:Boolean;
      
      private var §1=§:Number;
      
      private var §6_§:Number;
      
      private var § T§:Boolean;
      
      private var §+![§:Number;
      
      private var §@!m§:Boolean;
      
      private var §1!Z§:Boolean;
      
      private var §8P§:Number;
      
      private var §2![§:Number;
      
      private var §2!,§:Number;
      
      private var §6!N§:Number;
      
      public function §8!z§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!_loc14_)
         {
            this.mPoint1 = new Point();
            while(true)
            {
               this.mPoint2 = new Point();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     this.§%!G§ = param1;
                     addr156:
                     while(_loc15_)
                     {
                        if(!_loc15_)
                        {
                           continue loop1;
                        }
                        this.mIndex1 = param2;
                        while(true)
                        {
                           this.mIndex2 = param3;
                        }
                     }
                  }
               }
            }
            addr185:
         }
         loop5:
         while(true)
         {
            this.mPoint1 = param4.clone();
            loop6:
            while(true)
            {
               this.mPoint2 = param5.clone();
               loop7:
               while(true)
               {
                  if(!_loc14_)
                  {
                     this.§-g§ = param7;
                     loop8:
                     while(true)
                     {
                        this.§1=§ = param8;
                        loop9:
                        while(_loc15_)
                        {
                           this.§6_§ = param9;
                           continue loop5;
                           addr74:
                           if(!(_loc14_ && param2))
                           {
                              this.§1!Z§ = param6;
                              while(!_loc14_)
                              {
                                 this.§8P§ = param13;
                                 if(_loc14_ && param3)
                                 {
                                    continue;
                                 }
                                 addr35:
                                 if(_loc15_ || param2)
                                 {
                                    addr42:
                                    if(!(_loc15_ || this))
                                    {
                                       while(true)
                                       {
                                          this.§+![§ = param11;
                                          loop12:
                                          while(true)
                                          {
                                             this.§@!m§ = param12;
                                             addr65:
                                             while(true)
                                             {
                                                if(_loc14_ && this)
                                                {
                                                   continue loop12;
                                                }
                                                if(!_loc15_)
                                                {
                                                   continue loop5;
                                                }
                                                §§goto(addr74);
                                                §§goto(addr35);
                                             }
                                             continue loop9;
                                          }
                                          §§goto(addr42);
                                       }
                                       addr101:
                                    }
                                    if(!_loc15_)
                                    {
                                       continue loop6;
                                    }
                                    if(_loc15_)
                                    {
                                       return;
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr65);
                              }
                              continue loop8;
                           }
                        }
                        continue loop7;
                     }
                  }
                  else
                  {
                     §§goto(addr185);
                  }
               }
            }
         }
      }
      
      public function get type() : int
      {
         return this.§%!G§;
      }
      
      public function get index1() : int
      {
         return this.mIndex1;
      }
      
      public function get index2() : int
      {
         return this.mIndex2;
      }
      
      public function get point1() : Point
      {
         return this.mPoint1.clone();
      }
      
      public function get point2() : Point
      {
         return this.mPoint2.clone();
      }
      
      public function get §!z§() : Boolean
      {
         return this.§-g§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§1=§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§6_§;
      }
      
      public function get §=@§() : Boolean
      {
         return this.§ T§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§+![§;
      }
      
      public function get §!!H§() : Boolean
      {
         return this.§@!m§;
      }
      
      public function get §=Z§() : Boolean
      {
         return this.§1!Z§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§8P§;
      }
      
      public function get axisX() : Number
      {
         return this.§2![§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2![§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§2!,§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§2!,§ = param1;
         }
      }
      
      public function get §%!B§() : Number
      {
         return this.§6!N§;
      }
      
      public function set §%!B§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6!N§ = param1;
         }
      }
      
      public function §8G§(param1:§``§, param2:§``§) : b2JointDef
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§%!G§);
         if(!_loc9_)
         {
            var _loc7_:* = §§pop();
            if(_loc8_ || param1)
            {
               §§push(§8v§);
               if(!(_loc9_ && _loc3_))
               {
                  §§push(_loc7_);
                  if(_loc8_ || param2)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc9_)
                        {
                           §§push(0);
                           if(!_loc8_)
                           {
                           }
                        }
                        else
                        {
                           addr451:
                           §§push(3);
                           if(!_loc9_)
                           {
                              addr464:
                           }
                        }
                        addr470:
                        switch(§§pop())
                        {
                           case 0:
                              _loc3_ = new b2DistanceJointDef();
                              if(!_loc9_)
                              {
                                 _loc3_.collideConnected = this.§1!Z§;
                                 do
                                 {
                                    _loc3_.§@!8§ = 4;
                                    do
                                    {
                                       _loc3_.§+!n§ = 0.5;
                                       do
                                       {
                                          _loc3_.length = §,4§.§#F§(param1,param2);
                                       }
                                       while(_loc9_ && this);
                                       
                                    }
                                    while(!_loc8_);
                                    
                                 }
                                 while(!(_loc8_ || _loc3_));
                                 
                              }
                              _loc3_.§&!§(param1.getBody(),param2.getBody(),param1.getBody().GetPosition(),param2.getBody().GetPosition());
                              return _loc3_;
                           case 1:
                              (_loc4_ = new b2WeldJointDef()).collideConnected = this.§1!Z§;
                              if(!_loc9_)
                              {
                                 _loc4_.§&!§(param1.getBody(),param2.getBody(),param1.getBody().§?Q§());
                                 if(!_loc9_)
                                 {
                                    return _loc4_;
                                 }
                              }
                           case 2:
                              (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§1!Z§;
                              if(_loc8_ || this)
                              {
                                 _loc5_.§&!§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                                 while(true)
                                 {
                                    _loc5_.§2<§ = this.§-g§;
                                    loop4:
                                    while(true)
                                    {
                                       _loc5_.§#a§ = this.§ T§;
                                       while(true)
                                       {
                                          _loc5_.motorSpeed = this.§+![§;
                                          _loc5_.§ !A§ = this.§6_§;
                                          loop6:
                                          while(!(_loc9_ && this))
                                          {
                                             continue loop4;
                                             while(true)
                                             {
                                                _loc5_.§@!U§ = this.§8P§;
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   break;
                                                }
                                                continue loop6;
                                             }
                                             return _loc5_;
                                          }
                                       }
                                    }
                                 }
                              }
                              else if(true)
                              {
                                 break;
                              }
                              §§goto(addr161);
                           case 3:
                              break;
                           default:
                              return null;
                        }
                        (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§1!Z§;
                        addr469:
                        if(!_loc9_)
                        {
                           _loc6_.§&!§(param1.getBody(),param2.getBody(),param1.getBody().§?Q§(),new b2Vec2(this.§2![§,this.§2!,§));
                           loop8:
                           while(true)
                           {
                              §§push(_loc6_);
                              if(_loc8_ || param1)
                              {
                                 §§push(this.§@!m§);
                                 if(!_loc9_)
                                 {
                                    if(§§pop())
                                    {
                                       addr348:
                                       §§push(false);
                                       if(_loc9_ && this)
                                       {
                                          addr361:
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                    else
                                    {
                                       §§push(this.§-g§);
                                       if(!_loc9_)
                                       {
                                          §§goto(addr361);
                                       }
                                    }
                                    §§pop().§2<§ = §§pop();
                                    _loc6_.§?"'§ = this.§1=§;
                                    loop9:
                                    while(true)
                                    {
                                       _loc6_.§-!§ = this.§6_§;
                                       while(true)
                                       {
                                          _loc6_.§#a§ = this.§ T§;
                                          continue loop9;
                                          addr315:
                                          _loc6_.motorSpeed = this.§+![§;
                                          if(!_loc9_)
                                          {
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr361);
                              }
                              §§goto(addr348);
                           }
                        }
                        §§goto(addr321);
                        addr469:
                     }
                     else
                     {
                        §§push(§`,§);
                        if(_loc8_)
                        {
                           addr420:
                           §§push(_loc7_);
                           if(_loc8_)
                           {
                              addr423:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc8_)
                                 {
                                    §§push(1);
                                    if(_loc9_)
                                    {
                                       §§goto(addr464);
                                    }
                                 }
                                 else
                                 {
                                    addr444:
                                    §§push(2);
                                    if(!_loc8_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§%!^§);
                                 if(_loc8_)
                                 {
                                    addr433:
                                    §§push(_loc7_);
                                    if(!(_loc9_ && param2))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             §§goto(addr444);
                                          }
                                          else
                                          {
                                             §§goto(addr451);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§%_§);
                                       }
                                       §§goto(addr451);
                                    }
                                    addr450:
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr451);
                                    }
                                    else
                                    {
                                       §§goto(addr469);
                                       §§push(4);
                                    }
                                    §§goto(addr469);
                                 }
                                 §§goto(addr450);
                                 §§push(_loc7_);
                              }
                              §§goto(addr469);
                           }
                           §§goto(addr450);
                        }
                        §§goto(addr433);
                     }
                     §§goto(addr451);
                  }
                  §§goto(addr423);
               }
               §§goto(addr420);
            }
            §§goto(addr444);
         }
         §§goto(addr470);
      }
   }
}
