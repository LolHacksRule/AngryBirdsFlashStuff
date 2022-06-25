package § use§
{
   import §%Q§.§`!<§;
   import §,!5§.§^g§;
   import §9!"§.b2DistanceJointDef;
   import §9!"§.b2JointDef;
   import §9!"§.b2PrismaticJointDef;
   import §9!"§.b2RevoluteJointDef;
   import §9!"§.b2WeldJointDef;
   import §>H§.b2Vec2;
   import flash.geom.Point;
   
   public class §+N§
   {
      
      public static const §'m§:uint = 1;
      
      public static const §,a§:uint = 2;
      
      public static const §!p§:uint = 3;
      
      public static const §0!'§:uint = 4;
      
      public static const §3!!§:uint = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'m§ = 1;
            while(true)
            {
               §,a§ = 2;
               while(!_loc2_)
               {
                  §!p§ = 3;
                  loop2:
                  while(_loc1_ || _loc1_)
                  {
                     §0!'§ = 4;
                     do
                     {
                        if(_loc1_)
                        {
                           continue;
                        }
                        continue loop2;
                     }
                     while(§3!!§ = 5, !(_loc1_ || _loc2_));
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      private var §,s§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §1=§:Boolean;
      
      private var §>Y§:Number;
      
      private var §5+§:Number;
      
      private var §5p§:Boolean;
      
      private var §-f§:Number;
      
      private var §"V§:Boolean;
      
      private var §!!§:Boolean;
      
      private var §%!=§:Number;
      
      private var §,!d§:Number;
      
      private var §1!t§:Number;
      
      private var §;!,§:Number;
      
      public function §+N§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!_loc15_)
         {
            this.mPoint1 = new Point();
            while(true)
            {
               this.mPoint2 = new Point();
            }
            addr189:
         }
         while(true)
         {
            super();
            loop2:
            while(true)
            {
               this.§,s§ = param1;
               while(true)
               {
                  this.mIndex1 = param2;
                  continue loop2;
                  loop9:
                  for(; _loc14_ || param1; if(!(_loc14_ || param3))
                  {
                     continue;
                  },if(!_loc14_)
                  {
                     continue loop2;
                  },this.§!!§ = param6,§§goto(addr41))
                  {
                     this.§5+§ = param9;
                     while(true)
                     {
                        this.§5p§ = param10;
                        loop11:
                        while(_loc14_ || param1)
                        {
                           this.§-f§ = param11;
                           while(!_loc15_)
                           {
                              this.§"V§ = param12;
                              while(true)
                              {
                                 if(!_loc15_)
                                 {
                                    continue loop9;
                                 }
                                 continue loop11;
                              }
                              continue loop2;
                           }
                           while(true)
                           {
                              this.mPoint1 = param4.clone();
                              loop6:
                              while(_loc14_)
                              {
                                 this.mPoint2 = param5.clone();
                                 loop7:
                                 while(true)
                                 {
                                    this.§1=§ = param7;
                                    while(_loc14_)
                                    {
                                       this.§>Y§ = param8;
                                       continue loop9;
                                       if(_loc14_ || this)
                                       {
                                          continue loop7;
                                       }
                                    }
                                    continue loop6;
                                 }
                              }
                              §§goto(addr189);
                           }
                           addr90:
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function get type() : int
      {
         return this.§,s§;
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
      
      public function get §,!X§() : Boolean
      {
         return this.§1=§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§>Y§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§5+§;
      }
      
      public function get §7!H§() : Boolean
      {
         return this.§5p§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§-f§;
      }
      
      public function get §9!J§() : Boolean
      {
         return this.§"V§;
      }
      
      public function get §%!d§() : Boolean
      {
         return this.§!!§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§%!=§;
      }
      
      public function get axisX() : Number
      {
         return this.§,!d§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,!d§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§1!t§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1!t§ = param1;
         }
      }
      
      public function get §5l§() : Number
      {
         return this.§;!,§;
      }
      
      public function set §5l§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§;!,§ = param1;
         }
      }
      
      public function §6-§(param1:§`!<§, param2:§`!<§) : b2JointDef
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§,s§);
         if(!(_loc9_ && _loc3_))
         {
            var _loc7_:* = §§pop();
            if(_loc8_ || this)
            {
               §§push(§'m§);
               if(_loc8_)
               {
                  §§push(_loc7_);
                  if(!(_loc9_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc9_ && param2))
                        {
                           §§push(0);
                           if(!_loc9_)
                           {
                              addr495:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc3_ = new b2DistanceJointDef();
                                    if(_loc8_)
                                    {
                                       _loc3_.collideConnected = this.§!!§;
                                       while(true)
                                       {
                                          _loc3_.§ y§ = 4;
                                          loop1:
                                          for(; _loc8_ || _loc3_; while(_loc8_ || param2)
                                          {
                                             _loc3_.length = §^g§.§[&§(param1,param2);
                                             while(_loc8_ || _loc3_)
                                             {
                                                _loc3_.§%%§(param1.§5b§(),param2.§5b§(),param1.§5b§().GetPosition(),param2.§5b§().GetPosition());
                                                if(_loc8_ || _loc3_)
                                                {
                                                   return _loc3_;
                                                }
                                             }
                                          })
                                          {
                                             while(true)
                                             {
                                                _loc3_.§`!X§ = 0.5;
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr103);
                                 case 1:
                                    (_loc4_ = new b2WeldJointDef()).collideConnected = this.§!!§;
                                    if(!(_loc9_ && param2))
                                    {
                                       _loc4_.§%%§(param1.§5b§(),param2.§5b§(),param1.§5b§().§[!S§());
                                       if(_loc8_)
                                       {
                                          return _loc4_;
                                       }
                                       break;
                                    }
                                    break;
                                 case 2:
                                    break;
                                 case 3:
                                    (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§!!§;
                                    if(!(_loc9_ && param2))
                                    {
                                       _loc6_.§%%§(param1.§5b§(),param2.§5b§(),param1.§5b§().§[!S§(),new b2Vec2(this.§,!d§,this.§1!t§));
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(_loc8_ || _loc3_)
                                          {
                                             §§push(this.§"V§);
                                             if(_loc8_)
                                             {
                                                if(§§pop())
                                                {
                                                   addr343:
                                                   §§push(false);
                                                   if(!_loc9_)
                                                   {
                                                      addr346:
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(this.§1=§);
                                                   if(_loc8_ || this)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                                §§pop().§&%§ = §§pop();
                                                _loc6_.§ !B§ = this.§>Y§;
                                                loop6:
                                                while(_loc8_)
                                                {
                                                   _loc6_.§!!l§ = this.§5+§;
                                                   do
                                                   {
                                                      _loc6_.§!;§ = this.§5p§;
                                                      if(_loc8_)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop6;
                                                   }
                                                   while(_loc6_.§>!a§ = this.§%!=§, do
                                                   {
                                                      _loc6_.motorSpeed = this.§-f§;
                                                   }
                                                   while(_loc9_);
                                                   , _loc9_);
                                                   
                                                   return _loc6_;
                                                }
                                                continue;
                                             }
                                             §§goto(addr346);
                                          }
                                          §§goto(addr343);
                                       }
                                    }
                                    §§goto(addr300);
                                 default:
                                    return null;
                              }
                              (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§!!§;
                              addr494:
                              if(_loc8_ || _loc3_)
                              {
                                 _loc5_.§%%§(param1.§5b§(),param2.§5b§(),param1.§5b§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                                 while(true)
                                 {
                                    _loc5_.§&%§ = this.§1=§;
                                    while(true)
                                    {
                                       _loc5_.§!;§ = this.§5p§;
                                       _loc5_.motorSpeed = this.§-f§;
                                       _loc5_.§#f§ = this.§5+§;
                                       §§goto(addr216);
                                    }
                                 }
                              }
                              addr216:
                              while(true)
                              {
                                 _loc5_.§6!x§ = this.§>Y§;
                                 do
                                 {
                                    _loc5_.§5!?§ = this.§%!=§;
                                 }
                                 while(!(_loc8_ || param2));
                                 
                                 if(_loc8_)
                                 {
                                    if(!(_loc9_ && param1))
                                    {
                                       if(!_loc9_)
                                       {
                                          break;
                                       }
                                       continue loop9;
                                    }
                                    continue loop10;
                                 }
                              }
                              return _loc5_;
                              addr494:
                           }
                        }
                        else
                        {
                           addr436:
                           §§push(1);
                           if(_loc9_)
                           {
                              addr477:
                           }
                        }
                        §§goto(addr494);
                     }
                     else
                     {
                        §§push(§,a§);
                        if(!(_loc9_ && this))
                        {
                           §§push(_loc7_);
                           if(!_loc9_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc9_ && param2))
                                 {
                                    §§goto(addr436);
                                 }
                                 else
                                 {
                                    addr469:
                                    §§push(2);
                                    if(_loc9_ && param1)
                                    {
                                       addr489:
                                    }
                                    §§goto(addr494);
                                 }
                              }
                              else
                              {
                                 §§push(§!p§);
                                 if(_loc8_ || this)
                                 {
                                    addr448:
                                    §§push(_loc7_);
                                    if(!(_loc9_ && this))
                                    {
                                       addr456:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             §§goto(addr469);
                                          }
                                       }
                                       else
                                       {
                                          addr480:
                                          if(§0!'§ !== _loc7_)
                                          {
                                             §§goto(addr494);
                                             §§push(4);
                                          }
                                       }
                                       §§goto(addr494);
                                       §§goto(addr494);
                                    }
                                 }
                                 §§goto(addr480);
                              }
                              §§goto(addr494);
                           }
                           §§goto(addr480);
                        }
                        §§goto(addr448);
                     }
                  }
                  §§goto(addr456);
               }
               §§goto(addr448);
            }
            §§goto(addr469);
         }
         §§goto(addr495);
      }
   }
}
