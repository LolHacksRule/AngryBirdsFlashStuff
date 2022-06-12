package §8g§
{
   import §#]§.b2Vec2;
   import §8k§.b2DistanceJointDef;
   import §8k§.b2JointDef;
   import §8k§.b2PrismaticJointDef;
   import §8k§.b2RevoluteJointDef;
   import §8k§.b2WeldJointDef;
   import §9"!§.§9"3§;
   import §9"%§.§&!r§;
   import flash.geom.Point;
   
   public class §?!V§
   {
      
      public static const §<,§:uint = 1;
      
      public static const §6P§:uint = 2;
      
      public static const §#!g§:uint = 3;
      
      public static const §+&§:uint = 4;
      
      public static const §3!x§:uint = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §?!V§)
         {
            §<,§ = 1;
            loop0:
            while(true)
            {
               §6P§ = 2;
               loop1:
               do
               {
                  §#!g§ = 3;
                  while(true)
                  {
                     §+&§ = 4;
                     while(!_loc1_)
                     {
                        continue loop0;
                        §3!x§ = 5;
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(_loc1_);
               
            }
         }
      }
      
      private var §%8§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §`0§:Boolean;
      
      private var §#"#§:Number;
      
      private var §`!_§:Number;
      
      private var §8"§:Boolean;
      
      private var §2]§:Number;
      
      private var §4B§:Boolean;
      
      private var §+!8§:Boolean;
      
      private var §<H§:Number;
      
      private var §-q§:Number;
      
      private var §2"0§:Number;
      
      private var §8!e§:Number;
      
      public function §?!V§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
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
                  loop2:
                  while(true)
                  {
                     this.§%8§ = param1;
                     while(true)
                     {
                        this.mIndex1 = param2;
                        loop4:
                        while(true)
                        {
                           this.mIndex2 = param3;
                           while(true)
                           {
                              this.mPoint1 = param4.clone();
                              loop6:
                              for(; !(_loc14_ && param1); if(!_loc14_)
                              {
                                 continue loop4;
                              })
                              {
                                 this.mPoint2 = param5.clone();
                                 while(true)
                                 {
                                    this.§`0§ = param7;
                                    while(_loc15_)
                                    {
                                       this.§#"#§ = param8;
                                       while(true)
                                       {
                                          this.§`!_§ = param9;
                                          §§goto(addr129);
                                       }
                                       while(_loc15_ || this)
                                       {
                                          continue loop6;
                                          §§goto(addr35);
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           if(!(_loc15_ || param3))
                           {
                              continue;
                           }
                           if(_loc14_)
                           {
                              continue loop1;
                           }
                           this.§+!8§ = param6;
                           §§goto(addr56);
                        }
                        if(_loc14_ && this)
                        {
                           continue;
                        }
                        §§goto(addr70);
                     }
                  }
               }
            }
         }
         addr129:
         do
         {
            this.§8"§ = param10;
            continue loop9;
         }
         while(_loc14_ && param2);
         
      }
      
      public function get type() : int
      {
         return this.§%8§;
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
      
      public function get §2!&§() : Boolean
      {
         return this.§`0§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§#"#§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§`!_§;
      }
      
      public function get §!!F§() : Boolean
      {
         return this.§8"§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§2]§;
      }
      
      public function get §3U§() : Boolean
      {
         return this.§4B§;
      }
      
      public function get §;i§() : Boolean
      {
         return this.§+!8§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§<H§;
      }
      
      public function get axisX() : Number
      {
         return this.§-q§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-q§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§2"0§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§2"0§ = param1;
         }
      }
      
      public function get §]A§() : Number
      {
         return this.§8!e§;
      }
      
      public function set §]A§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§8!e§ = param1;
         }
      }
      
      public function §]0§(param1:§&!r§, param2:§&!r§) : b2JointDef
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§%8§);
         if(!(_loc8_ && param2))
         {
            var _loc7_:* = §§pop();
            if(_loc9_)
            {
               §§push(§<,§);
               if(_loc9_)
               {
                  §§push(_loc7_);
                  if(!(_loc8_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc9_ || this)
                        {
                           §§push(0);
                           if(!(_loc9_ || param1))
                           {
                              addr453:
                           }
                        }
                        else
                        {
                           addr457:
                           §§push(3);
                           if(_loc9_)
                           {
                              addr460:
                           }
                        }
                        addr466:
                        switch(§§pop())
                        {
                           case 0:
                              _loc3_ = new b2DistanceJointDef();
                              if(_loc9_)
                              {
                                 _loc3_.collideConnected = this.§+!8§;
                                 do
                                 {
                                    _loc3_.§>"9§ = 4;
                                    do
                                    {
                                       _loc3_.§""2§ = 0.5;
                                       _loc3_.length = §9"3§.§8&§(param1,param2);
                                    }
                                    while(_loc8_);
                                    
                                    _loc3_.§`!r§(param1.§=!y§(),param2.§=!y§(),param1.§=!y§().GetPosition(),param2.§=!y§().GetPosition());
                                 }
                                 while(!(_loc9_ || param2));
                                 
                              }
                              return _loc3_;
                           case 1:
                              (_loc4_ = new b2WeldJointDef()).collideConnected = this.§+!8§;
                              if(!_loc8_)
                              {
                                 _loc4_.§`!r§(param1.§=!y§(),param2.§=!y§(),param1.§=!y§().§6!j§());
                                 if(_loc8_)
                                 {
                                    addr129:
                                    (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§+!8§;
                                    if(_loc9_)
                                    {
                                       _loc5_.§`!r§(param1.§=!y§(),param2.§=!y§(),param1.§=!y§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                                       while(true)
                                       {
                                          _loc5_.§3"%§ = this.§`0§;
                                          while(!_loc8_)
                                          {
                                             _loc5_.§[!c§ = this.§8"§;
                                             while(_loc9_)
                                             {
                                                _loc5_.motorSpeed = this.§2]§;
                                                do
                                                {
                                                   _loc5_.§,!=§ = this.§`!_§;
                                                }
                                                while(_loc8_ && this);
                                                
                                                _loc5_.§"!A§ = this.§#"#§;
                                                if(!(_loc8_ && param2))
                                                {
                                                   return _loc5_;
                                                   addr179:
                                                }
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          _loc5_.§3$§ = this.§<H§;
                                          if(!(_loc9_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          §§goto(addr172);
                                       }
                                       §§goto(addr179);
                                       addr160:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr160);
                                    }
                                 }
                              }
                              return _loc4_;
                           case 2:
                              §§goto(addr129);
                           case 3:
                              break;
                           default:
                              return null;
                        }
                        (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§+!8§;
                        if(_loc9_ || param2)
                        {
                           _loc6_.§`!r§(param1.§=!y§(),param2.§=!y§(),param1.§=!y§().§6!j§(),new b2Vec2(this.§-q§,this.§2"0§));
                        }
                        addr465:
                        §§push(_loc6_);
                        if(_loc9_)
                        {
                           §§push(this.§4B§);
                           if(_loc9_)
                           {
                              if(§§pop())
                              {
                                 addr329:
                                 §§push(false);
                                 if(_loc8_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(this.§`0§);
                                 if(!(_loc8_ && this))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                           }
                           §§pop().§3"%§ = §§pop();
                           do
                           {
                              _loc6_.§[!7§ = this.§#"#§;
                              loop9:
                              do
                              {
                                 _loc6_.§<!T§ = this.§`!_§;
                                 while(true)
                                 {
                                    _loc6_.§[!c§ = this.§8"§;
                                    while(_loc9_)
                                    {
                                       _loc6_.§22§ = this.§<H§;
                                       if(!_loc8_)
                                       {
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                              while(_loc8_);
                              
                              _loc6_.motorSpeed = this.§2]§;
                           }
                           while(_loc8_);
                           
                           return _loc6_;
                        }
                        §§goto(addr329);
                        addr465:
                     }
                     else
                     {
                        §§push(§6P§);
                        if(!_loc8_)
                        {
                           §§push(_loc7_);
                           if(!(_loc8_ && param1))
                           {
                              addr414:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc9_)
                                 {
                                    §§push(1);
                                    if(_loc8_)
                                    {
                                       §§goto(addr453);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr457);
                                 }
                                 §§goto(addr465);
                              }
                              else
                              {
                                 §§push(§#!g§);
                                 if(_loc9_ || this)
                                 {
                                    addr429:
                                    §§push(_loc7_);
                                    if(!(_loc8_ && param1))
                                    {
                                       addr447:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             §§push(2);
                                             if(!_loc8_)
                                             {
                                                §§goto(addr453);
                                             }
                                             else
                                             {
                                                §§goto(addr460);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr457);
                                          }
                                          §§goto(addr465);
                                       }
                                       else
                                       {
                                          addr455:
                                          §§push(§+&§);
                                          §§push(_loc7_);
                                       }
                                       §§goto(addr457);
                                    }
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr457);
                                    }
                                    else
                                    {
                                       §§push(4);
                                    }
                                    §§goto(addr465);
                                 }
                                 §§goto(addr455);
                              }
                           }
                           §§goto(addr447);
                        }
                        §§goto(addr429);
                     }
                     §§goto(addr457);
                  }
                  §§goto(addr414);
               }
               §§goto(addr455);
            }
            §§goto(addr457);
         }
         §§goto(addr466);
      }
   }
}
