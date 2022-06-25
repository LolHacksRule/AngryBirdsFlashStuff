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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §+N§))
         {
            §'m§ = 1;
            loop0:
            do
            {
               §,a§ = 2;
               while(true)
               {
                  §!p§ = 3;
                  while(_loc2_)
                  {
                     §0!'§ = 4;
                     while(_loc2_)
                     {
                        §3!!§ = 5;
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(_loc1_ && _loc2_);
            
         }
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
         if(_loc14_ || param3)
         {
            this.mPoint1 = new Point();
            while(true)
            {
               this.mPoint2 = new Point();
               loop1:
               for(; _loc14_ || param2; if(!(_loc14_ || param3))
               {
                  continue;
               },§§goto(addr69))
               {
                  super();
                  while(true)
                  {
                     this.§,s§ = param1;
                     loop3:
                     while(_loc14_ || param3)
                     {
                        this.mIndex1 = param2;
                        loop4:
                        while(true)
                        {
                           this.mIndex2 = param3;
                           loop5:
                           while(_loc14_)
                           {
                              this.mPoint1 = param4.clone();
                              continue loop4;
                              addr103:
                              if(_loc15_ && param2)
                              {
                                 continue;
                              }
                              this.§"V§ = param12;
                              loop14:
                              while(true)
                              {
                                 this.§!!§ = param6;
                                 loop15:
                                 while(true)
                                 {
                                    if(_loc14_)
                                    {
                                       addr48:
                                       if(_loc14_ || param3)
                                       {
                                          addr55:
                                          if(_loc14_ || param2)
                                          {
                                             continue loop1;
                                          }
                                          addr120:
                                          while(true)
                                          {
                                             this.§5p§ = param10;
                                             while(true)
                                             {
                                                this.§-f§ = param11;
                                                break loop15;
                                                addr34:
                                                if(!(_loc15_ && this))
                                                {
                                                   return;
                                                }
                                             }
                                             §§goto(addr55);
                                          }
                                       }
                                       break;
                                    }
                                    continue loop14;
                                    addr69:
                                    this.§%!=§ = param13;
                                    if(!_loc14_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr34);
                                 }
                                 loop13:
                                 while(true)
                                 {
                                    if(_loc14_ || this)
                                    {
                                       addr86:
                                       if(!(_loc14_ || this))
                                       {
                                          while(!_loc15_)
                                          {
                                             this.§>Y§ = param8;
                                             §§goto(addr86);
                                          }
                                          while(_loc14_)
                                          {
                                             while(true)
                                             {
                                                this.§1=§ = param7;
                                                §§goto(addr130);
                                             }
                                          }
                                          addr130:
                                          continue loop4;
                                          addr138:
                                       }
                                       §§goto(addr103);
                                    }
                                    while(true)
                                    {
                                       this.§5+§ = param9;
                                       §§goto(addr120);
                                       continue loop13;
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr140);
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
         if(!(_loc3_ && param1))
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
         if(!_loc3_)
         {
            this.§;!,§ = param1;
         }
      }
      
      public function §6-§(param1:§`!<§, param2:§`!<§) : b2JointDef
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§,s§);
         if(_loc9_)
         {
            var _loc7_:* = §§pop();
            if(_loc9_ || param2)
            {
               §§push(§'m§);
               if(_loc9_ || param1)
               {
                  §§push(_loc7_);
                  if(!_loc8_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc8_)
                        {
                           §§push(0);
                           if(_loc8_ && param1)
                           {
                              addr463:
                           }
                        }
                        else
                        {
                           addr467:
                           §§push(3);
                           if(_loc8_)
                           {
                           }
                        }
                        addr476:
                        switch(§§pop())
                        {
                           case 0:
                              _loc3_ = new b2DistanceJointDef();
                              if(_loc9_ || this)
                              {
                                 _loc3_.collideConnected = this.§!!§;
                                 while(true)
                                 {
                                    _loc3_.§ y§ = 4;
                                    while(true)
                                    {
                                       _loc3_.§`!X§ = 0.5;
                                       if(!(_loc9_ || this))
                                       {
                                          break;
                                       }
                                       _loc3_.length = §^g§.§[&§(param1,param2);
                                       §§goto(addr77);
                                    }
                                 }
                              }
                              addr77:
                              while(true)
                              {
                                 _loc3_.§%%§(param1.§5b§(),param2.§5b§(),param1.§5b§().GetPosition(),param2.§5b§().GetPosition());
                                 if(_loc9_)
                                 {
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                              }
                              return _loc3_;
                           case 1:
                              (_loc4_ = new b2WeldJointDef()).collideConnected = this.§!!§;
                              if(!(_loc8_ && _loc3_))
                              {
                                 _loc4_.§%%§(param1.§5b§(),param2.§5b§(),param1.§5b§().§[!S§());
                                 if(!_loc8_)
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
                              if(!(_loc8_ && param1))
                              {
                                 _loc6_.§%%§(param1.§5b§(),param2.§5b§(),param1.§5b§().§[!S§(),new b2Vec2(this.§,!d§,this.§1!t§));
                                 do
                                 {
                                    §§push(_loc6_);
                                    if(_loc9_ || param1)
                                    {
                                       §§push(this.§"V§);
                                       if(!(_loc8_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             addr344:
                                             §§push(false);
                                             if(_loc8_ && this)
                                             {
                                             }
                                             continue;
                                          }
                                          §§push(this.§1=§);
                                          if(_loc8_)
                                          {
                                             continue;
                                          }
                                       }
                                       §§push(Boolean(§§pop()));
                                       continue;
                                    }
                                    §§goto(addr344);
                                 }
                                 while(§§pop().§&%§ = §§pop(), _loc6_.§ !B§ = this.§>Y§, !(_loc9_ || _loc3_));
                                 
                                 _loc6_.§!!l§ = this.§5+§;
                                 loop4:
                                 while(true)
                                 {
                                    _loc6_.§!;§ = this.§5p§;
                                    while(true)
                                    {
                                       _loc6_.§>!a§ = this.§%!=§;
                                       loop6:
                                       while(!(_loc8_ && param2))
                                       {
                                          if(!_loc8_)
                                          {
                                             while(true)
                                             {
                                                _loc6_.motorSpeed = this.§-f§;
                                                if(!_loc8_)
                                                {
                                                   break;
                                                }
                                                continue loop6;
                                             }
                                             return _loc6_;
                                             continue;
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr299);
                           default:
                              return null;
                        }
                        (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§!!§;
                        addr475:
                        if(!(_loc8_ && param1))
                        {
                           _loc5_.§%%§(param1.§5b§(),param2.§5b§(),param1.§5b§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                           while(true)
                           {
                              _loc5_.§&%§ = this.§1=§;
                              addr220:
                              while(true)
                              {
                                 _loc5_.§!;§ = this.§5p§;
                                 addr174:
                                 if(!(_loc8_ && param2))
                                 {
                                    return _loc5_;
                                 }
                              }
                           }
                           addr248:
                        }
                        loop10:
                        while(true)
                        {
                           _loc5_.motorSpeed = this.§-f§;
                           while(true)
                           {
                              _loc5_.§#f§ = this.§5+§;
                              addr202:
                              while(true)
                              {
                                 _loc5_.§6!x§ = this.§>Y§;
                                 continue loop10;
                              }
                              addr167:
                              if(!(_loc9_ || this))
                              {
                                 continue;
                              }
                              §§goto(addr174);
                           }
                        }
                        addr475:
                     }
                     else
                     {
                        §§push(§,a§);
                        if(_loc9_ || param1)
                        {
                           §§push(_loc7_);
                           if(_loc9_ || this)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc9_)
                                 {
                                    §§push(1);
                                    if(!_loc9_)
                                    {
                                       §§goto(addr463);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr467);
                                 }
                              }
                              else
                              {
                                 §§push(§!p§);
                                 if(_loc8_)
                                 {
                                 }
                                 addr465:
                                 if(§§pop() === _loc7_)
                                 {
                                    §§goto(addr467);
                                 }
                                 else
                                 {
                                    §§push(4);
                                 }
                              }
                              §§goto(addr475);
                           }
                           addr452:
                           if(§§pop() === §§pop())
                           {
                              if(_loc9_ || param1)
                              {
                                 addr460:
                                 §§push(2);
                                 if(!_loc8_)
                                 {
                                    §§goto(addr463);
                                 }
                              }
                              else
                              {
                                 §§goto(addr467);
                              }
                              §§goto(addr475);
                           }
                           else
                           {
                              §§goto(addr465);
                              §§push(§0!'§);
                           }
                           §§goto(addr467);
                        }
                        §§push(_loc7_);
                        if(_loc9_)
                        {
                           §§goto(addr452);
                        }
                        §§goto(addr465);
                     }
                     §§goto(addr467);
                  }
                  §§goto(addr452);
               }
               §§goto(addr465);
            }
            §§goto(addr460);
         }
         §§goto(addr476);
      }
   }
}
