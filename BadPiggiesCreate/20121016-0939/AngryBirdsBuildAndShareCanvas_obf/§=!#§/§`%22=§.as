package §=!#§
{
   import §"v§.§4^§;
   import §"v§.§9"§;
   import §%c§.§=!X§;
   import §+!o§.§]"5§;
   import §5!V§.§!w§;
   import §5!V§.§?!b§;
   import §=!M§.§9!P§;
   
   public class §`"=§
   {
      
      public static const §`!C§:Number = 1.25;
      
      public static const §@a§:Number = 0.15;
      
      public static const SCREEN_WIDTH_B2:Number;
      
      public static const SCREEN_HEIGHT_B2:Number;
      
      public static const MANUAL_SCALE_STEP:Number = 0.1;
      
      public static const §<!&§:int = 1500;
      
      public static const § s§:int = 10;
      
      public static const §4!@§:int = 15;
      
      public static const §]!6§:int = 300;
      
      public static const §@!H§:int = 1000;
      
      public static const §4!O§:int = 10000;
      
      public static const § !9§:int = 200.0;
      
      public static const §"L§:int = 0;
      
      public static const §9j§:int = 1;
      
      public static const §7!O§:int = 2;
      
      public static const §=%§:int = 3;
      
      public static const §1@§:int = 4;
      
      public static const §0!I§:int = 5;
      
      public static const CAMERA_ID_CASTLE:String = "CASTLE";
      
      public static const CAMERA_ID_SLINGSHOT:String = "SLINGSHOT";
      
      protected static var §&"9§:Number;
      
      public static var §9!e§:Number;
      
      public static var §^Z§:Number;
      
      public static const §;!D§:Number = 2000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`!C§ = 1.25;
            while(true)
            {
               §@a§ = 0.15;
               loop1:
               while(true)
               {
                  SCREEN_WIDTH_B2 = §=!X§.§^!N§ * §!w§.§4!-§;
                  addr243:
                  while(true)
                  {
                     SCREEN_HEIGHT_B2 = §=!X§.§5!P§ * §!w§.§4!-§;
                     continue loop1;
                  }
               }
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               § !9§ = §4!O§ / 50;
               §§goto(addr155);
            }
         }
         §§goto(addr44);
      }
      
      private var §>4§:Number = 1.0;
      
      private var §2!x§:Number = 0.2;
      
      protected var §0!X§:Number;
      
      protected var §#!a§:Number;
      
      protected var §8!F§:Number;
      
      public var §9q§:§!w§;
      
      public var §6!w§:Number;
      
      public var §-!§:Number;
      
      private var §2!j§:§-!X§;
      
      private var §-w§:§-!X§;
      
      public var §74§:Number;
      
      public var §1!o§:Number;
      
      public var mDragging:Boolean = false;
      
      public var § var§:Number;
      
      public var §[!x§:Number;
      
      public var §="5§:Number;
      
      public var §4s§:Number;
      
      private var §7!v§:Number;
      
      private var §%G§:§%!>§;
      
      private var §>"6§:§%!>§;
      
      protected var §"!M§:Number = 0;
      
      protected var §1D§:Number = 0;
      
      protected var §8Y§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §]A§:Number = 0;
      
      public var §%!r§:Boolean = true;
      
      public var §!!s§:Number = 0;
      
      public var §%!J§:Number = 0;
      
      public var §&a§:Number = 0;
      
      public var §@?§:Number = 0;
      
      public var §1!l§:Number = 0;
      
      public var §!!@§:Number = 0;
      
      public var §09§:Number = 0;
      
      public var §`h§:Number = 0;
      
      public var §<!z§:Number = 0;
      
      private var §2W§:§%!>§;
      
      public var §'"0§:Number = 0;
      
      private var §3!+§:Number = 0;
      
      private var §!!z§:Number = 0;
      
      private var §&d§:§4^§ = null;
      
      private var §>P§:§4^§ = null;
      
      public function §`"=§(param1:§!w§, param2:§9"§, param3:Number = 1.0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§2W§ = new §%!>§(0,0,1,false);
            while(true)
            {
               super();
               addr282:
               while(true)
               {
                  this.§#!a§ = 0;
               }
            }
            addr301:
         }
         loop2:
         while(true)
         {
            this.§8!F§ = 0;
            loop3:
            while(true)
            {
               this.§9q§ = param1;
               loop4:
               while(true)
               {
                  §`"=§.§&"9§ = 1;
                  loop5:
                  while(true)
                  {
                     this.§>4§ = Math.max(1,Math.min(2,param3));
                     while(true)
                     {
                        this.§0!X§ = this.§>4§;
                        loop7:
                        while(true)
                        {
                           this.§do §(param2);
                           loop8:
                           while(true)
                           {
                              §§push(Boolean(this.§2!j§));
                              if(_loc5_)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc5_ || this)
                                          {
                                             this.loadCameraBorders();
                                          }
                                          loop10:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§2!j§.x);
                                             if(!(_loc4_ && this))
                                             {
                                                §§push(§§pop() - this.§-w§.x);
                                             }
                                             §§pop().§"!M§ = §§pop();
                                             while(_loc5_)
                                             {
                                                §§push(this);
                                                §§push(this.§2!j§.y);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() - this.§-w§.y);
                                                }
                                                §§pop().§1D§ = §§pop();
                                                if(!(_loc4_ && param2))
                                                {
                                                   continue loop10;
                                                }
                                             }
                                             continue loop4;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.mCurrentCameraSliderLocation = §4!O§;
                                             addr69:
                                             while(true)
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   §§goto(addr76);
                                                }
                                             }
                                             §§goto(addr282);
                                          }
                                          addr65:
                                       }
                                       while(_loc5_)
                                       {
                                          §§push(this);
                                          §§push(this.§2!j§.scale);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() - this.§-w§.scale);
                                          }
                                          §§pop().§8Y§ = §§pop();
                                          loop13:
                                          while(true)
                                          {
                                             this.§#!a§ = this.§2!j§.x;
                                             while(!_loc4_)
                                             {
                                                this.§8!F§ = this.§2!j§.y;
                                                continue loop7;
                                                if(!(_loc5_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(_loc4_)
                                                {
                                                   continue loop3;
                                                }
                                                if(_loc5_)
                                                {
                                                   return;
                                                }
                                                §§goto(addr282);
                                             }
                                             continue loop2;
                                             addr111:
                                             while(true)
                                             {
                                                if(!(_loc5_ || param3))
                                                {
                                                   continue loop13;
                                                }
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr65);
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr69);
                                       }
                                       §§push(Boolean(this.§-w§));
                                       addr236:
                                       continue loop8;
                                       if(_loc5_)
                                       {
                                          continue;
                                       }
                                       addr228:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop3;
                                       }
                                       addr228:
                                    }
                                 }
                              }
                              §§goto(addr228);
                           }
                        }
                        if(_loc4_ && param1)
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           this.§%!r§ = true;
                           while(_loc5_)
                           {
                              this.§]A§ = §4!O§ / 500;
                              if(!(_loc5_ || param1))
                              {
                                 continue;
                              }
                              if(_loc5_)
                              {
                                 §§goto(addr39);
                              }
                              §§goto(addr69);
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr301);
                     }
                  }
               }
            }
         }
      }
      
      private static function §2!#§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§=!X§.§@"6§);
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop() / §=!X§.§ !4§);
            if(_loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop() > 1)
               {
                  if(!(_loc3_ && §`"=§))
                  {
                     §§push(1);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr79);
                     }
                  }
                  else
                  {
                     addr80:
                     return 1;
                  }
                  return §§pop();
               }
               §§goto(addr80);
            }
            addr79:
            return §§pop() / Math.pow(_loc1_,0.7);
         }
         §§goto(addr80);
      }
      
      public static function get §;!0§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§&"9§);
         if(!(_loc1_ && _loc1_))
         {
            return §§pop() * §2!#§();
         }
      }
      
      public function get §0"'§() : Number
      {
         return this.§0!X§;
      }
      
      public function set §0"'§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§0!X§ = param1;
         }
      }
      
      public function get §6!T§() : Number
      {
         return this.§7!v§;
      }
      
      public function §[!f§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(SCREEN_WIDTH_B2);
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§[!x§);
            if(_loc2_)
            {
               §§push(§§pop() - this.§ var§);
            }
            return §§pop() / §§pop();
         }
      }
      
      public function get §5!s§() : Number
      {
         return this.§>4§;
      }
      
      public function get §<O§() : Number
      {
         return this.§2!x§;
      }
      
      public function §="'§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0!X§ = param1;
            while(true)
            {
               this.§"!j§();
               while(!_loc2_)
               {
                  this.§!B§(this.mCurrentCameraSliderLocation,1);
                  if(_loc3_)
                  {
                     return;
                     addr42:
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.mCurrentAction != §0!I§)
            {
               loop0:
               while(true)
               {
                  this.goToCastleView();
                  loop1:
                  while(true)
                  {
                     this.§!!s§ = 2000;
                     while(true)
                     {
                        this.§^!j§();
                        while(!(_loc1_ && _loc2_))
                        {
                           if(_loc2_)
                           {
                              if(_loc1_)
                              {
                                 return;
                              }
                              addr101:
                              this.§;!+§();
                              do
                              {
                                 this.§2!8§();
                              }
                              while(_loc1_ && _loc2_);
                              
                              if(_loc2_ || _loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                              continue;
                              continue;
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr58);
               }
            }
            §§goto(addr101);
         }
         addr58:
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mCurrentCameraSliderLocation = 0;
            loop0:
            while(true)
            {
               this.§#!a§ = this.§-w§.x;
               loop1:
               while(true)
               {
                  this.§8!F§ = this.§-w§.y;
                  while(true)
                  {
                     this.§%!r§ = false;
                     loop3:
                     while(!(_loc3_ && this))
                     {
                        if(!_loc2_)
                        {
                           continue loop1;
                           while(true)
                           {
                              §§push(this);
                              §§push(§4!O§ / 160000);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() * param1);
                              }
                              §§pop().§]A§ = §§pop();
                              do
                              {
                                 this.§<a§(§0!I§);
                              }
                              while(_loc3_);
                              
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                        }
                        continue loop0;
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public function loadCameraBorders() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            §§push(this.§-w§.x);
            if(_loc2_)
            {
               §§push(SCREEN_WIDTH_B2);
               if(!(_loc3_ && this))
               {
                  addr137:
                  §§push(§§pop() / this.§-w§.scale);
                  if(!(_loc3_ && _loc1_))
                  {
                     addr134:
                     §§push(§§pop() / 2);
                  }
                  §§pop().§ var§ = §§pop() - §§pop();
                  loop0:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§2!j§.x);
                     if(!_loc3_)
                     {
                        §§push(SCREEN_WIDTH_B2);
                        if(_loc2_)
                        {
                           §§push(§§pop() / this.§2!j§.scale);
                           if(_loc2_ || this)
                           {
                              §§push(§§pop() / 2);
                           }
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().§[!x§ = §§pop();
                     loop1:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§9q§.borders.mBorderGround_B2);
                           if(_loc2_ || _loc3_)
                           {
                              §§push(20 * §!w§.§]!U§);
                              if(_loc2_)
                              {
                                 §§push(§§pop() * §!w§.§4!-§);
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§pop().§="5§ = §§pop();
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                        §§push(SCREEN_WIDTH_B2);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(this.§[!x§);
                           if(_loc2_ || this)
                           {
                              §§push(§§pop() - this.§ var§);
                           }
                           §§push(§§pop() / §§pop());
                           if(_loc2_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc1_:* = §§pop();
                        if(_loc2_)
                        {
                           §§push(this);
                           §§push(this.§4s§);
                           if(_loc2_ || _loc1_)
                           {
                              §§push(SCREEN_HEIGHT_B2);
                              if(!_loc3_)
                              {
                                 §§push(0.8);
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§goto(addr202);
                                 }
                                 §§push(§§pop() / §§pop());
                              }
                              addr202:
                              §§goto(addr203);
                           }
                           addr203:
                           §§push(§§pop() * §§pop());
                           if(_loc2_)
                           {
                              §§push(_loc1_);
                           }
                           §§pop().§7!v§ = §§pop() - §§pop();
                           return;
                        }
                        §§goto(addr202);
                     }
                  }
                  addr138:
               }
               §§goto(addr134);
            }
            §§goto(addr137);
         }
         §§goto(addr138);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§9q§ = null;
         }
      }
      
      public function §do §(param1:§9"§) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc3_:§4^§ = null;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < param1.§[l§)
         {
            _loc3_ = param1.§5!0§(_loc2_);
            if(!_loc14_)
            {
               §§push(_loc3_.id);
               if(_loc15_ || _loc2_)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     §§push(§§pop());
                     addr528:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        if(!_loc14_)
                        {
                           §§push(§§pop().toUpperCase());
                        }
                     }
                  }
                  addr527:
               }
               loop3:
               while(true)
               {
                  _loc4_ = §§pop();
                  loop4:
                  while(true)
                  {
                     §§push(_loc3_.scale);
                     loop5:
                     while(true)
                     {
                        §§push(§§pop().toString() == "");
                        loop6:
                        while(true)
                        {
                           §§push(!§§pop());
                           loop7:
                           while(true)
                           {
                              §§push(§§pop());
                              loop8:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§pop();
                                       addr516:
                                       loop61:
                                       while(true)
                                       {
                                          §§push(_loc3_.scale);
                                          loop62:
                                          while(true)
                                          {
                                             §§push(§§pop().toString() == "null");
                                             if(!(_loc14_ && _loc2_))
                                             {
                                                if(_loc14_ && _loc3_)
                                                {
                                                   continue loop7;
                                                }
                                                §§push(!§§pop());
                                                loop63:
                                                while(true)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc14_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_.scale);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().toString() == "0");
                                                                     addr441:
                                                                     while(_loc15_ || this)
                                                                     {
                                                                        if(!(_loc15_ || _loc3_))
                                                                        {
                                                                           continue loop63;
                                                                        }
                                                                        if(_loc14_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§push(!§§pop());
                                                                     }
                                                                     continue loop11;
                                                                     loop29:
                                                                     while(_loc15_ || _loc2_)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        loop30:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.x);
                                                                           loop31:
                                                                           while(true)
                                                                           {
                                                                              if(_loc15_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 loop32:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc9_ = §§pop();
                                                                                    loop33:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_.y);
                                                                                       loop34:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr369:
                                                                                          loop35:
                                                                                          while(_loc15_ || param1)
                                                                                          {
                                                                                             _loc10_ = §§pop();
                                                                                             loop36:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(SCREEN_HEIGHT_B2);
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      addr347:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         addr348:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                      addr240:
                                                                                                      if(!(_loc15_ || _loc2_))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               addr256:
                                                                                                               _loc12_ = §§pop();
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  addr260:
                                                                                                                  §§push(§§pop() < _loc11_);
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     if(!(_loc14_ && this))
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           continue loop30;
                                                                                                                        }
                                                                                                                        §§push(_loc11_);
                                                                                                                        if(_loc15_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr319:
                                                                                                                           loop58:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc14_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    addr328:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!(_loc14_ && param1))
                                                                                                                                    {
                                                                                                                                       while(_loc15_)
                                                                                                                                       {
                                                                                                                                          loop44:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             addr339:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                loop46:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                   loop47:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc14_ && this)
                                                                                                                                                      {
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                      §§push(CAMERA_ID_SLINGSHOT);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() != §§pop())
                                                                                                                                                         {
                                                                                                                                                            continue loop47;
                                                                                                                                                         }
                                                                                                                                                         loop56:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§-w§ = new §-!X§(_loc9_,_loc10_,_loc13_,true);
                                                                                                                                                            loop57:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  this.§>"6§ = new §%!>§(_loc9_,_loc10_,_loc13_,true);
                                                                                                                                                                  loop53:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr53:
                                                                                                                                                                     loop50:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc2_++;
                                                                                                                                                                        if(!_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop36;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr413:
                                                                                                                                                                                 addr133:
                                                                                                                                                                                 while(!(_loc14_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc15_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§2!j§ = new §-!X§(_loc9_,_loc10_,_loc13_,false);
                                                                                                                                                                                       loop55:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc15_ || _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop53;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc15_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§%G§ = new §%!>§(_loc9_,_loc10_,_loc13_,false);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc15_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop55;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop50;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr173);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr173:
                                                                                                                                                                                                   continue loop53;
                                                                                                                                                                                                   addr106:
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop4;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop33;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr357:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc15_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(SCREEN_WIDTH_B2);
                                                                                                                                                                                                if(_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop34;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr303:
                                                                                                                                                                                                while(_loc15_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop44;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop35;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr434:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc3_.right);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   addr420:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc6_ = §§pop();
                                                                                                                                                                                                      addr421:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc3_.top);
                                                                                                                                                                                                         break loop35;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr404:
                                                                                                                                                                                                   if(_loc15_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      break loop31;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr441);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§@!+§(_loc3_);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr460:
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc15_ || this))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop61;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc3_.left);
                                                                                                                                                                                          if(_loc15_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             break loop58;
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop58;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 while(_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc3_.bottom);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop29;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr463);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr106);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop36;
                                                                                                                                                                           addr85:
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop57;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop56;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc14_ && param1)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop46;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop30;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc15_ || _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop12;
                                                                                                                                                                        }
                                                                                                                                                                        if(true)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop0;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr79);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop62;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr421);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr528);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr328);
                                                                                                                                       }
                                                                                                                                       while(_loc15_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          while(_loc15_)
                                                                                                                                          {
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                continue loop5;
                                                                                                                                             }
                                                                                                                                             _loc11_ = §§pop();
                                                                                                                                             §§goto(addr357);
                                                                                                                                          }
                                                                                                                                          §§goto(addr389);
                                                                                                                                       }
                                                                                                                                       continue loop32;
                                                                                                                                       addr336:
                                                                                                                                       addr349:
                                                                                                                                    }
                                                                                                                                    §§goto(addr339);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop29;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc5_ = §§pop();
                                                                                                                              §§goto(addr434);
                                                                                                                           }
                                                                                                                           addr319:
                                                                                                                        }
                                                                                                                        §§goto(addr339);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr441);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr460);
                                                                                                                     }
                                                                                                                     §§goto(addr422);
                                                                                                                  }
                                                                                                                  addr459:
                                                                                                               }
                                                                                                               §§goto(addr319);
                                                                                                            }
                                                                                                            §§goto(addr260);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr336);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr349);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§goto(addr404);
                                                                                             }
                                                                                             break;
                                                                                             §§goto(addr369);
                                                                                          }
                                                                                          §§goto(addr420);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break;
                                                                              if(!(_loc15_ || _loc2_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(_loc6_);
                                                                              if(!_loc14_)
                                                                              {
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc15_ || _loc2_)
                                                                                       {
                                                                                          §§goto(addr240);
                                                                                       }
                                                                                       §§goto(addr260);
                                                                                    }
                                                                                    §§goto(addr347);
                                                                                 }
                                                                                 §§goto(addr348);
                                                                              }
                                                                              §§goto(addr256);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              §§goto(addr413);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr504:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr459);
                                                         }
                                                      }
                                                      continue loop8;
                                                      addr494:
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                             §§goto(addr504);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr494);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr516);
         }
      }
      
      public function writeCameraInformation(param1:§9"§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:§4^§ = new §4^§();
         if(!(_loc9_ && this))
         {
            _loc2_.id = CAMERA_ID_SLINGSHOT;
            loop0:
            while(true)
            {
               addr43:
               while(true)
               {
                  _loc2_.x = this.§-w§.x;
                  while(true)
                  {
                     if(_loc8_)
                     {
                        _loc2_.y = this.§-w§.y;
                        if(_loc8_ || _loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr43);
         }
         §§push(SCREEN_WIDTH_B2);
         if(!_loc9_)
         {
            §§push(§§pop() / this.§-w§.scale);
            if(!_loc9_)
            {
               §§push(§§pop() / 2);
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc3_:* = §§pop();
         §§push(SCREEN_HEIGHT_B2);
         if(_loc8_)
         {
            §§push(§§pop() / this.§-w§.scale);
            if(!_loc9_)
            {
               addr80:
               §§push(§§pop() / 2);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            if(!(_loc9_ && param1))
            {
               §§push(_loc2_);
               §§push(this.§-w§.x);
               if(!(_loc9_ && _loc3_))
               {
                  §§push(§§pop() - _loc3_);
               }
               §§pop().left = §§pop();
               while(true)
               {
                  §§push(_loc2_);
                  §§push(this.§-w§.x);
                  if(!(_loc9_ && this))
                  {
                     §§push(§§pop() + _loc3_);
                  }
                  §§pop().right = §§pop();
                  addr141:
                  loop5:
                  while(true)
                  {
                     addr116:
                     while(true)
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(_loc8_)
                        {
                           §§push(§§pop() - _loc4_);
                        }
                        §§pop().top = §§pop();
                        continue loop5;
                     }
                  }
               }
               addr156:
            }
            while(true)
            {
               §§push(_loc2_);
               §§push(_loc2_.y);
               if(_loc8_)
               {
                  §§push(§§pop() + _loc4_);
               }
               §§pop().bottom = §§pop();
               if(_loc9_)
               {
                  continue;
               }
               if(_loc8_ || _loc2_)
               {
                  if(_loc8_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr156);
                  }
                  §§goto(addr116);
               }
               §§goto(addr141);
            }
            var _loc5_:§4^§;
            (_loc5_ = new §4^§()).id = CAMERA_ID_CASTLE;
            if(!(_loc9_ && _loc2_))
            {
               _loc5_.x = this.§2!j§.x;
               if(!_loc9_)
               {
                  addr188:
                  _loc5_.y = this.§2!j§.y;
               }
               §§push(SCREEN_WIDTH_B2);
               if(!_loc9_)
               {
                  §§push(§§pop() / this.§2!j§.scale);
                  if(!(_loc9_ && param1))
                  {
                     addr207:
                     §§push(§§pop() / 2);
                     if(_loc8_)
                     {
                        addr211:
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     §§push(SCREEN_HEIGHT_B2);
                     if(_loc8_)
                     {
                        §§push(§§pop() / this.§2!j§.scale);
                        if(!(_loc9_ && param1))
                        {
                           §§push(§§pop() / 2);
                           if(!_loc8_)
                           {
                           }
                           addr232:
                           var _loc7_:* = §§pop();
                           if(_loc8_ || param1)
                           {
                              §§push(_loc5_);
                              §§push(this.§2!j§.x);
                              if(_loc8_ || param1)
                              {
                                 §§push(§§pop() - _loc6_);
                              }
                              §§pop().left = §§pop();
                              loop8:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 §§push(this.§2!j§.x);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() + _loc6_);
                                 }
                                 §§pop().right = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    §§push(_loc5_.y);
                                    if(_loc8_ || this)
                                    {
                                       §§push(§§pop() - _loc7_);
                                    }
                                    §§pop().top = §§pop();
                                    continue loop8;
                                    addr265:
                                    if(_loc8_ || _loc2_)
                                    {
                                       param1.§="8§(_loc5_);
                                       addr272:
                                       if(!(_loc9_ && this))
                                       {
                                          return;
                                          addr286:
                                       }
                                       loop13:
                                       while(true)
                                       {
                                          if(!_loc9_)
                                          {
                                             if(_loc9_)
                                             {
                                                break;
                                             }
                                             §§goto(addr265);
                                          }
                                          addr276:
                                          while(true)
                                          {
                                             param1.§="8§(_loc2_);
                                             continue loop13;
                                          }
                                       }
                                       while(_loc8_ || this)
                                       {
                                          param1.§7!k§();
                                          §§goto(addr276);
                                       }
                                       continue loop8;
                                    }
                                 }
                              }
                           }
                           §§goto(addr276);
                        }
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr232);
                  }
                  §§goto(addr211);
               }
               §§goto(addr207);
            }
            §§goto(addr188);
         }
         §§goto(addr80);
      }
      
      public function §@!+§(param1:§4^§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1.scale);
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.x);
         if(!(_loc7_ && param1))
         {
            §§push(§=!X§.§^!N§ * 0.5);
            if(_loc8_)
            {
               §§push(_loc2_);
               if(_loc8_)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc8_)
                  {
                     addr46:
                     §§push(§§pop() * §!w§.§4!-§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc7_)
                  {
                     addr51:
                     var _loc3_:Number = §§pop();
                     §§push(param1.y);
                     if(_loc8_ || param1)
                     {
                        §§push(§=!X§.§5!P§ * 0.5);
                        if(!_loc7_)
                        {
                           §§push(_loc2_);
                           if(_loc8_ || this)
                           {
                              addr81:
                              §§push(§§pop() / §§pop());
                              if(_loc8_)
                              {
                                 §§push(§!w§.§4!-§);
                              }
                              §§push(§§pop() - §§pop());
                              if(_loc8_ || this)
                              {
                                 addr99:
                                 §§push(Number(§§pop()));
                              }
                              var _loc4_:* = §§pop();
                              §§push(_loc3_);
                              if(!_loc7_)
                              {
                                 §§push(§=!X§.§^!N§ / _loc2_);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() * §!w§.§4!-§);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc8_)
                                 {
                                    addr116:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc5_:* = §§pop();
                                 §§push(_loc4_);
                                 if(!_loc7_)
                                 {
                                    §§push(§=!X§.§5!P§ / _loc2_);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() * §!w§.§4!-§);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc8_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc6_:* = §§pop();
                                 if(!_loc7_)
                                 {
                                    param1.left = _loc3_;
                                    loop0:
                                    while(true)
                                    {
                                       param1.top = _loc4_;
                                       while(true)
                                       {
                                          param1.right = _loc5_;
                                          loop2:
                                          while(_loc8_)
                                          {
                                             while(true)
                                             {
                                                param1.bottom = _loc6_;
                                                do
                                                {
                                                   param1.scale = 0;
                                                }
                                                while(!(_loc8_ || _loc3_));
                                                
                                                if(_loc8_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop2;
                                             }
                                             return;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr116);
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr51);
               }
            }
            §§goto(addr46);
         }
         §§goto(addr51);
      }
      
      protected function § N§(param1:§-!X§, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = Number(this.mCurrentCameraSliderLocation);
         if(!(_loc5_ && param2))
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(param2);
               if(!(_loc5_ && param1))
               {
                  §§push(§§pop() * this.§]A§);
               }
               §§push(§§pop() + §§pop());
               while(true)
               {
                  §§push(Number(§§pop()));
                  addr159:
                  while(true)
                  {
                     _loc3_ = §§pop();
                  }
                  loop4:
                  while(_loc4_ || this)
                  {
                     §§push(§4!O§);
                     loop5:
                     while(§§pop() < §§pop())
                     {
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                              continue;
                           }
                           if(§§pop() <= §§pop())
                           {
                              while(true)
                              {
                                 §§push(0);
                                 if(_loc4_)
                                 {
                                    addr91:
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop4;
                                          }
                                          if(!(_loc4_ || _loc3_))
                                          {
                                             break;
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop0;
                                          }
                                          _loc3_ = §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                this.§<a§(§"L§);
                                                continue;
                                             }
                                             addr119:
                                             while(true)
                                             {
                                                addr32:
                                                while(true)
                                                {
                                                   this.mCurrentCameraSliderLocation = _loc3_;
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc4_ || param1)
                                                      {
                                                         return;
                                                      }
                                                      break loop5;
                                                   }
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                          }
                                          while(true)
                                          {
                                             continue loop4;
                                          }
                                       }
                                       addr133:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          §§goto(addr134);
                                       }
                                    }
                                    §§goto(addr159);
                                    addr91:
                                 }
                                 §§goto(addr91);
                              }
                           }
                           §§goto(addr32);
                        }
                        §§goto(addr91);
                     }
                     while(true)
                     {
                        §§goto(addr133);
                     }
                  }
               }
            }
         }
         §§goto(addr160);
      }
      
      protected function §7]§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = Number(this.mCurrentCameraSliderLocation);
         if(!_loc5_)
         {
            §§push(_loc2_);
            if(!(_loc5_ && param1))
            {
               §§push(param1);
               if(_loc6_ || param1)
               {
                  §§push(§§pop() * this.§]A§);
               }
               §§push(§§pop() + §§pop());
               if(!(_loc5_ && _loc2_))
               {
                  §§push(Number(§§pop()));
                  if(_loc6_ || param1)
                  {
                     addr58:
                     _loc2_ = §§pop();
                     §§push(0.7);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc3_:* = §§pop();
                  §§push(-§4!O§);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop() * _loc3_);
                     if(_loc6_)
                     {
                        addr82:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     if(!_loc5_)
                     {
                        §§push(_loc2_);
                        loop0:
                        while(true)
                        {
                           §§push(§§pop() >= §4!O§);
                           if(!_loc5_)
                           {
                              if(!§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(_loc4_);
                                          if(_loc6_ || _loc3_)
                                          {
                                             addr173:
                                             §§push(§§pop() < §§pop());
                                             if(!(_loc5_ && this))
                                             {
                                                break loop5;
                                             }
                                             continue loop7;
                                          }
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                §§push(Number(§4!O§));
                                                if(!(_loc5_ && param1))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      _loc2_ = §§pop();
                                                      §§goto(addr160);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr196);
                                                   }
                                                }
                                                break loop6;
                                             }
                                             if(!_loc5_)
                                             {
                                                addr196:
                                                §§push(Number(_loc4_));
                                                break loop6;
                                             }
                                             while(!(_loc6_ || param1))
                                             {
                                                continue loop5;
                                             }
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§]A§);
                                                if(!_loc5_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().§]A§ = §§pop();
                                                addr121:
                                                §§goto(addr91);
                                             }
                                             addr198:
                                             §§goto(addr196);
                                          }
                                       }
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          §§goto(addr198);
                                       }
                                    }
                                 }
                                 addr223:
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr183);
                                 }
                                 addr91:
                                 while(true)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             break;
                                          }
                                          addr183:
                                          addr183:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc6_ || param1))
                                             {
                                                break loop6;
                                             }
                                             §§push(_loc4_);
                                             continue loop9;
                                          }
                                       }
                                       §§goto(addr198);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          continue loop11;
                                       }
                                       addr160:
                                    }
                                    continue loop11;
                                 }
                                 while(true)
                                 {
                                    this.mCurrentCameraSliderLocation = _loc2_;
                                    if(_loc6_ || _loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr121);
                                 }
                                 return;
                                 §§goto(addr173);
                              }
                           }
                           §§goto(addr223);
                        }
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr82);
               }
            }
         }
         §§goto(addr58);
      }
      
      protected function §3Q§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.mCurrentAction);
            loop0:
            while(true)
            {
               §§push(§0!I§);
               addr171:
               addr172:
               addr19:
               while(§§pop() != §§pop())
               {
                  §§push(this.mCurrentAction);
                  continue loop0;
               }
               addr19:
               this.§7]§(param1);
               addr19:
               return;
            }
         }
         §§goto(addr120);
      }
      
      public function updateCamera(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§&d§)
            {
               if(!_loc2_)
               {
                  this.§#!a§ = this.§&d§.x;
               }
               loop0:
               while(true)
               {
                  this.§8!F§ = this.§&d§.y;
                  while(true)
                  {
                     §§push(§§findproperty(§&"9§));
                     §§push(SCREEN_WIDTH_B2);
                     if(!(_loc2_ && this))
                     {
                        §§push(this.§&d§.right);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§pop() - this.§&d§.left);
                        }
                        §§push(§§pop() / §§pop());
                     }
                     §§pop().§&"9§ = §§pop();
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           this.§^!j§();
                           loop4:
                           while(true)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 this.§;!+§();
                                 loop5:
                                 while(!_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       break loop4;
                                    }
                                    while(true)
                                    {
                                       this.§2!8§();
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       continue loop5;
                                    }
                                    return;
                                 }
                                 continue loop2;
                              }
                           }
                           addr93:
                           while(true)
                           {
                              this.§5#§(this.mCurrentCameraSliderLocation,param1);
                              continue loop2;
                           }
                           addr88:
                        }
                     }
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     §§goto(addr88);
                  }
               }
            }
            else
            {
               this.§"!j§();
            }
            while(true)
            {
               this.§3Q§(param1);
               §§goto(addr93);
            }
         }
         §§goto(addr49);
      }
      
      private function §![§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Number = this.§>"6§.scale + (this.§%G§.scale - this.§>"6§.scale) * param1;
         var _loc4_:Number = this.§>"6§.x + (this.§%G§.x - this.§>"6§.x) * param1;
         var _loc5_:Number = this.§>"6§.y + (this.§%G§.y - this.§>"6§.y) * param1;
         if(_loc6_)
         {
            §§push(this.§2W§);
            while(true)
            {
               §§push(this.§2W§);
               loop1:
               while(true)
               {
                  §§push(§§pop().x - (this.§2W§.x - _loc4_) * param2);
                  loop2:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(this.§2W§);
                        addr124:
                        loop4:
                        while(true)
                        {
                           §§push(this.§2W§);
                           addr126:
                           while(_loc6_ || _loc3_)
                           {
                              §§push(§§pop().y - (this.§2W§.y - _loc5_) * param2);
                              while(true)
                              {
                                 §§pop().y = §§pop();
                                 addr143:
                                 while(!(_loc7_ && param2))
                                 {
                                    continue loop4;
                                 }
                                 addr94:
                                 §§push(§§pop().scale - (this.§2W§.scale - _loc3_) * param2);
                                 continue loop3;
                                 if(_loc6_ || param2)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               addr73:
               if(!(_loc6_ || param2))
               {
                  continue;
               }
               §§push(this.§2W§);
               if(_loc6_)
               {
                  §§goto(addr94);
               }
               §§goto(addr126);
            }
         }
         while(true)
         {
            §§push(this.§2W§);
            if(_loc6_)
            {
               §§goto(addr73);
            }
            §§goto(addr124);
         }
         §§goto(addr120);
      }
      
      protected function §!B§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         if(!_loc4_)
         {
            §§push(this.§"!M§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(§§pop() != §§pop())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     if(!this.§%!r§)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           while(true)
                           {
                              §§push(Number(1));
                              addr138:
                              while(true)
                              {
                                 param2 = §§pop();
                                 addr139:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr136:
                        }
                        §§goto(addr139);
                     }
                     while(true)
                     {
                        §§push(param1);
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        if(!_loc4_)
                        {
                           §§push(§4!O§);
                           if(_loc4_ && param1)
                           {
                              break;
                           }
                           §§push(§§pop() / §§pop());
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                           addr101:
                           _loc3_ = §§pop();
                           while(_loc5_)
                           {
                              this.§![§(_loc3_,param2);
                              loop4:
                              while(!(_loc4_ && this))
                              {
                                 this.§#!a§ = this.§2W§.x;
                                 loop5:
                                 do
                                 {
                                    this.§8!F§ = this.§2W§.y;
                                    while(_loc5_)
                                    {
                                       §&"9§ = this.§2W§.scale;
                                       if(!_loc4_)
                                       {
                                          continue loop5;
                                       }
                                    }
                                    continue loop4;
                                 }
                                 while(_loc4_);
                                 
                                 break loop1;
                              }
                           }
                           continue;
                        }
                        §§goto(addr138);
                     }
                     continue;
                  }
                  §§goto(addr139);
               }
               return;
            }
         }
         §§goto(addr136);
      }
      
      public function §5#§(param1:Number, param2:Number) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §<!i§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§3!+§ = param1;
            do
            {
               this.§!!z§ = param2;
            }
            while(_loc3_);
            
         }
      }
      
      private function §1!`§(param1:§%!>§, param2:§-!X§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Number = NaN;
         if(_loc4_)
         {
            §§push(param1);
            §§push(§@a§);
            if(_loc4_ || _loc3_)
            {
               §§push(param2.scale);
               if(!_loc5_)
               {
                  §§push(§@a§);
                  if(_loc4_ || param2)
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc5_ && this))
                     {
                        §§push(this.§0!X§);
                        if(_loc4_ || this)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc4_ || param1)
                           {
                           }
                           addr197:
                           §§pop().scale = §§pop() + §§pop();
                           addr196:
                           §§push(SCREEN_WIDTH_B2);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(§§pop() / param1.scale);
                              if(!_loc5_)
                              {
                                 §§push(this.§[!x§);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(this.§ var§);
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc5_ && this))
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(SCREEN_WIDTH_B2);
                                                if(_loc4_ || param1)
                                                {
                                                   §§push(this.§[!x§);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      addr126:
                                                      §§push(§§pop() / (§§pop() - this.§ var§));
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         addr135:
                                                         _loc3_ = §§pop();
                                                      }
                                                      §§goto(addr135);
                                                   }
                                                   §§goto(addr126);
                                                }
                                                §§goto(addr135);
                                             }
                                             param1.scale = _loc3_;
                                             return true;
                                          }
                                          else
                                          {
                                             addr21:
                                             §§push(false);
                                             if(!(_loc5_ && param2))
                                             {
                                                return §§pop();
                                             }
                                          }
                                          return §§pop();
                                       }
                                    }
                                 }
                                 §§goto(addr126);
                              }
                           }
                           §§goto(addr135);
                           addr196:
                        }
                        addr195:
                        §§goto(addr196);
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§`"=§.§2!#§());
                  }
                  §§goto(addr195);
               }
               §§goto(addr196);
            }
            §§goto(addr197);
         }
         §§goto(addr21);
      }
      
      private function § !+§(param1:§%!>§, param2:§-!X§) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(this.§1!`§(param1,param2));
         if(!_loc8_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc9_)
         {
            param1.y = param2.y;
         }
         var _loc4_:Number = param1.y + SCREEN_HEIGHT_B2 * 0.5 / param1.scale;
         §§push(SCREEN_HEIGHT_B2);
         if(_loc9_)
         {
            §§push(§§pop() * 0.25);
            if(_loc9_)
            {
               addr49:
               §§push(§§pop() / param1.scale);
               if(!(_loc8_ && this))
               {
                  addr59:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!_loc8_)
               {
                  §§push(_loc4_);
                  if(!_loc8_)
                  {
                     §§push(_loc5_);
                     if(_loc9_ || _loc3_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc9_ || this)
                           {
                              addr82:
                              param1.y += _loc5_ - _loc4_;
                              if(_loc9_)
                              {
                                 addr92:
                                 param1.x = param2.x;
                              }
                           }
                           §§push(param1.x - SCREEN_WIDTH_B2 * 0.5 / param1.scale);
                           if(_loc9_ || param2)
                           {
                              addr123:
                              var _loc6_:Number;
                              §§push(_loc6_ = §§pop());
                              if(_loc9_)
                              {
                                 §§push(this.§ var§);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(_loc9_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             addr138:
                                             §§pop();
                                             if(!_loc8_)
                                             {
                                                addr144:
                                                if(param1.§7l§)
                                                {
                                                   if(_loc9_ || param2)
                                                   {
                                                      param1.x += this.§ var§ - _loc6_;
                                                   }
                                                }
                                             }
                                             var _loc7_:Number;
                                             §§push((_loc7_ = param1.x + SCREEN_WIDTH_B2 * 0.5 / param1.scale) > this.§[!x§);
                                             if(!_loc8_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc9_ || param2)
                                                   {
                                                      addr187:
                                                      §§pop();
                                                      if(_loc9_ || param1)
                                                      {
                                                         §§push(!param1.§7l§);
                                                         if(_loc9_)
                                                         {
                                                            addr200:
                                                            if(§§pop())
                                                            {
                                                               if(_loc9_ || this)
                                                               {
                                                                  param1.x += this.§[!x§ - _loc7_;
                                                                  addr208:
                                                               }
                                                            }
                                                            return _loc3_;
                                                         }
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                }
                                                §§goto(addr200);
                                             }
                                             §§goto(addr187);
                                          }
                                       }
                                       §§goto(addr144);
                                    }
                                 }
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr92);
                     }
                  }
                  §§goto(addr123);
               }
               §§goto(addr82);
            }
            §§goto(addr59);
         }
         §§goto(addr49);
      }
      
      private function §4!w§(param1:§%!>§, param2:§-!X§) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.scale - §@a§);
         if(!_loc3_)
         {
            §§push(§`"=§.§2!#§());
            if(!(_loc3_ && param2))
            {
               §§push(param2.scale);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() - §@a§);
               }
               §§push(§§pop() * §§pop());
            }
            return §§pop() / §§pop();
         }
      }
      
      protected function §"!j§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§ !+§(this.§>"6§,this.§-w§);
         }
         §§push(this.§4!w§(this.§>"6§,this.§-w§));
         if(!(_loc3_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            this.§ !+§(this.§%G§,this.§2!j§);
         }
         §§push(this.§4!w§(this.§%G§,this.§2!j§));
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            this.§0!X§ = Math.min(_loc1_,_loc2_);
         }
      }
      
      public function §^!j§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = NaN;
         if(!_loc4_)
         {
            if(this.§9q§.sprite)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr31:
                  §§push(§=!X§.§3?§());
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop() / §=!X§.§@"6§);
                     if(_loc3_ || _loc1_)
                     {
                        §§push(§=!X§.§5!P§);
                        if(_loc3_ || _loc3_)
                        {
                           addr65:
                           §§push(§§pop() - §§pop());
                           if(!_loc4_)
                           {
                              addr62:
                              §§push(1);
                           }
                           _loc1_ = §§pop();
                           if(_loc3_ || this)
                           {
                              §§push(§§findproperty(§9!e§));
                              §§push(this.§9q§.sprite);
                              §§push(§!w§.§[!c§);
                              if(!_loc4_)
                              {
                                 §§push(1 - §`"=§.§;!0§);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(§§pop() / 2);
                                    if(_loc3_)
                                    {
                                       addr106:
                                       §§push(§§pop() * §§pop());
                                       §§push(§§pop() * §§pop());
                                    }
                                    var _loc2_:* = §§pop();
                                    §§pop().x = §§pop();
                                    §§pop().§9!e§ = _loc2_;
                                    if(!_loc4_)
                                    {
                                       §§push(§§findproperty(§^Z§));
                                       §§push(this.§9q§.sprite);
                                       §§push(_loc1_);
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(§!w§.§]!U§);
                                          if(!_loc4_)
                                          {
                                             §§push(1 - §`"=§.§;!0§);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc3_)
                                                {
                                                   §§goto(addr142);
                                                }
                                                §§goto(addr160);
                                             }
                                             addr142:
                                             §§goto(addr140);
                                          }
                                          addr140:
                                          §§push(§§pop() * §?!b§.§<m§);
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             addr160:
                                             §§push(§§pop() + §§pop());
                                             §§push(§§pop() + §§pop());
                                          }
                                          _loc2_ = §§pop();
                                          §§pop().y = §§pop();
                                          §§pop().§^Z§ = _loc2_;
                                          return;
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr142);
                                 }
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr142);
                        }
                        §§goto(addr65);
                        §§push(Number(§§pop() >> §§pop()));
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr65);
               }
            }
            §§goto(addr142);
         }
         §§goto(addr31);
      }
      
      public function §2!8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§9q§);
            if(!_loc2_)
            {
               §§push(§§pop().sprite);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§push(this.§9q§);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop().sprite);
                           addr91:
                           loop0:
                           while(true)
                           {
                              §§push(§;!0§);
                              loop1:
                              while(true)
                              {
                                 §§pop().scaleX = §§pop();
                                 addr93:
                                 while(true)
                                 {
                                    §§push(this.§9q§);
                                    if(_loc1_)
                                    {
                                       §§push(§§pop().sprite);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§push(§;!0§);
                                          if(_loc1_ || _loc2_)
                                          {
                                             §§pop().scaleY = §§pop();
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop1;
                                       }
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        addr90:
                     }
                     §§goto(addr93);
                  }
                  return;
               }
               §§goto(addr91);
            }
            §§goto(addr90);
         }
         §§goto(addr93);
      }
      
      public function §;!+§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§#!a§);
         if(_loc3_)
         {
            §§push(§!w§.§4!-§);
            if(_loc3_)
            {
               §§push(§§pop() / §§pop());
               if(!(_loc4_ && _loc2_))
               {
                  addr34:
                  §§push(§§pop() + this.§3!+§);
                  if(_loc3_)
                  {
                     addr37:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc1_:* = §§pop();
               §§push(this.§8!F§);
               if(_loc3_)
               {
                  §§push(§!w§.§4!-§);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc4_ && _loc2_))
                     {
                        addr62:
                        §§push(§§pop() + this.§!!z§);
                        if(!(_loc4_ && this))
                        {
                           addr70:
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(_loc3_ || _loc2_)
                        {
                           §§push(this);
                           §§push(_loc1_);
                           if(!_loc4_)
                           {
                              §§push(§!w§.§[!c§);
                              if(!(_loc4_ && this))
                              {
                                 §§push(§§pop() / 2);
                                 if(_loc3_ || _loc1_)
                                 {
                                    addr323:
                                    §§push(§=!X§.§@"6§);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       addr353:
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§push(§=!X§.§?!8§);
                                       }
                                       §§pop().§74§ = §§pop() - §§pop();
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(_loc2_);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§push(§!w§.§]!U§);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(§§pop() / 2);
                                                if(_loc3_ || _loc1_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc4_)
                                                   {
                                                      addr291:
                                                      §§push(§§pop() + §?!b§.§-_§);
                                                   }
                                                   §§pop().§1!o§ = §§pop();
                                                   continue;
                                                }
                                             }
                                          }
                                          §§goto(addr291);
                                       }
                                    }
                                    §§push(§§pop() / §§pop());
                                 }
                                 §§goto(addr353);
                              }
                              §§goto(addr323);
                           }
                           §§goto(addr353);
                        }
                        §§goto(addr257);
                     }
                     §§goto(addr70);
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr34);
         }
         §§goto(addr37);
      }
      
      protected function §!!D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§<a§(§1@§);
         }
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            this.§<!z§ = -1;
            if(_loc5_)
            {
               this.§!!D§();
               if(!(_loc4_ && param1))
               {
                  §§push(this);
                  §§push(this);
                  §§push(this.§&a§ = param1);
                  if(!_loc4_)
                  {
                     var _loc3_:*;
                     §§push(_loc3_ = §§pop());
                  }
                  §§pop().§09§ = §§pop();
                  §§pop().§1!l§ = _loc3_;
                  if(!_loc4_)
                  {
                     addr57:
                     §§push(this);
                     §§push(this);
                     §§push(this.§@?§ = param2);
                     if(!_loc4_)
                     {
                        §§push(_loc3_ = §§pop());
                     }
                     §§pop().§`h§ = §§pop();
                     §§pop().§!!@§ = _loc3_;
                     if(!_loc4_)
                     {
                        this.§%!J§ = 0;
                        loop11:
                        while(true)
                        {
                           §§push(this.§2W§);
                           while(true)
                           {
                              §§push(this.§#!a§);
                              loop7:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 addr219:
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§2W§);
                                    addr197:
                                    addr201:
                                    while(!_loc5_)
                                    {
                                       continue loop7;
                                    }
                                    §§pop().y = this.§8!F§;
                                    loop3:
                                    while(true)
                                    {
                                       §§push(this.§2W§);
                                       if(!(_loc4_ && param2))
                                       {
                                          §§push(§&"9§);
                                          if(_loc4_ && param1)
                                          {
                                             continue;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop7;
                                          }
                                          §§pop().scale = §§pop();
                                          while(true)
                                          {
                                             this.§'"0§ = §&"9§;
                                             loop5:
                                             while(_loc5_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop11;
                                                }
                                                if(Math.abs(this.§%G§.x - this.§>"6§.x) > 0.001)
                                                {
                                                   while(_loc4_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§#!a§);
                                                      if(!(_loc4_ && param2))
                                                      {
                                                         §§push(§§pop() - this.§>"6§.x);
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            §§push(§§pop() / (this.§%G§.x - this.§>"6§.x));
                                                            if(_loc5_ || this)
                                                            {
                                                               addr159:
                                                               §§push(§§pop() * §4!O§);
                                                            }
                                                            §§pop().mCurrentCameraSliderLocation = §§pop();
                                                            while(true)
                                                            {
                                                               addr81:
                                                               while(true)
                                                               {
                                                                  this.mDragging = true;
                                                                  if(!_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc5_ || param2)
                                                                        {
                                                                           return;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  §§goto(addr121);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   addr121:
                                                   addr123:
                                                }
                                                §§goto(addr81);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr197);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr76:
                     }
                     §§goto(addr219);
                  }
                  §§goto(addr123);
               }
               §§goto(addr219);
            }
            §§goto(addr76);
         }
         §§goto(addr57);
      }
      
      public function §5!@§(param1:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = Number(this.mCurrentCameraSliderLocation);
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.§%!J§);
            if(_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§%!J§ = §§pop();
         }
         §§push(this.§1!l§);
         if(_loc5_)
         {
            §§push(§§pop() - this.§09§);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param1)
         {
            §§push(this.§"!M§);
            if(_loc5_)
            {
               §§push(0);
               loop0:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_);
                        loop2:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!(_loc4_ && this))
                           {
                              §§push(§!w§.§4!-§);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc4_)
                                 {
                                    §§push(§;!0§);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr269:
                                          §§push(this.§"!M§);
                                          loop4:
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(_loc4_ && param1)
                                             {
                                             }
                                             addr289:
                                             loop5:
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr291:
                                                   loop25:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      loop26:
                                                      while(true)
                                                      {
                                                         this.§%!r§ = false;
                                                         loop21:
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ || _loc2_))
                                                            {
                                                               continue loop26;
                                                            }
                                                            if(_loc4_ && _loc2_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  if(_loc4_ && param1)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  if(_loc4_ && _loc3_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§push(0);
                                                                  loop14:
                                                                  while(§§pop() < §§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        addr190:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(!(_loc4_ && param1))
                                                                           {
                                                                              §§push(0.3);
                                                                              continue loop4;
                                                                           }
                                                                           addr207:
                                                                           addr213:
                                                                           addr207:
                                                                           while(_loc4_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              addr214:
                                                                              while(true)
                                                                              {
                                                                                 this.§%!r§ = true;
                                                                                 addr170:
                                                                                 while(true)
                                                                                 {
                                                                                    break loop14;
                                                                                 }
                                                                                 continue loop20;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        §§push(§4!O§);
                                                                        if(_loc5_)
                                                                        {
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue loop21;
                                                                                    }
                                                                                    §§push(_loc2_);
                                                                                    if(!(_loc4_ && param1))
                                                                                    {
                                                                                       §§push(§4!O§);
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_ || _loc2_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§push(§§pop() - _loc2_);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   §§push(0.3);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   addr137:
                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                               §§push(Number(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc5_ || _loc2_)
                                                                                                                  {
                                                                                                                     break loop10;
                                                                                                                  }
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr190);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr213);
                                                                                                      }
                                                                                                      addr150:
                                                                                                   }
                                                                                                   §§goto(addr157);
                                                                                                }
                                                                                                §§goto(addr207);
                                                                                             }
                                                                                             §§goto(addr137);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr188);
                                                                                          }
                                                                                       }
                                                                                       addr113:
                                                                                    }
                                                                                    §§goto(addr150);
                                                                                 }
                                                                                 §§goto(addr189);
                                                                              }
                                                                              addr100:
                                                                           }
                                                                           addr68:
                                                                           this.mCurrentCameraSliderLocation = _loc2_;
                                                                           while(_loc4_ && param1)
                                                                           {
                                                                              while(_loc4_)
                                                                              {
                                                                                 this.§%!r§ = true;
                                                                              }
                                                                              §§goto(addr68);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§09§ = this.§1!l§;
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr214);
                                                                                    }
                                                                                    §§goto(addr170);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr100);
                                                                                 }
                                                                              }
                                                                              §§goto(addr72);
                                                                           }
                                                                           addr72:
                                                                           return;
                                                                           addr54:
                                                                        }
                                                                        §§goto(addr113);
                                                                     }
                                                                     §§goto(addr157);
                                                                  }
                                                                  addr188:
                                                                  _loc2_ = §§pop();
                                                                  §§goto(addr165);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr269:
                                       }
                                       §§goto(addr289);
                                    }
                                    §§goto(addr269);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr289);
                                    §§goto(addr269);
                                 }
                              }
                              §§goto(addr269);
                           }
                           §§goto(addr289);
                        }
                     }
                  }
                  §§goto(addr54);
               }
            }
            §§goto(addr291);
         }
         §§goto(addr233);
      }
      
      protected function §#%§() : Boolean
      {
         return this.mCurrentAction == §1@§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.mDragging)
            {
               do
               {
                  this.§1!l§ = param1;
                  do
                  {
                     this.§!!@§ = param2;
                  }
                  while(_loc3_ && this);
                  
               }
               while(_loc3_ && this);
               
               addr62:
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         if(_loc5_ || param1)
         {
            §§push(this.mCurrentAction);
            while(true)
            {
               §§push(§1@§);
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        this.§<a§(§"L§);
                        while(true)
                        {
                           §§push(param1);
                           while(true)
                           {
                              §§push(0);
                              while(true)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§1!l§ = param1;
                                       addr443:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr430:
                                 }
                                 while(true)
                                 {
                                    §§push(Number(Math.abs(this.§1!l§ - this.§&a§)));
                                    loop9:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr425:
                                       while(true)
                                       {
                                          §§push(this.§%!J§);
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr31);
               }
            }
         }
         §§goto(addr285);
      }
      
      public function §6"4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mCurrentAction);
            loop0:
            while(true)
            {
               §§push(§9j§);
               loop1:
               while(§§pop() != §§pop())
               {
                  §§push(this.mCurrentAction);
                  loop2:
                  while(true)
                  {
                     §§push(§7!O§);
                     loop3:
                     while(!_loc2_)
                     {
                        if(§§pop() != §§pop())
                        {
                           §§push(this.mCurrentCameraSliderLocation);
                           loop4:
                           for(; _loc1_; §§push(this.mCurrentCameraSliderLocation),if(_loc1_ || _loc2_)
                           {
                              continue loop0;
                           })
                           {
                              §§push(§4!O§);
                              while(true)
                              {
                                 §§push(2);
                                 addr103:
                                 addr42:
                                 while(true)
                                 {
                                    §§push(§§pop() / §§pop());
                                    addr104:
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          continue loop4;
                                       }
                                       if(_loc1_ || this)
                                       {
                                          this.§<a§(§7!O§);
                                       }
                                       if(!_loc2_)
                                       {
                                          if(_loc1_)
                                          {
                                             break;
                                          }
                                          break loop1;
                                       }
                                    }
                                    §§goto(addr19);
                                 }
                                 §§push(§4!O§);
                                 if(_loc2_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 §§push(2);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(_loc1_)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          if(_loc1_ || this)
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                if(!_loc2_)
                                                {
                                                   this.§<a§(§9j§);
                                                   addr93:
                                                }
                                                §§goto(addr19);
                                             }
                                             else
                                             {
                                                §§goto(addr115);
                                             }
                                             §§goto(addr19);
                                          }
                                          §§goto(addr93);
                                       }
                                       §§goto(addr19);
                                    }
                                    else
                                    {
                                       §§goto(addr104);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr103);
                                 }
                                 §§goto(addr104);
                              }
                           }
                           continue loop2;
                        }
                        this.§<a§(§9j§);
                        §§goto(addr132);
                     }
                     continue loop1;
                  }
               }
               this.§<a§(§7!O§);
               §§goto(addr152);
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr42);
            }
         }
         §§goto(addr144);
      }
      
      public function §0t§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<!z§ = param1;
            for(; this.mCurrentCameraSliderLocation >= §4!O§ / 2; if(!_loc2_)
            {
               break;
            },if(!_loc2_)
            {
               continue;
            },§§goto(addr19))
            {
               this.§<a§(§9j§);
               if(!(_loc3_ && _loc3_))
               {
                  continue;
               }
            }
            this.§<a§(§7!O§);
         }
         addr19:
      }
      
      public function goToBirdView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§<a§(§7!O§);
         }
      }
      
      public function goToCastleView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§<a§(§9j§);
         }
      }
      
      public function §<a§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§2W§);
            while(true)
            {
               §§push(this.§#!a§);
               while(true)
               {
                  §§pop().x = §§pop();
                  while(true)
                  {
                     §§push(this.§2W§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§8!F§);
                        addr96:
                        while(true)
                        {
                           §§pop().y = §§pop();
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.mCurrentCameraSliderLocation);
            loop0:
            while(true)
            {
               §§push(§4!O§);
               addr84:
               addr85:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               addr85:
               return true;
            }
         }
         §§goto(addr80);
      }
      
      public function §;!w§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.mCurrentCameraSliderLocation);
            loop0:
            while(true)
            {
               if(§§pop() != 0)
               {
                  continue;
               }
               if(!(_loc2_ && param1))
               {
                  addr100:
                  return true;
               }
               while(true)
               {
                  continue loop0;
                  addr68:
                  if(!(_loc2_ && _loc3_))
                  {
                     addr76:
                     return true;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function § c§(param1:§4^§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§&d§ = param1;
            loop0:
            while(true)
            {
               if(this.§&d§ == null)
               {
                  this.§#!a§ = this.§>P§.x;
                  while(_loc2_)
                  {
                     if(_loc2_)
                     {
                        this.§8!F§ = this.§>P§.y;
                        loop2:
                        while(true)
                        {
                           if(!(_loc2_ || this))
                           {
                              while(!(_loc2_ || _loc3_))
                              {
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       §§push(this.§>P§);
                                       if(_loc2_)
                                       {
                                          §§push(§&"9§);
                                          if(!(_loc3_ && this))
                                          {
                                             break;
                                          }
                                          while(!_loc2_)
                                          {
                                             while(true)
                                             {
                                                §§pop().x = §§pop();
                                                addr136:
                                                while(true)
                                                {
                                                   §§push(this.§>P§);
                                                }
                                             }
                                          }
                                          continue;
                                          addr124:
                                       }
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr124);
                                             §§push(this.§8!F§);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                             }
                                             addr133:
                                          }
                                          §§goto(addr135);
                                       }
                                    }
                                    §§goto(addr136);
                                 }
                                 §§pop().scale = §§pop();
                              }
                           }
                           §&"9§ = this.§>P§.scale;
                           while(true)
                           {
                              if(_loc2_ || this)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                        return;
                     }
                     addr152:
                     this.§>P§ = new §4^§();
                     break;
                  }
                  §§goto(addr133);
                  §§push(this.§>P§);
               }
               §§goto(addr152);
            }
         }
         §§goto(addr136);
      }
      
      protected function §<!N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(!this.isOnCastleView())
            {
               this.goToBirdView();
               if(_loc1_ || _loc2_)
               {
                  addr50:
               }
               else
               {
                  addr73:
               }
               return;
            }
            if(_loc1_ || _loc2_)
            {
               this.goToCastleView();
            }
            §§goto(addr73);
         }
         §§goto(addr50);
      }
      
      public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§0!X§);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || this)
         {
            if(!param1)
            {
               §§push(_loc3_);
               if(_loc4_ || param1)
               {
                  §§push(param2);
                  while(true)
                  {
                     §§push(§§pop() - §§pop());
                     addr74:
                     §§push(this.§0!X§);
                     if(_loc5_)
                     {
                        continue;
                     }
                     if(!(_loc5_ && param1))
                     {
                        if(§§pop() != §§pop())
                        {
                           while(_loc4_)
                           {
                              this.§0!X§ = _loc3_;
                              do
                              {
                                 this.§<!N§();
                              }
                              while(_loc5_ && this);
                              
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              addr46:
                              if(_loc5_ && param1)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       if(!(_loc5_ && param2))
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc5_ && param1))
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr170:
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr74);
                                                   }
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr171:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   addr170:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr150:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         addr151:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   addr149:
                                                }
                                                while(true)
                                                {
                                                   §§push(Number(Math.max(this.§<O§,Math.min(this.§5!s§,_loc3_))));
                                                   addr113:
                                                   addr169:
                                                   while(_loc4_ || _loc3_)
                                                   {
                                                      _loc3_ = §§pop();
                                                      continue loop6;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr170);
                                                   }
                                                }
                                             }
                                             §§goto(addr150);
                                          }
                                          §§goto(addr113);
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr151);
                                 }
                              }
                              else
                              {
                                 addr53:
                              }
                              §§goto(addr30);
                           }
                           while(true)
                           {
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 §§push(param2);
                                 while(true)
                                 {
                                    §§goto(addr169);
                                 }
                                 addr168:
                              }
                              §§goto(addr170);
                           }
                           addr164:
                        }
                        addr30:
                        return;
                     }
                     §§goto(addr168);
                  }
               }
               §§goto(addr149);
            }
            §§goto(addr164);
         }
         §§goto(addr53);
      }
      
      public function getZoomRatio() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§0"'§);
         if(_loc1_ || this)
         {
            §§push(this.§<O§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() - §§pop());
               if(_loc1_)
               {
                  addr47:
                  §§push(this.§5!s§);
                  if(_loc1_ || this)
                  {
                     addr69:
                     §§push(§§pop() / (§§pop() - this.§<O§));
                  }
                  §§goto(addr69);
               }
               return §§pop();
            }
            §§goto(addr69);
         }
         §§goto(addr47);
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(Math.min(Math.max(param1,0),1) * (this.§5!s§ - this.§<O§));
            if(!_loc3_)
            {
               §§push(§§pop() + this.§<O§);
            }
            §§pop().§0"'§ = §§pop();
         }
      }
      
      public function §"N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§0!X§ = Math.max(this.§0!X§ - 0.5,0.5);
         }
      }
      
      public function §1!9§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(_loc2_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(" mManualScale: " + this.§0!X§);
               loop1:
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
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
                              §§push(" mXcenterB2: " + this.§#!a§);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop8:
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(" mYcenterB2: " + this.§8!F§);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(" mXcenterB2target: " + this.§0!X§);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        loop20:
                                                                        while(_loc2_)
                                                                        {
                                                                           §§push("\n mYcenterB2target: " + this.§0!X§);
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc1_ = §§pop();
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc1_);
                                                                                       loop25:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(" mXcenterB2previous: " + this.§0!X§);
                                                                                          loop26:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                loop28:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc1_ = §§pop();
                                                                                                   loop29:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc1_);
                                                                                                      loop30:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(" mYcenterB2previous: " + this.§0!X§);
                                                                                                         loop31:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            loop32:
                                                                                                            while(_loc2_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               loop33:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc1_ = §§pop();
                                                                                                                  loop34:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc1_);
                                                                                                                     loop35:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(" mTimeNeededForCameraMovement: " + this.§0!X§);
                                                                                                                        loop36:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           loop37:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              loop38:
                                                                                                                              while(_loc2_ || _loc1_)
                                                                                                                              {
                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                 loop39:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc1_);
                                                                                                                                    loop40:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(" mTimeUsedForCameraMovement: " + this.§0!X§);
                                                                                                                                       loop41:
                                                                                                                                       while(_loc2_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          loop42:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             loop43:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                loop44:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push("\n mTimeNeededForScaleMovement: " + this.§0!X§);
                                                                                                                                                      addr973:
                                                                                                                                                      while(!(_loc3_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            addr982:
                                                                                                                                                            while(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(" mTimeUsedForScaleMovement: " + this.§0!X§);
                                                                                                                                                                     addr963:
                                                                                                                                                                     addr863:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        addr964:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           addr965:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc1_ = §§pop();
                                                                                                                                                                              addr966:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(" mTargetScale: " + this.§0!X§);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       addr950:
                                                                                                                                                                                       while(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop32;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr949:
                                                                                                                                                                                 }
                                                                                                                                                                                 addr953:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                                                                    addr954:
                                                                                                                                                                                    while(_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc1_);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(" mTargetScalePrevious: " + this.§0!X§);
                                                                                                                                                                                          addr921:
                                                                                                                                                                                          while(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             continue loop42;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop16;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr680:
                                                                                                                                                                                    continue loop14;
                                                                                                                                                                                    if(_loc2_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop40;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(!(_loc3_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop35;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop43;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr523:
                                                                                                                                                      continue loop6;
                                                                                                                                                      if(!(_loc2_ || _loc2_))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(_loc3_ && _loc2_)
                                                                                                                                                      {
                                                                                                                                                         continue loop38;
                                                                                                                                                      }
                                                                                                                                                      §§push(" mDraggingPointCurrentY: " + this.§0!X§);
                                                                                                                                                      loop125:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         loop126:
                                                                                                                                                         while(!(_loc3_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  loop127:
                                                                                                                                                                  for(; _loc2_; if(_loc3_ && _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  },if(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc1_ = §§pop();
                                                                                                                                                                     §§goto(addr261);
                                                                                                                                                                  },§§goto(addr630))
                                                                                                                                                                  {
                                                                                                                                                                     _loc1_ = §§pop();
                                                                                                                                                                     loop128:
                                                                                                                                                                     while(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc1_);
                                                                                                                                                                        loop129:
                                                                                                                                                                        while(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(" mDraggingPointOriginalX: " + this.§0!X§);
                                                                                                                                                                           continue loop125;
                                                                                                                                                                           addr375:
                                                                                                                                                                           if(_loc2_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc1_ = §§pop();
                                                                                                                                                                              loop148:
                                                                                                                                                                              while(_loc2_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                 loop149:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(" mCameraBorderRight: " + this.§0!X§);
                                                                                                                                                                                    loop150:
                                                                                                                                                                                    while(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             loop151:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   loop152:
                                                                                                                                                                                                   while(!_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                                                                      loop153:
                                                                                                                                                                                                      while(!_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                                                                         while(!_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(" mCameraBorderSky: " + this.§0!X§);
                                                                                                                                                                                                            while(_loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               loop156:
                                                                                                                                                                                                               for(; !(_loc3_ && _loc2_); while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop151;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop156;
                                                                                                                                                                                                               },continue loop12)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  loop157:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr296:
                                                                                                                                                                                                                        if(_loc2_ || _loc1_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc1_ = §§pop();
                                                                                                                                                                                                                              loop158:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr310:
                                                                                                                                                                                                                                       if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc1_);
                                                                                                                                                                                                                                          loop159:
                                                                                                                                                                                                                                          for(; _loc2_ || _loc3_; if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr157:
                                                                                                                                                                                                                                                if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr164);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr368);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr450);
                                                                                                                                                                                                                                                   §§goto(addr157);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop129;
                                                                                                                                                                                                                                                addr361:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop157;
                                                                                                                                                                                                                                          })
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(" mCameraBorderGround: " + this.§0!X§);
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc3_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   continue loop156;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop150;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             loop110:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr656:
                                                                                                                                                                                                                                                   if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      break loop156;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr837:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      loop81:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                         loop82:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                                                                                                                            loop83:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                                                                                                                               loop84:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(" mBirdCameraY: " + this.§0!X§);
                                                                                                                                                                                                                                                                  loop85:
                                                                                                                                                                                                                                                                  while(!_loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc2_ || this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc3_ && _loc1_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                    break loop128;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop3;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop82;
                                                                                                                                                                                                                                                                              addr39:
                                                                                                                                                                                                                                                                              if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 return §§pop();
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr965);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr950);
                                                                                                                                                                                                                                                                        addr133:
                                                                                                                                                                                                                                                                        if(!(_loc2_ || _loc2_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                        loop164:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop159;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr630:
                                                                                                                                                                                                                                                                           addr249:
                                                                                                                                                                                                                                                                           loop162:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop127;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              loop144:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr344:
                                                                                                                                                                                                                                                                                    if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push("\n mCameraBorderLeft: " + this.§0!X§);
                                                                                                                                                                                                                                                                                       loop145:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                             break loop151;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                          addr91:
                                                                                                                                                                                                                                                                                          if(!(_loc2_ || this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr98:
                                                                                                                                                                                                                                                                                          if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc2_ || this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop85;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                if(_loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop156;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr117:
                                                                                                                                                                                                                                                                                                if(!(_loc2_ || _loc3_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   loop141:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop126;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                                                                         while(!_loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                            while(!_loc3_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                  continue loop144;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr985);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                     break loop152;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr933:
                                                                                                                                                                                                                                                                                                               while(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                  while(_loc2_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(" mCastleCameraX: " + this.§0!X§);
                                                                                                                                                                                                                                                                                                                     while(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr905);
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr963);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop20;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop19;
                                                                                                                                                                                                                                                                                                            if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc3_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  break loop164;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr180:
                                                                                                                                                                                                                                                                                                                  _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                  if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop164;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr673:
                                                                                                                                                                                                                                                                                                                              while(!_loc3_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(" mDraggingPointPreviousY: " + this.§0!X§);
                                                                                                                                                                                                                                                                                                                                       addr624:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                          addr625:
                                                                                                                                                                                                                                                                                                                                          while(_loc2_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                break loop162;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr882:
                                                                                                                                                                                                                                                                                                                                             while(!_loc3_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                break loop157;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr981);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr762:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                             addr763:
                                                                                                                                                                                                                                                                                                                                             while(!_loc3_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                §§goto(addr766);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr982);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr433:
                                                                                                                                                                                                                                                                                                                                       if(_loc3_ && this)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(" mDraggingPointOriginalY: " + this.§0!X§);
                                                                                                                                                                                                                                                                                                                                             break loop150;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop10;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr709:
                                                                                                                                                                                                                                                                                                                                       addr643:
                                                                                                                                                                                                                                                                                                                                       while(!_loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(" mDraggingPointPreviousX: " + this.§0!X§);
                                                                                                                                                                                                                                                                                                                                          continue loop110;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                          addr710:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr643);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr643:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop39;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop128;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop148;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop158;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc3_ && _loc2_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop153;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(" mPigsAreOnRight: " + this.§0!X§);
                                                                                                                                                                                                                                                                                                                                 if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc2_ || this)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop21;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr82:
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + "\n ");
                                                                                                                                                                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr84);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr215);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr921);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr624);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr82);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr141);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr608);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr504);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr180);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr710);
                                                                                                                                                                                                                                                                                                                  continue loop153;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop23;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(_loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop0;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr598);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                            addr450:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                               addr451:
                                                                                                                                                                                                                                                                                                               while(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop29;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                  while(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr400:
                                                                                                                                                                                                                                                                                                                     if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(" mDraggingTimer: " + this.§0!X§);
                                                                                                                                                                                                                                                                                                                        while(!_loc3_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                           continue loop141;
                                                                                                                                                                                                                                                                                                                           §§goto(addr98);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop41;
                                                                                                                                                                                                                                                                                                                        addr411:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr771:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(" mBirdCameraScale: " + this.§0!X§);
                                                                                                                                                                                                                                                                                                                              break loop145;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop30;
                                                                                                                                                                                                                                                                                                                        §§goto(addr400);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop8;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr763);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr966);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr449:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr954);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop42;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop81;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr126:
                                                                                                                                                                                                                                                                                                if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr133);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                                                                      addr598:
                                                                                                                                                                                                                                                                                                      loop122:
                                                                                                                                                                                                                                                                                                      while(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                            addr766:
                                                                                                                                                                                                                                                                                                            while(_loc2_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc2_ || this)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                  continue loop84;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop4;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(!_loc3_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(" mScreenTopScroll: " + this.§0!X§);
                                                                                                                                                                                                                                                                                                                  addr717:
                                                                                                                                                                                                                                                                                                                  while(!_loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     while(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                                                                        break loop144;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc2_ || this)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                                                                           break loop122;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                        §§goto(addr720);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr720:
                                                                                                                                                                                                                                                                                                                     continue loop37;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr973);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop34;
                                                                                                                                                                                                                                                                                                            addr766:
                                                                                                                                                                                                                                                                                                            addr608:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop18;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                         addr914:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break loop164;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr598);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr126);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr597:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr766);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                   break loop126;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr698:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr411);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          addr780:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                                                                             addr781:
                                                                                                                                                                                                                                                                                             while(!_loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                   continue loop39;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop13;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop15;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr393);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                 §§goto(addr736);
                                                                                                                                                                                                                                                                                 §§goto(addr344);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr781);
                                                                                                                                                                                                                                                                              continue loop164;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(_loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc1_ = §§pop();
                                                                                                                                                                                                                                                                              loop119:
                                                                                                                                                                                                                                                                              while(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                                                                                                                 if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push("\n mDraggingPointCurrentX: " + this.§0!X§);
                                                                                                                                                                                                                                                                                       while(_loc2_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr587:
                                                                                                                                                                                                                                                                                          if(!(_loc2_ || this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr762);
                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                §§goto(addr587);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop36;
                                                                                                                                                                                                                                                                                             addr754:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(!_loc2_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop26;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr597);
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          §§goto(addr766);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr717);
                                                                                                                                                                                                                                                                                       addr585:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(" mCastleCameraScale: " + this.§0!X§);
                                                                                                                                                                                                                                                                                          addr851:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                             addr852:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                                                                break loop127;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr847:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr598);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc2_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc1_);
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc2_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop84;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr433);
                                                                                                                                                                                                                                                                                             addr368:
                                                                                                                                                                                                                                                                                             if(!(_loc2_ || _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr375);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr643);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop119;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(!_loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr847);
                                                                                                                                                                                                                                                                                    §§push(_loc1_);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr914);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop83;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr713);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr863);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop31;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr897);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr964);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop11;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr882);
                                                                                                                                                                                                                                                §§goto(addr656);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc1_ = §§pop();
                                                                                                                                                                                                                                             §§goto(addr673);
                                                                                                                                                                                                                                             §§goto(addr204);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr204:
                                                                                                                                                                                                                                          addr672:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr451);
                                                                                                                                                                                                                                    §§goto(addr966);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr424);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(!_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr837);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr310);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop9;
                                                                                                                                                                                                                              addr858:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr917);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop149;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc1_ = §§pop();
                                                                                                                                                                                                                     §§goto(addr886);
                                                                                                                                                                                                                     §§goto(addr296);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc2_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr672);
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                  §§goto(addr286);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr286:
                                                                                                                                                                                                               §§goto(addr852);
                                                                                                                                                                                                               if(!(_loc2_ || _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr91);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop125;
                                                                                                                                                                                                            if(!(_loc2_ || _loc1_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr32:
                                                                                                                                                                                                            if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr39);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr754);
                                                                                                                                                                                                                     §§push("\n mScreenLeftScroll: " + this.§0!X§);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                  §§goto(addr32);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr891);
                                                                                                                                                                                                               addr748:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr964);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop152;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop44;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr680);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr833);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr953);
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                                if(_loc3_ && _loc1_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc2_ || _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop12;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr249);
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr625);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(!_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr361);
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop7;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr851);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr585);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr449);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop24;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop33;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr771);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        _loc1_ = §§pop();
                                                                                                                                                                        §§goto(addr858);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc1_ = §§pop();
                                                                                                                                                                           §§goto(addr933);
                                                                                                                                                                        }
                                                                                                                                                                        addr932:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr954);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop25;
                                                                                                                                                               }
                                                                                                                                                               continue loop17;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr780);
                                                                                                                                                         }
                                                                                                                                                         while(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_ && _loc3_)
                                                                                                                                                            {
                                                                                                                                                               continue loop22;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr709);
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr720);
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
                                                                                                                              continue loop28;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop2;
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
                                                                        continue loop5;
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
               }
            }
         }
         §§goto(addr675);
      }
   }
}
