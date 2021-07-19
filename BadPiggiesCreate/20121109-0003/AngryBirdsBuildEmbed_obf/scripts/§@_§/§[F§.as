package §@_§
{
   import §<!<§.§7E§;
   import §<!B§.b2Vec2;
   import §>!'§.§<!3§;
   import §[h§.b2DistanceJointDef;
   import §[h§.b2JointDef;
   import §[h§.b2PrismaticJointDef;
   import §[h§.b2RevoluteJointDef;
   import §[h§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §[F§
   {
      
      public static const §>=§:uint = 1;
      
      public static const §"l§:uint = 2;
      
      public static const §&Y§:uint = 3;
      
      public static const §4=§:uint = 4;
      
      public static const §7m§:uint = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>=§ = 1;
            if(!_loc2_)
            {
               addr43:
               §"l§ = 2;
               if(_loc1_)
               {
                  §&Y§ = 3;
                  if(!(_loc2_ && _loc1_))
                  {
                     §4=§ = 4;
                     if(_loc1_ || _loc2_)
                     {
                     }
                  }
                  §§goto(addr71);
               }
               §7m§ = 5;
            }
            addr71:
            return;
         }
         §§goto(addr43);
      }
      
      private var §&"§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §>a§:Boolean;
      
      private var §>!R§:Number;
      
      private var §7o§:Number;
      
      private var §%_§:Boolean;
      
      private var §3s§:Number;
      
      private var §^!_§:Boolean;
      
      private var §1!a§:Boolean;
      
      private var §0`§:Number;
      
      private var §07§:Number;
      
      private var §6!-§:Number;
      
      private var §6!?§:Number;
      
      public function §[F§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         if(!(_loc15_ && param3))
         {
            super();
            this.§&"§ = param1;
            this.mIndex1 = param2;
            this.mIndex2 = param3;
            this.mPoint1 = param4.clone();
            if(_loc14_)
            {
               this.mPoint2 = param5.clone();
               if(_loc14_)
               {
                  this.§>a§ = param7;
                  if(!(_loc15_ && param1))
                  {
                     this.§>!R§ = param8;
                     if(_loc14_ || param1)
                     {
                        this.§7o§ = param9;
                     }
                  }
                  this.§%_§ = param10;
                  this.§3s§ = param11;
                  if(!(_loc15_ && param2))
                  {
                     addr110:
                     this.§^!_§ = param12;
                     if(!_loc15_)
                     {
                        addr115:
                        this.§1!a§ = param6;
                     }
                     §§goto(addr121);
                  }
                  this.§0`§ = param13;
                  addr121:
                  return;
               }
               §§goto(addr110);
            }
            §§goto(addr115);
         }
         §§goto(addr110);
      }
      
      public function get type() : int
      {
         return this.§&"§;
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
      
      public function get §'@§() : Boolean
      {
         return this.§>a§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§>!R§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§7o§;
      }
      
      public function get §'_§() : Boolean
      {
         return this.§%_§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§3s§;
      }
      
      public function get §-a§() : Boolean
      {
         return this.§^!_§;
      }
      
      public function get §@!g§() : Boolean
      {
         return this.§1!a§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§0`§;
      }
      
      public function get axisX() : Number
      {
         return this.§07§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§07§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§6!-§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§6!-§ = param1;
         }
      }
      
      public function get §2!l§() : Number
      {
         return this.§6!?§;
      }
      
      public function set §2!l§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6!?§ = param1;
         }
      }
      
      public function §?!V§(param1:§<!3§, param2:§<!3§) : b2JointDef
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§&"§);
         if(_loc8_ || this)
         {
            var _loc7_:* = §§pop();
            if(!_loc9_)
            {
               §§push(§>=§);
               if(_loc8_ || this)
               {
                  §§push(_loc7_);
                  if(!(_loc9_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc8_ || this)
                        {
                           §§push(0);
                           if(!(_loc8_ || _loc3_))
                           {
                              addr338:
                           }
                        }
                        else
                        {
                           addr330:
                           §§push(3);
                           if(_loc8_ || this)
                           {
                              §§goto(addr338);
                           }
                        }
                        addr344:
                        switch(§§pop())
                        {
                           case 0:
                              _loc3_ = new b2DistanceJointDef();
                              if(_loc8_)
                              {
                                 _loc3_.collideConnected = this.§1!a§;
                                 _loc3_.§4,§ = 4;
                                 _loc3_.§>!k§ = 0.5;
                                 _loc3_.length = §7E§.§!h§(param1,param2);
                                 _loc3_.§6!V§(param1.getBody(),param2.getBody(),param1.getBody().GetPosition(),param2.getBody().GetPosition());
                              }
                              return _loc3_;
                           case 1:
                              (_loc4_ = new b2WeldJointDef()).collideConnected = this.§1!a§;
                              if(!(_loc9_ && this))
                              {
                                 _loc4_.§6!V§(param1.getBody(),param2.getBody(),param1.getBody().§^I§());
                                 if(_loc8_)
                                 {
                                    return _loc4_;
                                 }
                              }
                           case 2:
                              (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§1!a§;
                              _loc5_.§6!V§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                              if(!(_loc9_ && param1))
                              {
                                 _loc5_.§'!v§ = this.§>a§;
                                 _loc5_.§3!J§ = this.§%_§;
                                 _loc5_.motorSpeed = this.§3s§;
                                 _loc5_.§+Z§ = this.§7o§;
                                 if(_loc8_)
                                 {
                                    _loc5_.§=!1§ = this.§>!R§;
                                    _loc5_.§=!m§ = this.§0`§;
                                 }
                              }
                              return _loc5_;
                           case 3:
                              (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§1!a§;
                              if(_loc8_)
                              {
                                 _loc6_.§6!V§(param1.getBody(),param2.getBody(),param1.getBody().§^I§(),new b2Vec2(this.§07§,this.§6!-§));
                                 if(_loc8_)
                                 {
                                    _loc6_.§'!v§ = this.§>a§;
                                    _loc6_.§7=§ = this.§>!R§;
                                    _loc6_.§2!q§ = this.§7o§;
                                    _loc6_.§3!J§ = this.§%_§;
                                    addr210:
                                    _loc6_.§=!G§ = this.§0`§;
                                    if(!_loc8_)
                                    {
                                    }
                                    break;
                                 }
                                 _loc6_.motorSpeed = this.§3s§;
                                 if(_loc8_ || param1)
                                 {
                                    return _loc6_;
                                 }
                                 break;
                              }
                              §§goto(addr210);
                        }
                        return null;
                        addr343:
                     }
                     else
                     {
                        §§push(§"l§);
                        if(!(_loc9_ && _loc3_))
                        {
                           addr284:
                           §§push(_loc7_);
                           if(!_loc9_)
                           {
                              addr287:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc9_ && param2))
                                 {
                                    §§push(1);
                                    if(!_loc8_)
                                    {
                                       addr326:
                                    }
                                 }
                                 else
                                 {
                                    addr323:
                                    §§push(2);
                                    if(!_loc9_)
                                    {
                                       §§goto(addr326);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§&Y§);
                                 if(!_loc9_)
                                 {
                                    §§push(_loc7_);
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       addr320:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc8_)
                                          {
                                             §§goto(addr323);
                                          }
                                          else
                                          {
                                             §§goto(addr330);
                                          }
                                       }
                                       else
                                       {
                                          addr328:
                                          §§push(§4=§);
                                          §§push(_loc7_);
                                       }
                                       §§goto(addr330);
                                    }
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr330);
                                    }
                                    else
                                    {
                                       §§push(4);
                                    }
                                 }
                                 §§goto(addr328);
                              }
                              §§goto(addr343);
                           }
                           §§goto(addr320);
                        }
                        §§goto(addr328);
                     }
                     §§goto(addr330);
                  }
                  §§goto(addr287);
               }
               §§goto(addr284);
            }
            §§goto(addr330);
         }
         §§goto(addr344);
      }
   }
}
