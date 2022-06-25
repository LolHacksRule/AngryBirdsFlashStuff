package §5<§
{
   import § var§.§!u§;
   import §&H§.b2Vec2;
   import §2!'§.b2DistanceJointDef;
   import §2!'§.b2JointDef;
   import §2!'§.b2PrismaticJointDef;
   import §2!'§.b2RevoluteJointDef;
   import §2!'§.b2WeldJointDef;
   import §40§.§5G§;
   import flash.geom.Point;
   
   public class §-H§
   {
      
      public static const §@!L§:uint = 1;
      
      public static const §3!W§:uint = 2;
      
      public static const §2h§:uint = 3;
      
      public static const §'"#§:uint = 4;
      
      public static const §1!4§:uint = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §@!L§ = 1;
         }
         do
         {
            §3!W§ = 2;
            do
            {
               §2h§ = 3;
               do
               {
                  §'"#§ = 4;
                  do
                  {
                     §1!4§ = 5;
                  }
                  while(_loc1_);
                  
               }
               while(_loc1_ && _loc1_);
               
            }
            while(_loc1_ && _loc2_);
            
         }
         while(_loc1_ && _loc2_);
         
      }
      
      private var §;!L§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §9!h§:Boolean;
      
      private var §%!a§:Number;
      
      private var §37§:Number;
      
      private var §!7§:Boolean;
      
      private var §1#§:Number;
      
      private var §4%§:Boolean;
      
      private var §"8§:Boolean;
      
      private var §-9§:Number;
      
      private var § S§:Number;
      
      private var §2!"§:Number;
      
      private var §<!'§:Number;
      
      public function §-H§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!(_loc15_ && param3))
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
                  loop2:
                  while(true)
                  {
                     this.§;!L§ = param1;
                     while(true)
                     {
                        this.mIndex1 = param2;
                        loop4:
                        for(; _loc14_; if(!(_loc14_ || param2))
                        {
                           continue;
                        },this.§4%§ = param12,§§goto(addr52))
                        {
                           this.mIndex2 = param3;
                           loop5:
                           while(true)
                           {
                              this.mPoint1 = param4.clone();
                              loop6:
                              while(true)
                              {
                                 this.mPoint2 = param5.clone();
                                 addr70:
                                 if(!(_loc15_ && param1))
                                 {
                                    if(_loc14_)
                                    {
                                       this.§"8§ = param6;
                                       while(true)
                                       {
                                          if(!_loc14_)
                                          {
                                             while(true)
                                             {
                                                if(!_loc15_)
                                                {
                                                   §§goto(addr54);
                                                }
                                             }
                                             continue loop6;
                                             addr52:
                                          }
                                          if(_loc14_)
                                          {
                                             if(_loc15_)
                                             {
                                                break;
                                             }
                                             if(!_loc15_)
                                             {
                                                continue;
                                             }
                                             continue loop1;
                                          }
                                          loop10:
                                          while(true)
                                          {
                                             this.§!7§ = param10;
                                             while(true)
                                             {
                                                this.§1#§ = param11;
                                                addr54:
                                                if(!(_loc15_ && param1))
                                                {
                                                   if(_loc14_)
                                                   {
                                                      addr63:
                                                      if(!(_loc15_ && this))
                                                      {
                                                         §§goto(addr70);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§%!a§ = param8;
                                                            §§goto(addr63);
                                                         }
                                                         addr125:
                                                      }
                                                   }
                                                   while(!_loc15_)
                                                   {
                                                      this.§37§ = param9;
                                                      continue loop10;
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc14_)
                                             {
                                                continue loop4;
                                             }
                                             addr131:
                                             while(true)
                                             {
                                                this.§9!h§ = param7;
                                                §§goto(addr125);
                                             }
                                          }
                                          continue loop4;
                                       }
                                       continue loop2;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      public function get type() : int
      {
         return this.§;!L§;
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
      
      public function get §0![§() : Boolean
      {
         return this.§9!h§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§%!a§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§37§;
      }
      
      public function get §3A§() : Boolean
      {
         return this.§!7§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§1#§;
      }
      
      public function get §9!O§() : Boolean
      {
         return this.§4%§;
      }
      
      public function get §&!F§() : Boolean
      {
         return this.§"8§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§-9§;
      }
      
      public function get axisX() : Number
      {
         return this.§ S§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§ S§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§2!"§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§2!"§ = param1;
         }
      }
      
      public function get §2,§() : Number
      {
         return this.§<!'§;
      }
      
      public function set §2,§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§<!'§ = param1;
         }
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Object = new Object();
         if(!_loc2_)
         {
            _loc1_.type = this.type;
            loop0:
            while(true)
            {
               _loc1_.index1 = this.index1;
               loop1:
               while(true)
               {
                  _loc1_.index2 = this.index2;
                  loop2:
                  while(true)
                  {
                     _loc1_.x1 = this.point1.x;
                     while(true)
                     {
                        _loc1_.x2 = this.point2.x;
                        addr56:
                        if(!(_loc3_ || _loc2_))
                        {
                           continue;
                        }
                        _loc1_.destroyTimer = this.§2,§;
                        addr67:
                        if(!(_loc3_ || _loc2_))
                        {
                           while(true)
                           {
                              _loc1_.lowerLimit = this.lowerLimit;
                              loop8:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 _loc1_.upperLimit = this.upperLimit;
                                 while(true)
                                 {
                                    _loc1_.motor = this.§3A§;
                                    addr162:
                                    while(_loc3_)
                                    {
                                       _loc1_.motorSpeed = this.motorSpeed;
                                       continue loop8;
                                    }
                                 }
                              }
                              continue loop1;
                              §§goto(addr67);
                           }
                           addr188:
                        }
                        §§goto(addr24);
                     }
                  }
               }
            }
         }
         §§goto(addr226);
      }
      
      public function §`!h§(param1:§!u§, param2:§!u§) : b2JointDef
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§;!L§);
         if(_loc8_)
         {
            var _loc7_:* = §§pop();
            if(_loc8_)
            {
               §§push(§@!L§);
               if(_loc8_)
               {
                  §§push(_loc7_);
                  if(_loc8_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc8_ || param1)
                        {
                           §§push(0);
                           if(_loc9_)
                           {
                              addr453:
                           }
                        }
                        else
                        {
                           addr470:
                           §§push(3);
                           if(!_loc8_)
                           {
                           }
                        }
                        addr479:
                        switch(§§pop())
                        {
                           case 0:
                              _loc3_ = new b2DistanceJointDef();
                              if(_loc8_)
                              {
                                 _loc3_.collideConnected = this.§"8§;
                                 loop0:
                                 while(true)
                                 {
                                    _loc3_.§9!@§ = 4;
                                    addr93:
                                    while(true)
                                    {
                                       _loc3_.§6V§ = 0.5;
                                       continue loop0;
                                       addr83:
                                       _loc3_.§`!D§(param1.§63§(),param2.§63§(),param1.§63§().GetPosition(),param2.§63§().GetPosition());
                                       if(_loc8_ || param2)
                                       {
                                          return _loc3_;
                                          addr73:
                                       }
                                    }
                                 }
                                 addr98:
                              }
                              while(true)
                              {
                                 _loc3_.length = §5G§.§7!g§(param1,param2);
                                 if(_loc8_)
                                 {
                                    §§goto(addr83);
                                 }
                                 else
                                 {
                                    §§goto(addr98);
                                 }
                              }
                              §§goto(addr73);
                           case 1:
                              (_loc4_ = new b2WeldJointDef()).collideConnected = this.§"8§;
                              if(_loc8_ || param1)
                              {
                                 _loc4_.§`!D§(param1.§63§(),param2.§63§(),param1.§63§().§58§());
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
                              (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§"8§;
                              if(!(_loc9_ && _loc3_))
                              {
                                 _loc6_.§`!D§(param1.§63§(),param2.§63§(),param1.§63§().§58§(),new b2Vec2(this.§ S§,this.§2!"§));
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(_loc8_ || param1)
                                    {
                                       §§push(this.§4%§);
                                       if(_loc8_)
                                       {
                                          if(§§pop())
                                          {
                                             addr362:
                                             §§push(false);
                                             if(_loc9_ && param1)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§push(this.§9!h§);
                                             if(_loc8_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                       }
                                       §§pop().§&!A§ = §§pop();
                                       loop4:
                                       while(true)
                                       {
                                          _loc6_.§;!R§ = this.§%!a§;
                                          while(_loc8_)
                                          {
                                             _loc6_.§ use§ = this.§37§;
                                             while(true)
                                             {
                                                _loc6_.§ !q§ = this.§!7§;
                                                if(!_loc8_)
                                                {
                                                   break;
                                                }
                                                if(_loc8_)
                                                {
                                                   continue;
                                                }
                                                continue loop4;
                                             }
                                          }
                                          continue loop3;
                                       }
                                    }
                                    §§goto(addr362);
                                 }
                              }
                              §§goto(addr333);
                           default:
                              return null;
                        }
                        (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§"8§;
                        addr478:
                        if(!(_loc9_ && param2))
                        {
                           _loc5_.§`!D§(param1.§63§(),param2.§63§(),param1.§63§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                        }
                        loop8:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!(_loc9_ && _loc3_))
                           {
                              §§push(this.§4%§);
                              if(_loc8_)
                              {
                                 if(§§pop())
                                 {
                                    addr218:
                                    §§push(false);
                                    if(!(_loc8_ || param2))
                                    {
                                       addr246:
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.§9!h§);
                                    if(_loc8_ || _loc3_)
                                    {
                                       §§goto(addr246);
                                    }
                                 }
                                 §§pop().§&!A§ = §§pop();
                                 loop9:
                                 while(true)
                                 {
                                    _loc5_.§ !q§ = this.§!7§;
                                    while(true)
                                    {
                                       if(_loc8_)
                                       {
                                          continue loop8;
                                       }
                                       continue loop9;
                                       addr203:
                                       _loc5_.motorSpeed = this.§1#§;
                                       do
                                       {
                                          _loc5_.§'S§ = this.§37§;
                                          do
                                          {
                                             _loc5_.§;U§ = this.§%!a§;
                                             do
                                             {
                                                _loc5_.§&!u§ = this.§-9§;
                                             }
                                             while(_loc9_);
                                             
                                          }
                                          while(_loc9_);
                                          
                                       }
                                       while(!_loc8_);
                                       
                                       if(!_loc9_)
                                       {
                                          return _loc5_;
                                       }
                                    }
                                    continue loop8;
                                 }
                              }
                              §§goto(addr246);
                           }
                           §§goto(addr218);
                        }
                        addr478:
                     }
                     else
                     {
                        §§push(§3!W§);
                        if(_loc8_)
                        {
                           §§push(_loc7_);
                           if(_loc8_ || _loc3_)
                           {
                              addr432:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc9_ && param2))
                                 {
                                    §§push(1);
                                    if(_loc8_)
                                    {
                                       §§goto(addr453);
                                    }
                                    else
                                    {
                                       addr466:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr470);
                                 }
                                 §§goto(addr478);
                              }
                              else
                              {
                                 §§push(§2h§);
                                 if(_loc8_)
                                 {
                                    addr457:
                                    §§push(_loc7_);
                                    if(!_loc9_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             addr463:
                                             §§push(2);
                                             if(_loc8_)
                                             {
                                                §§goto(addr466);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr470);
                                          }
                                          §§goto(addr478);
                                       }
                                       else
                                       {
                                          addr468:
                                          §§push(§'"#§);
                                          §§push(_loc7_);
                                       }
                                       §§goto(addr470);
                                    }
                                 }
                                 §§goto(addr468);
                              }
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr470);
                           }
                           else
                           {
                              §§push(4);
                           }
                           §§goto(addr478);
                        }
                        §§goto(addr457);
                     }
                     §§goto(addr470);
                  }
                  §§goto(addr432);
               }
               §§goto(addr468);
            }
            §§goto(addr463);
         }
         §§goto(addr479);
      }
   }
}
