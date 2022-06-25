package §&V§
{
   import §%t§.b2DistanceJointDef;
   import §%t§.b2JointDef;
   import §%t§.b2PrismaticJointDef;
   import §%t§.b2RevoluteJointDef;
   import §%t§.b2WeldJointDef;
   import §&L§.b2Vec2;
   import §2!H§.LevelMain;
   import §3p§.LevelObject;
   import flash.geom.Point;
   
   public class §3V§
   {
      
      public static const §[§:uint = 1;
      
      public static const §9`§:uint = 2;
      
      public static const §!U§:uint = 3;
      
      public static const §]C§:uint = 4;
      
      public static const §@+§:uint = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §[§ = 1;
            while(true)
            {
               §9`§ = 2;
               loop1:
               for(; !(_loc1_ && _loc2_); if(_loc1_ && §3V§)
               {
                  continue;
               },§§goto(addr74))
               {
                  §!U§ = 3;
                  while(true)
                  {
                     §]C§ = 4;
                     while(_loc2_ || _loc1_)
                     {
                        continue loop1;
                        §@+§ = 5;
                        if(!_loc1_)
                        {
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      private var §00§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §<6§:Boolean;
      
      private var §+!%§:Number;
      
      private var §`+§:Number;
      
      private var §9!O§:Boolean;
      
      private var § !F§:Number;
      
      private var §8U§:Boolean;
      
      private var §"!Y§:Boolean;
      
      private var §0![§:Number;
      
      private var §+P§:Number;
      
      private var §%!a§:Number;
      
      private var §[Q§:Number;
      
      public function §3V§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!_loc14_)
         {
            this.mPoint1 = new Point();
            loop0:
            while(true)
            {
               this.mPoint2 = new Point();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     this.§00§ = param1;
                     loop3:
                     for(; !(_loc14_ && this); if(!(_loc14_ && param2))
                     {
                        continue loop0;
                     })
                     {
                        this.mIndex1 = param2;
                        loop4:
                        while(true)
                        {
                           this.mIndex2 = param3;
                           loop5:
                           while(true)
                           {
                              this.mPoint1 = param4.clone();
                              while(true)
                              {
                                 this.mPoint2 = param5.clone();
                                 loop7:
                                 while(true)
                                 {
                                    this.§<6§ = param7;
                                    addr136:
                                    while(true)
                                    {
                                       this.§+!%§ = param8;
                                       addr115:
                                       while(true)
                                       {
                                          if(_loc15_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop7;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 loop11:
                                 while(_loc15_ || param1)
                                 {
                                    this.§ !F§ = param11;
                                    while(!_loc14_)
                                    {
                                       continue loop5;
                                       addr53:
                                       if(!(_loc15_ || this))
                                       {
                                          continue;
                                       }
                                       if(_loc15_)
                                       {
                                          if(_loc14_)
                                          {
                                             continue loop1;
                                          }
                                          this.§0![§ = param13;
                                          addr64:
                                          if(_loc14_ && param3)
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                if(!(_loc14_ && this))
                                                {
                                                   §§goto(addr53);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      this.§"!Y§ = param6;
                                                      continue loop14;
                                                   }
                                                   addr69:
                                                }
                                             }
                                             continue loop1;
                                          }
                                          if(_loc14_)
                                          {
                                             continue loop11;
                                          }
                                          if(!_loc14_)
                                          {
                                             if(_loc15_)
                                             {
                                                return;
                                                addr41:
                                             }
                                             continue loop4;
                                          }
                                          addr110:
                                          while(true)
                                          {
                                             this.§9!O§ = param10;
                                             continue loop11;
                                          }
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr115);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc14_ && param3)
               {
                  continue;
               }
               this.§`+§ = param9;
               §§goto(addr110);
            }
         }
         §§goto(addr41);
      }
      
      public function get type() : int
      {
         return this.§00§;
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
      
      public function get §in §() : Boolean
      {
         return this.§<6§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§+!%§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§`+§;
      }
      
      public function get §3-§() : Boolean
      {
         return this.§9!O§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§ !F§;
      }
      
      public function get §=!h§() : Boolean
      {
         return this.§8U§;
      }
      
      public function get §>!H§() : Boolean
      {
         return this.§"!Y§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§0![§;
      }
      
      public function get axisX() : Number
      {
         return this.§+P§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+P§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§%!a§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%!a§ = param1;
         }
      }
      
      public function get §]!f§() : Number
      {
         return this.§[Q§;
      }
      
      public function set §]!f§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[Q§ = param1;
         }
      }
      
      public function §0§(param1:LevelObject, param2:LevelObject) : b2JointDef
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§00§);
         if(_loc9_)
         {
            var _loc7_:* = §§pop();
            if(!(_loc8_ && param1))
            {
               §§push(§[§);
               if(_loc9_)
               {
                  §§push(_loc7_);
                  if(!(_loc8_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc8_)
                        {
                           §§push(0);
                           if(_loc8_)
                           {
                              addr511:
                           }
                        }
                        else
                        {
                           addr529:
                           §§push(4);
                           if(_loc9_)
                           {
                              addr532:
                           }
                        }
                        addr534:
                        switch(§§pop())
                        {
                           case 0:
                              _loc3_ = new b2DistanceJointDef();
                              if(_loc9_)
                              {
                                 _loc3_.collideConnected = this.§"!Y§;
                                 while(true)
                                 {
                                    _loc3_.§?!J§ = 4;
                                    _loc3_.§9!7§ = 0.5;
                                    addr73:
                                    if(!(_loc9_ || param2))
                                    {
                                       continue;
                                    }
                                    return _loc3_;
                                    addr80:
                                 }
                              }
                              while(true)
                              {
                                 _loc3_.length = LevelMain.§+$§(param1,param2);
                                 while(!(_loc8_ && param2))
                                 {
                                    _loc3_.§;o§(param1.§9f§(),param2.§9f§(),param1.§9f§().GetPosition(),param2.§9f§().GetPosition());
                                    if(!(_loc9_ || param1))
                                    {
                                       continue;
                                    }
                                    §§goto(addr73);
                                 }
                              }
                              §§goto(addr80);
                           case 1:
                              _loc4_ = new b2WeldJointDef();
                              if(_loc9_)
                              {
                                 _loc4_.collideConnected = this.§"!Y§;
                                 do
                                 {
                                    _loc4_.§;o§(param1.§9f§(),param2.§9f§(),param1.§9f§().§]!8§());
                                 }
                                 while(!_loc9_);
                                 
                              }
                              return _loc4_;
                           case 2:
                              _loc5_ = new b2RevoluteJointDef();
                              if(_loc9_)
                              {
                                 _loc5_.collideConnected = this.§"!Y§;
                                 while(true)
                                 {
                                    _loc5_.§;o§(param1.§9f§(),param2.§9f§(),param1.§9f§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                                    loop5:
                                    while(true)
                                    {
                                       _loc5_.§?P§ = this.§<6§;
                                       loop6:
                                       while(true)
                                       {
                                          _loc5_.§"!<§ = this.§9!O§;
                                          while(_loc9_)
                                          {
                                             _loc5_.motorSpeed = this.§ !F§;
                                             continue loop6;
                                             if(!(_loc8_ && param2))
                                             {
                                                return _loc5_;
                                                addr180:
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                    if(!(_loc9_ || param2))
                                    {
                                       continue;
                                    }
                                    _loc5_.§@!A§ = this.§`+§;
                                    while(_loc9_)
                                    {
                                       _loc5_.§%^§ = this.§+!%§;
                                       while(_loc9_ || _loc3_)
                                       {
                                          _loc5_.§4§ = this.§0![§;
                                          if(!_loc9_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr173);
                                       }
                                    }
                                    §§goto(addr207);
                                 }
                              }
                              §§goto(addr180);
                           case 3:
                              _loc6_ = new b2PrismaticJointDef();
                              if(!_loc8_)
                              {
                                 _loc6_.collideConnected = this.§"!Y§;
                                 loop11:
                                 while(true)
                                 {
                                    _loc6_.§;o§(param1.§9f§(),param2.§9f§(),param1.§9f§().§]!8§(),new b2Vec2(this.§+P§,this.§%!a§));
                                    loop12:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          §§push(this.§8U§);
                                          if(!(_loc8_ && param1))
                                          {
                                             if(§§pop())
                                             {
                                                addr372:
                                                §§push(false);
                                                if(_loc9_ || param2)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc9_ || this))
                                                   {
                                                      addr398:
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   else
                                                   {
                                                      addr388:
                                                   }
                                                }
                                                §§goto(addr388);
                                             }
                                             else
                                             {
                                                §§push(this.§<6§);
                                                if(_loc9_ || _loc3_)
                                                {
                                                   §§goto(addr398);
                                                }
                                             }
                                             §§pop().§?P§ = §§pop();
                                             loop13:
                                             while(!_loc8_)
                                             {
                                                _loc6_.§8!`§ = this.§+!%§;
                                                while(!_loc8_)
                                                {
                                                   _loc6_.§?7§ = this.§`+§;
                                                   do
                                                   {
                                                      _loc6_.§"!<§ = this.§9!O§;
                                                      _loc6_.§;!9§ = this.§0![§;
                                                   }
                                                   while(_loc8_ && param1);
                                                   
                                                   if(_loc9_)
                                                   {
                                                      _loc6_.motorSpeed = this.§ !F§;
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         return _loc6_;
                                                         addr317:
                                                      }
                                                      continue loop13;
                                                      continue loop13;
                                                   }
                                                }
                                                continue loop12;
                                             }
                                             continue loop11;
                                          }
                                          §§goto(addr388);
                                       }
                                       §§goto(addr372);
                                    }
                                 }
                              }
                              §§goto(addr317);
                           default:
                              return null;
                        }
                        addr534:
                     }
                     else
                     {
                        §§push(§9`§);
                        if(!(_loc8_ && param1))
                        {
                           §§push(_loc7_);
                           if(_loc9_ || param2)
                           {
                              addr476:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc9_)
                                 {
                                    addr479:
                                    §§push(1);
                                    if(_loc8_)
                                    {
                                       §§goto(addr532);
                                    }
                                 }
                                 else
                                 {
                                    addr498:
                                    §§push(2);
                                    if(_loc9_)
                                    {
                                       §§goto(addr511);
                                    }
                                    else
                                    {
                                       addr526:
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§!U§);
                                 if(!_loc8_)
                                 {
                                    addr487:
                                    §§push(_loc7_);
                                    if(!_loc8_)
                                    {
                                       addr490:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc8_ && param1))
                                          {
                                             §§goto(addr498);
                                          }
                                          else
                                          {
                                             addr518:
                                             §§push(3);
                                             if(_loc8_ && _loc3_)
                                             {
                                                §§goto(addr532);
                                             }
                                             §§goto(addr534);
                                          }
                                       }
                                       else
                                       {
                                          addr514:
                                          §§push(§]C§);
                                          §§push(_loc7_);
                                       }
                                       §§goto(addr534);
                                    }
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          §§goto(addr518);
                                       }
                                       else
                                       {
                                          §§goto(addr529);
                                       }
                                    }
                                    else
                                    {
                                       if(false)
                                       {
                                          §§goto(addr529);
                                       }
                                       else
                                       {
                                          §§goto(addr534);
                                          §§push(4);
                                       }
                                       §§goto(addr534);
                                    }
                                    §§goto(addr529);
                                 }
                                 §§goto(addr514);
                              }
                              §§goto(addr534);
                           }
                           §§goto(addr490);
                        }
                        §§goto(addr487);
                     }
                     §§goto(addr529);
                  }
                  §§goto(addr476);
               }
               §§goto(addr487);
            }
            §§goto(addr479);
         }
         §§goto(addr534);
      }
   }
}
