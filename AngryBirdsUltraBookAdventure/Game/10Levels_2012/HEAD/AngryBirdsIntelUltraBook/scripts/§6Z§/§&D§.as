package §6Z§
{
   import §3Y§.LevelObject;
   import §5!_§.b2DistanceJointDef;
   import §5!_§.b2JointDef;
   import §5!_§.b2PrismaticJointDef;
   import §5!_§.b2RevoluteJointDef;
   import §5!_§.b2WeldJointDef;
   import §?!&§.b2Vec2;
   import §?A§.LevelMain;
   import flash.geom.Point;
   
   public class §&D§
   {
      
      public static const §=!0§:uint = 1;
      
      public static const §9!-§:uint = 2;
      
      public static const §'!j§:uint = 3;
      
      public static const §;!I§:uint = 4;
      
      public static const §-0§:uint = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §=!0§ = 1;
            while(true)
            {
               §9!-§ = 2;
               loop1:
               for(; !(_loc1_ && _loc2_); if(_loc1_ && §&D§)
               {
                  continue;
               },§§goto(addr74))
               {
                  §'!j§ = 3;
                  while(true)
                  {
                     §;!I§ = 4;
                     while(_loc2_ || _loc1_)
                     {
                        continue loop1;
                        §-0§ = 5;
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
      
      private var §9!Q§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §36§:Boolean;
      
      private var §,O§:Number;
      
      private var §]§:Number;
      
      private var §<I§:Boolean;
      
      private var §2j§:Number;
      
      private var §^!J§:Boolean;
      
      private var §>!!§:Boolean;
      
      private var §[!§:Number;
      
      private var §>!P§:Number;
      
      private var §&!9§:Number;
      
      private var §[4§:Number;
      
      public function §&D§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
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
                     this.§9!Q§ = param1;
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
                                    this.§36§ = param7;
                                    addr136:
                                    while(true)
                                    {
                                       this.§,O§ = param8;
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
                                    this.§2j§ = param11;
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
                                          this.§[!§ = param13;
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
                                                      this.§>!!§ = param6;
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
                                             this.§<I§ = param10;
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
               this.§]§ = param9;
               §§goto(addr110);
            }
         }
         §§goto(addr41);
      }
      
      public function get type() : int
      {
         return this.§9!Q§;
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
      
      public function get §5J§() : Boolean
      {
         return this.§36§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§,O§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§]§;
      }
      
      public function get §=E§() : Boolean
      {
         return this.§<I§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§2j§;
      }
      
      public function get §8!&§() : Boolean
      {
         return this.§^!J§;
      }
      
      public function get §4!Q§() : Boolean
      {
         return this.§>!!§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§[!§;
      }
      
      public function get axisX() : Number
      {
         return this.§>!P§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>!P§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§&!9§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&!9§ = param1;
         }
      }
      
      public function get §1_§() : Number
      {
         return this.§[4§;
      }
      
      public function set §1_§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[4§ = param1;
         }
      }
      
      public function §2b§(param1:LevelObject, param2:LevelObject) : b2JointDef
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§9!Q§);
         if(_loc9_)
         {
            var _loc7_:* = §§pop();
            if(!(_loc8_ && param1))
            {
               §§push(§=!0§);
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
                                 _loc3_.collideConnected = this.§>!!§;
                                 while(true)
                                 {
                                    _loc3_.§!N§ = 4;
                                    _loc3_.§^c§ = 0.5;
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
                                 _loc3_.length = LevelMain.§4!U§(param1,param2);
                                 while(!(_loc8_ && param2))
                                 {
                                    _loc3_.§3!a§(param1.§8!N§(),param2.§8!N§(),param1.§8!N§().GetPosition(),param2.§8!N§().GetPosition());
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
                                 _loc4_.collideConnected = this.§>!!§;
                                 do
                                 {
                                    _loc4_.§3!a§(param1.§8!N§(),param2.§8!N§(),param1.§8!N§().§5!Q§());
                                 }
                                 while(!_loc9_);
                                 
                              }
                              return _loc4_;
                           case 2:
                              _loc5_ = new b2RevoluteJointDef();
                              if(_loc9_)
                              {
                                 _loc5_.collideConnected = this.§>!!§;
                                 while(true)
                                 {
                                    _loc5_.§3!a§(param1.§8!N§(),param2.§8!N§(),param1.§8!N§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                                    loop5:
                                    while(true)
                                    {
                                       _loc5_.§!X§ = this.§36§;
                                       loop6:
                                       while(true)
                                       {
                                          _loc5_.§0e§ = this.§<I§;
                                          while(_loc9_)
                                          {
                                             _loc5_.motorSpeed = this.§2j§;
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
                                    _loc5_.§ !>§ = this.§]§;
                                    while(_loc9_)
                                    {
                                       _loc5_.§&;§ = this.§,O§;
                                       while(_loc9_ || _loc3_)
                                       {
                                          _loc5_.§?!h§ = this.§[!§;
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
                                 _loc6_.collideConnected = this.§>!!§;
                                 loop11:
                                 while(true)
                                 {
                                    _loc6_.§3!a§(param1.§8!N§(),param2.§8!N§(),param1.§8!N§().§5!Q§(),new b2Vec2(this.§>!P§,this.§&!9§));
                                    loop12:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          §§push(this.§^!J§);
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
                                                §§push(this.§36§);
                                                if(_loc9_ || _loc3_)
                                                {
                                                   §§goto(addr398);
                                                }
                                             }
                                             §§pop().§!X§ = §§pop();
                                             loop13:
                                             while(!_loc8_)
                                             {
                                                _loc6_.§1!D§ = this.§,O§;
                                                while(!_loc8_)
                                                {
                                                   _loc6_.§#g§ = this.§]§;
                                                   do
                                                   {
                                                      _loc6_.§0e§ = this.§<I§;
                                                      _loc6_.§#M§ = this.§[!§;
                                                   }
                                                   while(_loc8_ && param1);
                                                   
                                                   if(_loc9_)
                                                   {
                                                      _loc6_.motorSpeed = this.§2j§;
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
                        §§push(§9!-§);
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
                                 §§push(§'!j§);
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
                                          §§push(§;!I§);
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
