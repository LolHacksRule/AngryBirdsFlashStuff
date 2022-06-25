package §>!_§
{
   import §4!C§.§,!0§;
   import §4!C§.§7W§;
   import §4!C§.§>!Q§;
   import §5u§.§[!,§;
   import §>! §.*;
   import §]!@§.LevelMain;
   import flash.geom.Point;
   import §package§.§2Y§;
   import §package§.LevelItemManager;
   
   public class LevelModel
   {
      
      public static const §9J§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §9J§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      public var §=0§:Number = 0;
      
      public var §?!=§:Number = -8;
      
      private var §]6§:Vector.<§,!0§> = null;
      
      private var §2!X§:Vector.<§>!Q§> = null;
      
      private var §#!R§:Vector.<§7W§> = null;
      
      private var §-'§:Vector.<§5!"§> = null;
      
      public var §+]§:Number = 0;
      
      public var §,!h§:Boolean = false;
      
      public var §4!4§:int = 0;
      
      public var §<q§:int = 0;
      
      private var § !V§:int = 0;
      
      private var §!!A§:String = null;
      
      public var mName:String = null;
      
      public function LevelModel()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
            while(true)
            {
               this.§-'§ = new Vector.<§5!"§>();
               addr114:
               while(true)
               {
                  this.§]6§ = new Vector.<§,!0§>();
                  addr104:
                  while(true)
                  {
                     this.§2!X§ = new Vector.<§>!Q§>();
                  }
               }
            }
            addr117:
         }
         while(true)
         {
            this.§#!R§ = new Vector.<§7W§>();
            while(true)
            {
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr117);
            }
            §§goto(addr114);
            if(_loc1_ && _loc1_)
            {
               continue;
            }
            if(_loc2_)
            {
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr114);
            }
            §§goto(addr104);
         }
      }
      
      public static function §#T§(param1:String) : LevelModel
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LevelModel = new LevelModel();
         if(_loc3_)
         {
            _loc2_.§=h§(param1);
         }
         return _loc2_;
      }
      
      public static function §7!F§(param1:§2Y§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1.§4o§);
            while(true)
            {
               §§push(§2Y§.§<%§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(param1.§4o§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§2Y§.§9!0§);
                                          addr103:
                                          while(!_loc3_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!_loc3_)
                                             {
                                                if(_loc3_ && param1)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(Boolean(§§pop()));
                                                while(true)
                                                {
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(_loc3_ && LevelModel)
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(true);
                                                                     break;
                                                                  }
                                                                  addr151:
                                                                  if(_loc2_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        addr19:
                                                                        while(true)
                                                                        {
                                                                           §§push(false);
                                                                           if(_loc3_)
                                                                           {
                                                                              break loop13;
                                                                           }
                                                                           if(_loc2_ || LevelModel)
                                                                           {
                                                                              return §§pop();
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                     addr96:
                                                                  }
                                                                  while(!_loc3_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               §§goto(addr19);
                                                            }
                                                            addr79:
                                                            while(!(_loc3_ && _loc2_))
                                                            {
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  return §§pop();
                                                               }
                                                               continue loop16;
                                                            }
                                                         }
                                                         addr64:
                                                      }
                                                   }
                                                }
                                             }
                                             while(!(_loc3_ && _loc3_))
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop2;
                                                }
                                                §§pop();
                                                §§goto(addr151);
                                             }
                                             continue loop6;
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr116);
                           }
                        }
                     }
                  }
               }
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               §§push(§2Y§.§?N§);
               if(!(_loc3_ && LevelModel))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc3_)
                  {
                     §§goto(addr64);
                     §§push(Boolean(§§pop()));
                  }
                  §§goto(addr79);
               }
               §§goto(addr103);
            }
         }
         §§goto(addr96);
      }
      
      public static function §;!&§(param1:String) : LevelModel
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:LevelModel = §#T§(param1);
         if(!_loc4_)
         {
            _loc2_.§=0§ = _loc2_.§2!X§[0].x;
            if(_loc5_ || _loc3_)
            {
               _loc2_.§?!=§ = _loc2_.§2!X§[0].y - 8.5;
               addr38:
            }
            var _loc3_:* = Number(0);
            while(true)
            {
               §§push(_loc3_);
               if(_loc5_ || LevelModel)
               {
                  if(!_loc4_)
                  {
                     if(§§pop() >= _loc2_.§]6§.length)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        loop1:
                        while(!_loc5_)
                        {
                           while(true)
                           {
                              _loc3_ = §§pop();
                              continue loop1;
                           }
                        }
                        continue;
                     }
                     _loc2_.§]6§[_loc3_].angle = 360 - _loc2_.§]6§[_loc3_].angle;
                     while(true)
                     {
                        §§push(_loc3_);
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop() + 1);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               §§goto(addr103);
            }
            return _loc2_;
         }
         §§goto(addr38);
      }
      
      protected static function §&z§(param1:int, param2:Object) : Vector.<§7W§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§7W§ = null;
         var _loc3_:Vector.<§7W§> = new Vector.<§7W§>();
         §§push(1);
         if(!(_loc10_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(_loc4_ <= param1)
         {
            _loc5_ = param2["joint_" + _loc4_];
            if(!_loc10_)
            {
               if(_loc5_ != null)
               {
                  if(!_loc9_)
                  {
                     continue;
                  }
                  addr62:
                  _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
                  _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
                  _loc8_ = null;
                  if(!(_loc10_ && param1))
                  {
                     §§push(_loc5_.type == §7W§.§'!5§);
                     if(!_loc10_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc9_ || param2)
                        {
                           addr104:
                           §§push(§§pop());
                           if(!_loc10_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!§§pop())
                           {
                              if(!_loc10_)
                              {
                                 addr111:
                                 §§pop();
                                 addr134:
                                 if(_loc9_)
                                 {
                                    §§push(_loc5_.type == §7W§.§=N§);
                                    if(_loc9_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                                 _loc8_ = new §7W§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                                 if(_loc9_ || param1)
                                 {
                                    if(_loc5_.type == §7W§.§=N§)
                                    {
                                       if(!_loc10_)
                                       {
                                          _loc8_.axisX = _loc5_.axisX;
                                          if(_loc9_)
                                          {
                                             addr183:
                                             _loc8_.axisY = _loc5_.axisY;
                                             if(_loc9_ || LevelModel)
                                             {
                                                addr209:
                                                if(_loc5_.type == §7W§.§9c§)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      _loc8_.§6G§ = _loc5_.destroyTimer;
                                                      if(_loc10_)
                                                      {
                                                      }
                                                      addr237:
                                                      §§push(_loc4_);
                                                      if(_loc9_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(!(_loc10_ && param2))
                                                         {
                                                            addr248:
                                                            §§push(int(§§pop()));
                                                         }
                                                         _loc4_ = §§pop();
                                                         continue;
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                }
                                                addr194:
                                             }
                                             _loc3_.push(_loc8_);
                                          }
                                          §§goto(addr237);
                                       }
                                       §§goto(addr183);
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr183);
                              }
                           }
                           if(§§pop())
                           {
                              §§goto(addr134);
                           }
                           else
                           {
                              _loc8_ = new §7W§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr111);
               }
               §§goto(addr237);
            }
            §§goto(addr62);
         }
         return _loc3_;
      }
      
      public function get §"&§() : int
      {
         return this.§]6§.length;
      }
      
      public function get §,!j§() : int
      {
         return this.§#!R§.length;
      }
      
      public function get §4!I§() : int
      {
         return this.§2!X§.length;
      }
      
      public function get override() : int
      {
         return this.§-'§.length;
      }
      
      public function get theme() : String
      {
         return this.§!!A§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!!A§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§-!^§());
         if(_loc2_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc2_ || _loc1_)
                     {
                        §§push(§§pop());
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop9:
                           while(true)
                           {
                              §§pop();
                              loop8:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§ !V§);
                                    loop7:
                                    while(!_loc3_)
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(!(_loc3_ && this))
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop9;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          addr110:
                                          §§push(Boolean(§§pop()));
                                          while(true)
                                          {
                                             §§goto(addr110);
                                          }
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(this.§ !V§);
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                if(_loc2_ || this)
                                                {
                                                   §§push(0);
                                                   if(!_loc3_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc2_ || this)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               addr80:
                                                               §§push(_loc1_);
                                                               break;
                                                            }
                                                            addr113:
                                                            §§push(_loc1_);
                                                            continue loop0;
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            continue loop8;
                                                         }
                                                      }
                                                      §§push(this.§ !V§);
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         break loop4;
                                                      }
                                                   }
                                                   continue loop6;
                                                   continue loop7;
                                                }
                                                continue loop0;
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr113);
                                       }
                                       return §§pop();
                                    }
                                    break;
                                 }
                                 continue loop1;
                              }
                           }
                           addr154:
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr154);
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      public function §,!P§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§-!^§());
         if(_loc4_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
               addr102:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  addr106:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                           addr72:
                           if(!(_loc4_ || param1))
                           {
                              continue;
                           }
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    return;
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    addr40:
                                    while(true)
                                    {
                                       this.§ !V§ = param1;
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       continue loop6;
                                    }
                                    if(!_loc3_)
                                    {
                                       break loop5;
                                    }
                                    continue loop0;
                                 }
                              }
                              §§goto(addr40);
                           }
                           return;
                           addr89:
                        }
                     }
                     else
                     {
                        §§goto(addr89);
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §=h§(param1:String) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:§5!"§ = null;
         var _loc5_:Object = null;
         var _loc6_:§>!Q§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§,!0§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(!_loc11_)
         {
            this.§+]§ = _loc2_.LevelExtension;
            loop0:
            while(true)
            {
               this.§,!h§ = false;
               loop1:
               while(true)
               {
                  this.§4!4§ = _loc2_.scoreSilver;
                  loop2:
                  while(true)
                  {
                     this.§<q§ = _loc2_.scoreGold;
                     loop3:
                     while(true)
                     {
                        this.§ !V§ = _loc2_.scoreEagle;
                        loop4:
                        while(true)
                        {
                           this.§!!A§ = _loc2_.theme;
                           while(true)
                           {
                              if(_loc11_)
                              {
                                 break;
                                 addr136:
                              }
                              this.mName = _loc2_.id;
                              while(_loc10_)
                              {
                                 continue loop3;
                              }
                              continue loop4;
                              addr91:
                              if(!(_loc11_ && _loc3_))
                              {
                                 loop10:
                                 while(true)
                                 {
                                    this.§2!X§ = new Vector.<§>!Q§>();
                                    while(!_loc11_)
                                    {
                                       this.§]6§ = new Vector.<§,!0§>();
                                       if(!(_loc11_ && this))
                                       {
                                          continue loop10;
                                       }
                                    }
                                    addr84:
                                    while(_loc10_ || _loc2_)
                                    {
                                       §§goto(addr91);
                                    }
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    if(!_loc11_)
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr136);
                                 }
                                 continue loop1;
                                 addr105:
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§#!R§ = §&z§(_loc2_.counts.joints,_loc2_.world);
            §§goto(addr123);
         }
      }
      
      public function §%!#§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = new Object();
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.LevelExtension = this.§+]§;
            while(true)
            {
               _loc1_.scoreSilver = this.§4!4§;
               loop4:
               while(_loc4_ || _loc1_)
               {
                  loop5:
                  while(true)
                  {
                     _loc1_.name = this.mName;
                     while(_loc4_)
                     {
                        _loc1_.camera = this.§-'§;
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 if(false)
                                 {
                                    continue loop5;
                                 }
                                 var _loc2_:* = Number(0);
                                 if(!_loc3_)
                                 {
                                    _loc1_.world = new Object();
                                 }
                                 _loc2_ = Number(0);
                                 addr418:
                                 if(!(_loc4_ || _loc1_))
                                 {
                                    §§goto(addr418);
                                 }
                                 addr358:
                                 if(_loc2_ >= this.§2!X§.length)
                                 {
                                    addr364:
                                    §§push(Number(0));
                                    if(!_loc3_)
                                    {
                                       _loc2_ = §§pop();
                                       addr297:
                                       addr369:
                                       §§push(_loc2_);
                                       if(!(_loc3_ && this))
                                       {
                                          if(§§pop() >= this.§]6§.length)
                                          {
                                             addr310:
                                             §§push(0);
                                             if(_loc4_)
                                             {
                                                addr314:
                                                §§push(Number(§§pop()));
                                                if(_loc4_)
                                                {
                                                   _loc2_ = §§pop();
                                                   addr214:
                                                   addr317:
                                                   §§push(_loc2_);
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         if(§§pop() >= this.§#!R§.length)
                                                         {
                                                            addr229:
                                                            _loc1_.counts = new Object();
                                                            _loc1_.counts.blocks = this.§]6§.length;
                                                            addr206:
                                                            addr233:
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               _loc1_.counts.birds = this.§2!X§.length;
                                                               addr184:
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     _loc1_.counts.joints = this.§#!R§.length;
                                                                     addr169:
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        _loc1_.slingshotX = this.§=0§;
                                                                        addr145:
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 _loc1_.slingshotY = this.§?!=§;
                                                                                 if(_loc4_ || _loc2_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(_loc3_ && _loc1_)
                                                                                             {
                                                                                                addr273:
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   §§goto(addr214);
                                                                                                }
                                                                                                §§goto(addr310);
                                                                                             }
                                                                                             return _loc1_;
                                                                                          }
                                                                                          §§goto(addr206);
                                                                                       }
                                                                                       §§goto(addr184);
                                                                                    }
                                                                                    §§goto(addr169);
                                                                                 }
                                                                                 §§goto(addr145);
                                                                              }
                                                                              addr330:
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§goto(addr297);
                                                                                    }
                                                                                    addr374:
                                                                                    _loc2_++;
                                                                                    §§goto(addr358);
                                                                                    addr373:
                                                                                    addr372:
                                                                                    addr401:
                                                                                 }
                                                                                 §§goto(addr364);
                                                                              }
                                                                              §§goto(addr369);
                                                                           }
                                                                           §§push(_loc2_);
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    if(!(_loc3_ && _loc1_))
                                                                                    {
                                                                                       addr256:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(!(_loc3_ && this))
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                                §§goto(addr273);
                                                                                             }
                                                                                             addr329:
                                                                                             _loc2_ = §§pop();
                                                                                             §§goto(addr330);
                                                                                          }
                                                                                          §§goto(addr297);
                                                                                       }
                                                                                       §§goto(addr314);
                                                                                    }
                                                                                    §§goto(addr256);
                                                                                 }
                                                                                 §§goto(addr374);
                                                                              }
                                                                              addr320:
                                                                              §§push(§§pop() + 1);
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr329);
                                                                           }
                                                                           §§goto(addr256);
                                                                           addr296:
                                                                        }
                                                                        §§goto(addr233);
                                                                     }
                                                                     §§goto(addr320);
                                                                     §§push(_loc2_);
                                                                     addr357:
                                                                  }
                                                                  §§goto(addr374);
                                                               }
                                                               §§goto(addr229);
                                                            }
                                                            §§goto(addr317);
                                                         }
                                                         _loc1_.world["joint_" + (_loc2_ + 1)] = this.§#!R§[_loc2_];
                                                         §§goto(addr296);
                                                      }
                                                      §§goto(addr364);
                                                   }
                                                   §§goto(addr256);
                                                }
                                                §§goto(addr358);
                                             }
                                             §§goto(addr364);
                                          }
                                          _loc1_.world["block_" + (_loc2_ + 1)] = this.§]6§[_loc2_];
                                          §§goto(addr357);
                                       }
                                       §§goto(addr373);
                                    }
                                    §§goto(addr372);
                                 }
                                 _loc1_.world["bird_" + (_loc2_ + 1)] = this.§2!X§[_loc2_];
                                 §§goto(addr401);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    _loc1_.scoreEagle = this.§ !V§;
                                    break loop5;
                                 }
                                 addr86:
                              }
                           }
                           break loop5;
                        }
                     }
                     continue loop4;
                  }
                  loop3:
                  while(true)
                  {
                     if(_loc4_ || _loc1_)
                     {
                        _loc1_.theme = this.§!!A§;
                        continue loop4;
                     }
                     addr92:
                     while(true)
                     {
                        _loc1_.scoreGold = this.§<q§;
                        §§goto(addr86);
                        continue loop3;
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public function §7M§() : String
      {
         return JSON.stringify(this.§%!#§());
      }
      
      public function §-!^§() : int
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§,!0§ = null;
         var _loc3_:* = null;
         var _loc4_:§2Y§ = null;
         §§push(0);
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         for each(_loc2_ in this.§]6§)
         {
            if(!(_loc7_ && _loc2_))
            {
               §§push(_loc2_.id);
               if(!_loc7_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
            _loc4_ = LevelItemManager.§-`§(_loc3_);
            if(!(_loc7_ && _loc1_))
            {
               §§push(_loc4_ == null);
               if(!(_loc7_ && this))
               {
                  §§push(Boolean(§§pop()));
                  if(_loc8_ || this)
                  {
                     §§push(§§pop());
                     if(_loc8_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(!_loc7_)
                        {
                           §§pop();
                           if(!_loc7_)
                           {
                              §§push(_loc3_);
                              if(!(_loc7_ && this))
                              {
                                 §§push(§§pop().indexOf("MISC_") == 0);
                                 if(!(_loc7_ && _loc1_))
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc8_)
                                    {
                                       addr130:
                                       if(§§pop())
                                       {
                                          if(_loc8_)
                                          {
                                             addr146:
                                             §§push("MISC_FOOD_");
                                             if(_loc8_ || _loc1_)
                                             {
                                                §§push(§§pop() + _loc3_.substring(5));
                                             }
                                             _loc3_ = §§pop();
                                             if(_loc7_ && _loc1_)
                                             {
                                             }
                                             addr172:
                                             §§push(_loc1_);
                                             if(!(_loc7_ && _loc1_))
                                             {
                                                §§push(§§pop() + _loc4_.score);
                                                if(_loc8_)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(!(_loc7_ && _loc1_))
                                                   {
                                                      addr193:
                                                      _loc1_ = §§pop();
                                                      if(!_loc7_)
                                                      {
                                                         addr209:
                                                         if(§7!F§(_loc4_))
                                                         {
                                                            if(_loc8_ || _loc2_)
                                                            {
                                                               addr217:
                                                               §§push(_loc1_);
                                                               if(!_loc7_)
                                                               {
                                                                  addr220:
                                                                  §§push(_loc4_.§>!"§);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(§§pop() * LevelMain.§2!S§.getValue());
                                                                  }
                                                                  §§push(int(§§pop() + §§pop()));
                                                               }
                                                               _loc1_ = §§pop();
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                }
                                                §§goto(addr220);
                                             }
                                             §§goto(addr193);
                                          }
                                          _loc4_ = LevelItemManager.§-`§(_loc3_);
                                       }
                                       §§push(Boolean(_loc4_));
                                       if(_loc8_)
                                       {
                                          addr164:
                                          if(!§§pop())
                                          {
                                             continue;
                                          }
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             §§goto(addr172);
                                          }
                                          §§goto(addr217);
                                       }
                                    }
                                    §§goto(addr164);
                                 }
                                 §§goto(addr209);
                              }
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr164);
                     }
                  }
                  §§goto(addr130);
               }
               §§goto(addr164);
            }
            §§goto(addr217);
         }
         return _loc1_;
      }
      
      public function §0s§() : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§5!"§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         if(!_loc6_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push("<Level background=\"ThemeHills\"");
               loop1:
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        _loc1_ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(_loc1_);
                           loop5:
                           while(true)
                           {
                              §§push(" LevelExtension=\"");
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop() + this.§+]§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push("\"");
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop11:
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   while(true)
                                                   {
                                                      §§push(" AutoCamera=\"");
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + this.§,!h§);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push("\"");
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               loop17:
                                                               while(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     continue loop5;
                                                                     loop28:
                                                                     for(; _loc7_ || _loc3_; if(_loc6_ && _loc3_)
                                                                     {
                                                                        continue;
                                                                     },if(_loc6_ && _loc1_)
                                                                     {
                                                                        continue loop10;
                                                                     },§§goto(addr76),§§push(§§pop()))
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop29:
                                                                        while(true)
                                                                        {
                                                                           _loc1_ = §§pop();
                                                                           loop30:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc1_);
                                                                              addr156:
                                                                              loop31:
                                                                              while(true)
                                                                              {
                                                                                 §§push(" scoreGold=\"");
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(this.§<q§);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       loop32:
                                                                                       while(_loc7_ || _loc1_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          §§push("\"");
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                if(!(_loc6_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   loop33:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            loop34:
                                                                                                            for(; !_loc6_; while(!(_loc6_ && _loc1_))
                                                                                                            {
                                                                                                               §§goto(addr134);
                                                                                                               §§push(§§pop());
                                                                                                            })
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               loop35:
                                                                                                               while(_loc7_ || _loc2_)
                                                                                                               {
                                                                                                                  _loc1_ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        addr206:
                                                                                                                        if(_loc6_ && _loc2_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                           addr99:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc1_);
                                                                                                                           if(!(_loc7_ || _loc3_))
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc6_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    continue loop29;
                                                                                                                                 }
                                                                                                                                 continue loop35;
                                                                                                                              }
                                                                                                                              continue loop11;
                                                                                                                              continue loop35;
                                                                                                                           }
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(">");
                                                                                                                           while(!(_loc6_ && this))
                                                                                                                           {
                                                                                                                              if(_loc7_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 continue loop34;
                                                                                                                              }
                                                                                                                              §§push("<Cameras>");
                                                                                                                              continue loop6;
                                                                                                                              if(!(_loc6_ && _loc1_))
                                                                                                                              {
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc6_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(_loc7_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             continue loop28;
                                                                                                                                          }
                                                                                                                                          continue loop34;
                                                                                                                                       }
                                                                                                                                       continue loop9;
                                                                                                                                    }
                                                                                                                                    continue loop32;
                                                                                                                                 }
                                                                                                                                 continue loop33;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§4!4§);
                                                                                                                              break loop31;
                                                                                                                              §§goto(addr111);
                                                                                                                           }
                                                                                                                           addr111:
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     continue loop30;
                                                                                                                     addr88:
                                                                                                                     if(_loc6_ && _loc3_)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        continue loop12;
                                                                                                                     }
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr99);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        var _loc4_:int = 0;
                                                                                                                        var _loc5_:* = this.§-'§;
                                                                                                                        addr430:
                                                                                                                        for each(_loc2_ in _loc5_)
                                                                                                                        {
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§push(_loc1_);
                                                                                                                              if(_loc7_ || _loc1_)
                                                                                                                              {
                                                                                                                                 §§push(" <Camera id=\"");
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + _loc2_.id);
                                                                                                                                    if(!(_loc6_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push("\" leftBorder=\"");
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc7_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc2_.left);
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   addr342:
                                                                                                                                                   §§push("\" rightBorder=\"");
                                                                                                                                                   if(!(_loc6_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc7_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc2_.right);
                                                                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               addr370:
                                                                                                                                                               §§push("\" topBorder=\"");
                                                                                                                                                               if(_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc2_.top);
                                                                                                                                                                     if(_loc7_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(_loc7_ || _loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           addr393:
                                                                                                                                                                           §§push("\" bottomBorder=\"");
                                                                                                                                                                           if(!(_loc6_ && _loc1_))
                                                                                                                                                                           {
                                                                                                                                                                              addr401:
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!(_loc6_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr409:
                                                                                                                                                                                 §§push(_loc2_.top);
                                                                                                                                                                                 if(!(_loc6_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr422:
                                                                                                                                                                                    §§push(§§pop() + (§§pop() + §[!,§.§4!@§));
                                                                                                                                                                                    if(_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push("\"></Camera>");
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc1_ = §§pop() + §§pop();
                                                                                                                                                                                    §§goto(addr430);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr422);
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr422);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr393);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr401);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr409);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr422);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr409);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr401);
                                                                                                                                                }
                                                                                                                                                §§goto(addr370);
                                                                                                                                             }
                                                                                                                                             §§goto(addr422);
                                                                                                                                          }
                                                                                                                                          §§goto(addr393);
                                                                                                                                       }
                                                                                                                                       §§goto(addr401);
                                                                                                                                    }
                                                                                                                                    §§goto(addr422);
                                                                                                                                 }
                                                                                                                                 §§goto(addr342);
                                                                                                                              }
                                                                                                                              §§goto(addr422);
                                                                                                                           }
                                                                                                                           §§goto(addr430);
                                                                                                                        }
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           addr955:
                                                                                                                           _loc1_ += "</Cameras>";
                                                                                                                           addr956:
                                                                                                                           addr954:
                                                                                                                           addr952:
                                                                                                                           addr953:
                                                                                                                           §§push(_loc1_);
                                                                                                                           §§push("<Slingshot x=\"" + this.§2!X§[0].x);
                                                                                                                           §§push("\" y=\"");
                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr930:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc7_ || _loc1_)
                                                                                                                              {
                                                                                                                                 addr949:
                                                                                                                                 _loc1_ = §§pop() + (§§pop() + (this.§2!X§[0].y - 8) + "\">");
                                                                                                                                 addr946:
                                                                                                                                 addr947:
                                                                                                                                 addr945:
                                                                                                                                 addr950:
                                                                                                                                 addr948:
                                                                                                                                 §§push(_loc1_);
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc6_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr900:
                                                                                                                                       _loc1_ = §§pop() + " <Birds>";
                                                                                                                                       addr884:
                                                                                                                                       _loc3_ = 0;
                                                                                                                                       addr885:
                                                                                                                                       addr901:
                                                                                                                                       addr898:
                                                                                                                                       addr899:
                                                                                                                                       addr883:
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       if(!(_loc6_ && this))
                                                                                                                                       {
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() >= this.§2!X§.length)
                                                                                                                                             {
                                                                                                                                                if(_loc7_ || this)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc6_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      addr793:
                                                                                                                                                      §§push(_loc1_);
                                                                                                                                                      §§push(" </Birds>");
                                                                                                                                                      if(_loc7_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc6_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr803:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(_loc7_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr811:
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(_loc7_ || _loc1_)
                                                                                                                                                               {
                                                                                                                                                                  _loc1_ = §§pop();
                                                                                                                                                                  addr737:
                                                                                                                                                                  addr819:
                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc7_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr747:
                                                                                                                                                                        §§push("</Slingshot>");
                                                                                                                                                                        if(_loc7_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr756:
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc1_ = §§pop();
                                                                                                                                                                              addr759:
                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr714:
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc6_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc7_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr726:
                                                                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                                                                          if(!(_loc6_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr444:
                                                                                                                                                                                             §§push(_loc3_);
                                                                                                                                                                                             if(_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() >= this.§]6§.length)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc7_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc7_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                                                                  if(!(_loc6_ && _loc1_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push("</Level>");
                                                                                                                                                                                                                     if(_loc7_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc7_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              if(_loc7_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc7_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr515:
                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                       if(_loc7_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc1_ = §§pop();
                                                                                                                                                                                                                                             §§goto(addr525);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr872:
                                                                                                                                                                                                                                          if(_loc7_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc1_ = §§pop();
                                                                                                                                                                                                                                             addr824:
                                                                                                                                                                                                                                             _loc3_++;
                                                                                                                                                                                                                                             §§goto(addr885);
                                                                                                                                                                                                                                             addr880:
                                                                                                                                                                                                                                             addr822:
                                                                                                                                                                                                                                             addr823:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr955);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr695:
                                                                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc7_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc1_ = §§pop();
                                                                                                                                                                                                                                             addr700:
                                                                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc7_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc7_ || _loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc7_ || _loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() + 1);
                                                                                                                                                                                                                                                            if(_loc7_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc7_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr550:
                                                                                                                                                                                                                                                                  _loc3_ = §§pop();
                                                                                                                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr444);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr956);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr714);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr550);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr726);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr550);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr901);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr759);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr726);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr830:
                                                                                                                                                                                                                                          §§push("  <Bird id=\"");
                                                                                                                                                                                                                                          if(_loc7_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr839:
                                                                                                                                                                                                                                             §§push(§§pop() + this.§2!X§[_loc3_].id + "\" x=\"" + this.§2!X§[_loc3_].x);
                                                                                                                                                                                                                                             §§push("\" y=\"");
                                                                                                                                                                                                                                             if(!(_loc6_ && _loc1_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr862:
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop() + this.§2!X§[_loc3_].y + "\"></Bird>");
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr946);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr864:
                                                                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr869:
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                if(_loc7_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr872);
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr954);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr930);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr898);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr756);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr899);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr803);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr690:
                                                                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr695);
                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr869);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr756);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr839);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr862);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr689:
                                                                                                                                                                                                                     §§goto(addr690);
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr515);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr880);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr700);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr550);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr525:
                                                                                                                                                                                                      if(_loc6_ && _loc1_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr885);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      return new XML(_loc1_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push("<Item id=\"");
                                                                                                                                                                                                            if(!(_loc6_ && _loc1_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + this.§]6§[_loc3_].id);
                                                                                                                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push("\" x=\"");
                                                                                                                                                                                                                        if(!(_loc6_ && _loc1_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           if(_loc7_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + this.§]6§[_loc3_].x);
                                                                                                                                                                                                                              if(_loc7_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push("\" y=\"");
                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr626:
                                                                                                                                                                                                                                          if(_loc7_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + this.§]6§[_loc3_].y);
                                                                                                                                                                                                                                             if(_loc7_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc7_ || _loc1_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc7_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc7_ || _loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push("\" rotation=\"");
                                                                                                                                                                                                                                                         if(_loc7_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr670:
                                                                                                                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() + this.§]6§[_loc3_].angle);
                                                                                                                                                                                                                                                                     if(!(_loc6_ && _loc1_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr686:
                                                                                                                                                                                                                                                                        §§push("\" ></Item>");
                                                                                                                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr689);
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr839);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr689);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr947);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr689);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr839);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr686);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr945);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr839);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr747);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr686);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr862);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr670);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr862);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr686);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr689);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr686);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr626);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr864);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr793);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr670);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr955);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr737);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr515);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr822);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr550);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr819);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr884);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr824);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr884);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr950);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr811);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr839);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr900);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr793);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr952);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr948);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr955);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr824);
                                                                                                                                                }
                                                                                                                                                §§goto(addr737);
                                                                                                                                             }
                                                                                                                                             §§goto(addr830);
                                                                                                                                             §§push(_loc1_);
                                                                                                                                          }
                                                                                                                                          §§goto(addr883);
                                                                                                                                       }
                                                                                                                                       §§goto(addr823);
                                                                                                                                    }
                                                                                                                                    §§goto(addr949);
                                                                                                                                 }
                                                                                                                                 §§goto(addr900);
                                                                                                                              }
                                                                                                                              §§goto(addr953);
                                                                                                                           }
                                                                                                                           §§goto(addr949);
                                                                                                                        }
                                                                                                                        §§goto(addr900);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(_loc7_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc1_);
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     §§goto(addr206);
                                                                                                                  }
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push("\"");
                                                                                                            addr228:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                         }
                                                                                                         addr227:
                                                                                                      }
                                                                                                      while(!_loc6_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   continue loop14;
                                                                                                }
                                                                                                continue loop8;
                                                                                             }
                                                                                             continue loop16;
                                                                                          }
                                                                                          §§goto(addr228);
                                                                                       }
                                                                                       continue loop17;
                                                                                       addr164:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr164);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr227);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr269);
      }
      
      public function §98§(param1:int) : §,!0§
      {
         return this.§]6§[param1];
      }
      
      public function addObject(param1:§,!0§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]6§.push(param1);
         }
      }
      
      public function §!n§(param1:int) : §7W§
      {
         return this.§#!R§[param1];
      }
      
      public function §?7§(param1:§7W§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§#!R§.push(param1);
         }
      }
      
      public function §3n§(param1:int) : §>!Q§
      {
         return this.§2!X§[param1];
      }
      
      public function §5$§(param1:§>!Q§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§2!X§.push(param1);
         }
      }
      
      public function §%!=§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§-'§ = new Vector.<§5!"§>();
         }
      }
      
      public function §<W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§2!X§ = new Vector.<§>!Q§>();
         }
      }
      
      public function §%O§(param1:int) : §5!"§
      {
         return this.§-'§[param1];
      }
      
      public function §=!J§(param1:§5!"§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-'§.push(param1);
         }
      }
   }
}
