package §0N§
{
   import §@!"§.§#!v§;
   import §@!E§.b2Vec2;
   import §@h§.b2DistanceJointDef;
   import §@h§.b2JointDef;
   import §@h§.b2PrismaticJointDef;
   import §@h§.b2RevoluteJointDef;
   import §@h§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §-C§
   {
      
      public static const §5!G§:uint = 1;
      
      public static const §9!M§:uint = 2;
      
      public static const §6`§:uint = 3;
      
      public static const §0g§:uint = 4;
      
      public static const §-!R§:uint = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §5!G§ = 1;
            loop0:
            while(true)
            {
               §9!M§ = 2;
               loop1:
               while(true)
               {
                  §6`§ = 3;
                  while(!_loc1_)
                  {
                     while(!(_loc1_ && _loc1_))
                     {
                        §-!R§ = 5;
                        if(!(_loc1_ && §-C§))
                        {
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §0g§ = 4;
            §§goto(addr57);
         }
         §§goto(addr52);
      }
      
      private var §#!-§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §"!M§:Boolean;
      
      private var §<!=§:Number;
      
      private var §"B§:Number;
      
      private var §'b§:Boolean;
      
      private var §;"0§:Number;
      
      private var §^!g§:Boolean;
      
      private var §%l§:Boolean;
      
      private var §'"#§:Boolean;
      
      private var §4"6§:Number;
      
      private var §@"0§:Number;
      
      private var §4%§:Number;
      
      private var §9"7§:int = 0;
      
      private var §<" §:Number = 0.0;
      
      private var §0+§:Number = 0.0;
      
      private var §;!E§:Number;
      
      private var §9!L§:Boolean;
      
      private var §"""§:Number;
      
      public function §-C§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         if(_loc18_ || param1)
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
                     this.§#!-§ = param1;
                     loop3:
                     while(true)
                     {
                        this.mId1 = param2;
                        loop4:
                        while(true)
                        {
                           this.mId2 = param3;
                           while(true)
                           {
                              this.mPoint1 = param4.clone();
                              addr169:
                              while(_loc18_)
                              {
                                 this.mPoint2 = param5.clone();
                                 while(true)
                                 {
                                    this.§"!M§ = param7;
                                    addr157:
                                    while(true)
                                    {
                                       this.§<!=§ = param8;
                                       addr152:
                                       while(true)
                                       {
                                          this.§"B§ = param9;
                                       }
                                    }
                                    addr105:
                                    while(_loc18_ || param2)
                                    {
                                       if(_loc18_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              continue loop0;
                              addr51:
                              if(!(_loc18_ || param1))
                              {
                                 continue;
                              }
                              this.§%l§ = param16;
                              addr58:
                              if(_loc18_ || this)
                              {
                                 if(_loc18_)
                                 {
                                    if(!_loc17_)
                                    {
                                       return;
                                       addr72:
                                    }
                                    loop15:
                                    while(true)
                                    {
                                       if(!(_loc17_ && param3))
                                       {
                                          if(!_loc17_)
                                          {
                                             addr81:
                                             loop11:
                                             for(; _loc18_; §§goto(addr81))
                                             {
                                                this.§;"0§ = param11;
                                                while(true)
                                                {
                                                   this.§^!g§ = param12;
                                                   addr126:
                                                   while(true)
                                                   {
                                                      if(_loc18_)
                                                      {
                                                         if(!_loc18_)
                                                         {
                                                            break;
                                                         }
                                                         this.§'"#§ = param6;
                                                         §§goto(addr105);
                                                      }
                                                      addr147:
                                                      while(true)
                                                      {
                                                         this.§'b§ = param10;
                                                         continue loop11;
                                                      }
                                                      continue loop15;
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             if(!(_loc17_ && param2))
                                             {
                                                if(_loc17_)
                                                {
                                                   break;
                                                }
                                                this.§9!L§ = param14;
                                                while(true)
                                                {
                                                   if(_loc18_)
                                                   {
                                                      if(_loc17_)
                                                      {
                                                         break;
                                                      }
                                                      this.§"""§ = param15;
                                                      while(!_loc17_)
                                                      {
                                                         §§goto(addr51);
                                                         §§goto(addr58);
                                                      }
                                                      §§goto(addr152);
                                                   }
                                                   §§goto(addr105);
                                                }
                                                §§goto(addr169);
                                             }
                                             §§goto(addr157);
                                          }
                                          §§goto(addr135);
                                       }
                                       §§goto(addr126);
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr63);
                              }
                              §§goto(addr49);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr147);
      }
      
      public function get type() : int
      {
         return this.§#!-§;
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function get id2() : int
      {
         return this.mId2;
      }
      
      public function get point1() : Point
      {
         return this.mPoint1.clone();
      }
      
      public function get point2() : Point
      {
         return this.mPoint2.clone();
      }
      
      public function get §,i§() : Boolean
      {
         return this.§"!M§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§<!=§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§"B§;
      }
      
      public function get §4!r§() : Boolean
      {
         return this.§'b§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§;"0§;
      }
      
      public function get §`!]§() : Boolean
      {
         return this.§^!g§;
      }
      
      public function get §>!f§() : Boolean
      {
         return this.§'"#§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§4"6§;
      }
      
      public function get isBreakable() : Boolean
      {
         return this.§9!L§;
      }
      
      public function set isBreakable(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9!L§ = param1;
         }
      }
      
      public function get minBreakForce() : Number
      {
         return this.§"""§;
      }
      
      public function set minBreakForce(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"""§ = param1;
         }
      }
      
      public function get §#!j§() : Boolean
      {
         return this.§%l§;
      }
      
      public function set §#!j§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%l§ = param1;
         }
      }
      
      public function get axisX() : Number
      {
         return this.§@"0§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§@"0§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§4%§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4%§ = param1;
         }
      }
      
      public function get annihilationTime() : Number
      {
         return this.§;!E§;
      }
      
      public function set annihilationTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§;!E§ = param1;
         }
      }
      
      public function get coordinateType() : int
      {
         return this.§9"7§;
      }
      
      public function set coordinateType(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§9"7§ = param1;
         }
      }
      
      public function get dampingRatio() : Number
      {
         return this.§<" §;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§<" § = param1;
         }
      }
      
      public function get frequency() : Number
      {
         return this.§0+§;
      }
      
      public function set frequency(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0+§ = param1;
         }
      }
      
      private function §6i§(param1:§#!v§, param2:§#!v§) : b2JointDef
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         if(_loc7_ || param2)
         {
            _loc3_.collideConnected = this.§'"#§;
            while(true)
            {
               _loc3_.§<!f§ = this.§0+§;
               while(true)
               {
                  _loc3_.dampingRatio = this.§<" §;
                  while(true)
                  {
                     §§push(this.§9"7§);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        addr235:
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              §§push(this.§9"7§);
                              continue loop3;
                           }
                           if(!_loc6_)
                           {
                              addr241:
                              _loc3_.§8D§.x = 0;
                              addr240:
                           }
                        }
                     }
                     if(!(_loc7_ || param2))
                     {
                        continue;
                     }
                     if(false)
                     {
                        §§goto(addr60);
                     }
                     §§goto(addr260);
                  }
                  if(_loc6_ && param2)
                  {
                     continue;
                  }
                  §§goto(addr101);
               }
            }
         }
         §§goto(addr242);
      }
      
      private function §^! §(param1:§#!v§, param2:§#!v§) : b2JointDef
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         if(!_loc7_)
         {
            _loc3_.collideConnected = this.§'"#§;
         }
         var _loc4_:b2Vec2 = param1.§!!I§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§!!I§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         §§push(§§findproperty(b2Vec2));
         §§push(_loc5_.x);
         if(_loc8_ || _loc3_)
         {
            §§push(_loc4_.x);
            if(!_loc7_)
            {
               §§push(§§pop() + §§pop());
               if(!(_loc7_ && param1))
               {
                  §§push(0.5);
                  if(!(_loc7_ && param2))
                  {
                     addr94:
                     §§push(§§pop() * §§pop());
                     §§push(_loc5_.y);
                     if(_loc8_)
                     {
                        §§push(_loc4_.y);
                        if(!_loc7_)
                        {
                           §§goto(addr107);
                        }
                        §§push(§§pop() * §§pop());
                     }
                  }
                  addr107:
                  §§push(§§pop() + §§pop());
                  if(_loc8_)
                  {
                     addr105:
                     §§push(0.5);
                  }
                  var _loc6_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                  if(_loc8_ || this)
                  {
                     _loc3_.§6R§(param1.§!!I§(),param2.§!!I§(),_loc6_);
                  }
                  return _loc3_;
               }
               §§goto(addr94);
            }
            §§goto(addr105);
         }
         §§goto(addr94);
      }
      
      private function §'i§(param1:§#!v§, param2:§#!v§) : b2JointDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         if(_loc4_ || this)
         {
            _loc3_.collideConnected = this.§'"#§;
            loop0:
            while(true)
            {
               _loc3_.§6R§(param1.§!!I§(),param2.§!!I§(),param1.§!!I§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               while(true)
               {
                  _loc3_.§05§ = this.§"!M§;
                  loop3:
                  for(; _loc4_ || param2; if(_loc5_ && param2)
                  {
                     continue;
                  },_loc3_.§3!i§ = this.§<!=§,while(_loc4_ || param1)
                  {
                     _loc3_.§"7§ = this.§4"6§;
                     if(!_loc4_)
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        return _loc3_;
                     }
                     §§goto(addr71);
                  },while(true)
                  {
                     _loc3_.§9!g§ = this.§'b§;
                     continue loop3;
                     §§goto(addr48);
                  },addr48:)
                  {
                     _loc3_.motorSpeed = this.§;"0§;
                     loop4:
                     while(!_loc5_)
                     {
                        _loc3_.§^!t§ = this.§"B§;
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              continue loop3;
                           }
                           continue loop4;
                        }
                        continue loop3;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr107);
      }
      
      private function §5P§(param1:§#!v§, param2:§#!v§) : b2JointDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         if(!_loc5_)
         {
            _loc3_.collideConnected = this.§'"#§;
         }
         loop0:
         while(true)
         {
            _loc3_.§6R§(param1.§!!I§(),param2.§!!I§(),param1.§!!I§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§@"0§,this.§4%§));
            loop1:
            while(true)
            {
               _loc3_.§05§ = this.§"!M§;
               loop2:
               while(true)
               {
                  _loc3_.§;!W§ = this.§<!=§;
                  while(!_loc5_)
                  {
                     _loc3_.§2!$§ = this.§"B§;
                     loop4:
                     while(!(_loc5_ && _loc3_))
                     {
                        if(!_loc5_)
                        {
                           _loc3_.§9!g§ = this.§'b§;
                           while(_loc4_)
                           {
                              _loc3_.§;d§ = this.§4"6§;
                              do
                              {
                                 _loc3_.motorSpeed = this.§;"0§;
                              }
                              while(!_loc4_);
                              
                              if(!_loc5_)
                              {
                                 if(!(_loc5_ && param2))
                                 {
                                    return _loc3_;
                                 }
                                 continue loop4;
                                 continue loop4;
                              }
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §5",§(param1:§#!v§, param2:§#!v§) : b2JointDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§#!-§);
         if(!_loc4_)
         {
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               §§push(§5!G§);
               if(!(_loc4_ && param2))
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc4_ && this))
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                              addr175:
                              switch(§§pop())
                              {
                                 case 0:
                                    return this.§6i§(param1,param2);
                                 case 1:
                                    return this.§^! §(param1,param2);
                                 case 2:
                                    return this.§'i§(param1,param2);
                                 case 3:
                                    return this.§5P§(param1,param2);
                                 default:
                                    return null;
                              }
                              addr175:
                           }
                        }
                        else
                        {
                           addr127:
                           §§push(1);
                           if(_loc5_ || param1)
                           {
                           }
                        }
                        §§goto(addr175);
                     }
                     else
                     {
                        §§push(§9!M§);
                        if(_loc5_)
                        {
                           addr116:
                           §§push(_loc3_);
                           if(_loc5_ || param1)
                           {
                              addr124:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr127);
                                 }
                                 else
                                 {
                                    addr150:
                                    §§push(2);
                                    if(!_loc4_)
                                    {
                                       §§goto(addr153);
                                    }
                                    §§goto(addr175);
                                 }
                              }
                              else
                              {
                                 §§push(§6`§);
                                 if(_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr147:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§goto(addr150);
                                          }
                                          else
                                          {
                                             addr157:
                                             §§push(3);
                                             if(_loc4_)
                                             {
                                             }
                                             §§goto(addr175);
                                          }
                                       }
                                       else
                                       {
                                          addr155:
                                          §§push(§0g§);
                                          §§push(_loc3_);
                                       }
                                       §§goto(addr157);
                                    }
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr157);
                                    }
                                    else
                                    {
                                       §§goto(addr175);
                                       §§push(4);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr155);
                     }
                  }
                  §§goto(addr124);
               }
               §§goto(addr116);
            }
            §§goto(addr157);
         }
         §§goto(addr175);
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Object = new Object();
         if(_loc3_)
         {
            _loc1_.x1 = this.point1.x;
            loop0:
            while(true)
            {
               _loc1_.y1 = this.point1.y;
               while(true)
               {
                  _loc1_.x2 = this.point2.x;
                  addr187:
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  _loc1_.isBreakable = this.isBreakable;
                  loop19:
                  while(!(_loc2_ && _loc2_))
                  {
                     if(isNaN(this.annihilationTime))
                     {
                        loop22:
                        while(true)
                        {
                           if(!isNaN(this.minBreakForce))
                           {
                              loop23:
                              while(true)
                              {
                                 _loc1_.minBreakForce = this.minBreakForce;
                                 loop24:
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr117:
                                       if(!(_loc2_ && this))
                                       {
                                          addr124:
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             while(true)
                                             {
                                                if(!isNaN(this.axisX))
                                                {
                                                   loop26:
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop23;
                                                      }
                                                      addr70:
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         addr77:
                                                         if(!(_loc3_ || _loc1_))
                                                         {
                                                            break loop22;
                                                         }
                                                         _loc1_.axisX = this.axisX;
                                                         addr235:
                                                         loop27:
                                                         while(true)
                                                         {
                                                            if(_loc2_ && _loc2_)
                                                            {
                                                               break loop26;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(isNaN(this.axisY))
                                                                     {
                                                                        addr24:
                                                                        return _loc1_;
                                                                     }
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc1_.axisY = this.axisY;
                                                                           addr50:
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop26;
                                                                           }
                                                                           continue loop27;
                                                                        }
                                                                        while(_loc3_)
                                                                        {
                                                                           _loc1_.dampingRatio = this.dampingRatio;
                                                                           break loop19;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc1_.limit = this.§,i§;
                                                                           addr301:
                                                                           while(true)
                                                                           {
                                                                              _loc1_.maxTorque = this.maxTorque;
                                                                              addr295:
                                                                              while(true)
                                                                              {
                                                                                 _loc1_.motor = this.§4!r§;
                                                                                 addr289:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc1_.type = this.type;
                                                                                    break loop24;
                                                                                 }
                                                                                 §§goto(addr124);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr208:
                                                                        addr307:
                                                                     }
                                                                     §§goto(addr50);
                                                                  }
                                                                  while(_loc3_ || this)
                                                                  {
                                                                     _loc1_.coordinateType = this.coordinateType;
                                                                     §§goto(addr208);
                                                                  }
                                                                  §§goto(addr289);
                                                                  addr216:
                                                                  addr29:
                                                               }
                                                               break;
                                                            }
                                                            continue loop19;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               addr180:
                                                               if(_loc2_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr187);
                                                            }
                                                            addr229:
                                                            while(true)
                                                            {
                                                               _loc1_.oneWayDestroyed = this.§#!j§;
                                                               §§goto(addr216);
                                                            }
                                                         }
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  _loc1_.index2 = this.id2;
                                                                  §§goto(addr229);
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc1_.collideConnected = this.§>!f§;
                                                                  break loop13;
                                                               }
                                                               addr270:
                                                            }
                                                            break;
                                                            §§goto(addr180);
                                                         }
                                                         while(!_loc2_)
                                                         {
                                                            _loc1_.lowerLimit = this.lowerLimit;
                                                            while(true)
                                                            {
                                                               _loc1_.upperLimit = this.upperLimit;
                                                            }
                                                            §§goto(addr235);
                                                         }
                                                         addr235:
                                                         §§goto(addr301);
                                                      }
                                                      while(true)
                                                      {
                                                         _loc1_.index1 = this.id1;
                                                         §§goto(addr235);
                                                         §§goto(addr70);
                                                      }
                                                   }
                                                   continue loop24;
                                                }
                                                §§goto(addr29);
                                             }
                                             addr62:
                                          }
                                          §§goto(addr295);
                                       }
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 addr276:
                                 addr314:
                                 while(_loc3_ || _loc1_)
                                 {
                                    _loc1_.backAndForth = this.§`!]§;
                                    §§goto(addr270);
                                    §§goto(addr117);
                                 }
                                 while(true)
                                 {
                                    _loc1_.motorSpeed = this.motorSpeed;
                                    §§goto(addr307);
                                    §§goto(addr276);
                                 }
                              }
                           }
                           §§goto(addr62);
                        }
                        while(true)
                        {
                           _loc1_.y2 = this.point2.y;
                           §§goto(addr314);
                           §§goto(addr77);
                        }
                        addr100:
                        addr321:
                     }
                     §§goto(addr138);
                  }
                  while(true)
                  {
                     if(_loc3_)
                     {
                        _loc1_.frequency = this.frequency;
                        §§goto(addr178);
                     }
                     break;
                     §§goto(addr155);
                  }
                  addr155:
                  §§goto(addr256);
               }
            }
         }
         §§goto(addr321);
      }
   }
}
