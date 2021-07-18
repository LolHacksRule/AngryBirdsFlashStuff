package §,!g§
{
   import §%!0§.§%";§;
   import §%!0§.§,4§;
   import §&!P§.§``§;
   import §,P§.§'_§;
   import §6]§.§,"0§;
   import §<i§.§'!e§;
   import §<i§.§+!S§;
   
   public class §"!P§
   {
      
      public static const §!!a§:Number = 1.25;
      
      public static const §@!f§:Number = 0.15;
      
      public static const SCREEN_WIDTH_B2:Number;
      
      public static const SCREEN_HEIGHT_B2:Number;
      
      public static const MANUAL_SCALE_STEP:Number = 0.1;
      
      public static const §,!u§:int = 1500;
      
      public static const §3!j§:int = 10;
      
      public static const §"l§:int = 15;
      
      public static const §?!y§:int = 300;
      
      public static const §'U§:int = 1000;
      
      public static const §]"?§:int = 10000;
      
      public static const §]!O§:int = 200.0;
      
      public static const §>&§:int = 0;
      
      public static const §8"'§:int = 1;
      
      public static const §'!_§:int = 2;
      
      public static const §-!"§:int = 3;
      
      public static const §9!g§:int = 4;
      
      public static const §3J§:int = 5;
      
      public static const CAMERA_ID_CASTLE:String = "CASTLE";
      
      public static const CAMERA_ID_SLINGSHOT:String = "SLINGSHOT";
      
      protected static var §&N§:Number;
      
      public static var §2'§:Number;
      
      public static var §0,§:Number;
      
      public static const §%!F§:Number = 2000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!!a§ = 1.25;
            loop0:
            while(true)
            {
               §@!f§ = 0.15;
               addr222:
               while(true)
               {
                  SCREEN_WIDTH_B2 = §'_§.§["3§ * §,4§.§,^§;
                  continue loop0;
               }
            }
         }
         §§goto(addr38);
      }
      
      private var §-9§:Number = 1.0;
      
      private var §5s§:Number = 0.2;
      
      protected var §2"#§:Number;
      
      protected var §1!H§:Number;
      
      protected var §3">§:Number;
      
      public var §`!G§:§,4§;
      
      public var §+!x§:Number;
      
      public var §"!Q§:Number;
      
      private var §0"<§:§'!O§;
      
      private var §?!w§:§'!O§;
      
      public var § !2§:Number;
      
      public var §@!j§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §,!"§:Number;
      
      public var §1"%§:Number;
      
      public var §7!v§:Number;
      
      public var §?"?§:Number;
      
      private var § !C§:Number;
      
      private var §!!8§:§+2§;
      
      private var §#c§:§+2§;
      
      protected var §3!4§:Number = 0;
      
      protected var §?!i§:Number = 0;
      
      protected var §^!,§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §=H§:Number = 0;
      
      public var §@!&§:Boolean = true;
      
      public var §%O§:Number = 0;
      
      public var §^!-§:Number = 0;
      
      public var §2!=§:Number = 0;
      
      public var §#!§:Number = 0;
      
      public var §3!1§:Number = 0;
      
      public var §7l§:Number = 0;
      
      public var §0!K§:Number = 0;
      
      public var §6s§:Number = 0;
      
      public var §;">§:Number = 0;
      
      private var §>l§:§+2§;
      
      public var §<x§:Number = 0;
      
      private var §?!+§:Number = 0;
      
      private var §<"8§:Number = 0;
      
      private var §9!"§:§+!S§ = null;
      
      private var §`!j§:§+!S§ = null;
      
      public function §"!P§(param1:§,4§, param2:§'!e§, param3:Number = 1.0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            this.§>l§ = new §+2§(0,0,1,false);
            while(true)
            {
               super();
               addr301:
               while(true)
               {
                  this.§1!H§ = 0;
                  addr297:
                  while(true)
                  {
                     this.§3">§ = 0;
                  }
               }
            }
            addr320:
         }
         while(true)
         {
            this.§`!G§ = param1;
            loop4:
            while(true)
            {
               §"!P§.§&N§ = 1;
               loop5:
               while(true)
               {
                  this.§-9§ = Math.max(1,Math.min(2,param3));
                  while(true)
                  {
                     this.§2"#§ = this.§-9§;
                     loop7:
                     while(!_loc5_)
                     {
                        this.§'!'§(param2);
                        loop8:
                        while(true)
                        {
                           §§push(Boolean(this.§0"<§));
                           if(!(_loc5_ && param3))
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    loop22:
                                    while(true)
                                    {
                                       §§push(Boolean(this.§?!w§));
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             continue loop4;
                                          }
                                          loop18:
                                          while(true)
                                          {
                                             this.mCurrentCameraSliderLocation = §]"?§;
                                             addr88:
                                             addr111:
                                             loop19:
                                             while(true)
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         this.§@!&§ = true;
                                                         loop20:
                                                         for(; !(_loc5_ && this); this.§=H§ = §]"?§ / 500,if(!(_loc5_ && param1))
                                                         {
                                                            continue loop19;
                                                         })
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue;
                                                            }
                                                            addr166:
                                                            while(true)
                                                            {
                                                               this.§1!H§ = this.§0"<§.x;
                                                               addr141:
                                                               while(!_loc5_)
                                                               {
                                                                  this.§3">§ = this.§0"<§.y;
                                                                  break loop20;
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr320);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               §§push(§§findproperty(§&N§));
                                                               §§push(this.§0"<§.scale);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(§§pop() * this.§2"#§);
                                                               }
                                                               §§pop().§&N§ = §§pop();
                                                               break loop19;
                                                            }
                                                            break;
                                                            §§goto(addr74);
                                                         }
                                                         addr74:
                                                         while(_loc4_ || param2)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§0"<§.y);
                                                            if(_loc4_ || param1)
                                                            {
                                                               §§push(§§pop() - this.§?!w§.y);
                                                            }
                                                            §§pop().§?!i§ = §§pop();
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               continue loop22;
                                                               addr48:
                                                               if(_loc4_ || this)
                                                               {
                                                                  break loop18;
                                                               }
                                                            }
                                                            continue loop5;
                                                            §§goto(addr127);
                                                         }
                                                         addr127:
                                                         continue loop4;
                                                         addr213:
                                                      }
                                                      continue loop7;
                                                   }
                                                   §§goto(addr141);
                                                }
                                                break;
                                                if(!(_loc4_ || param2))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr48);
                                             }
                                             addr238:
                                             while(!(_loc5_ && param3))
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop18;
                                                }
                                                §§goto(addr301);
                                                §§goto(addr88);
                                             }
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§0"<§.x);
                                                if(!(_loc5_ && param2))
                                                {
                                                   §§push(§§pop() - this.§?!w§.x);
                                                }
                                                §§pop().§3!4§ = §§pop();
                                                §§goto(addr213);
                                                §§goto(addr111);
                                             }
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                                 addr252:
                              }
                              §§goto(addr227);
                           }
                           §§goto(addr252);
                        }
                     }
                     §§goto(addr297);
                     if(_loc4_ || param1)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      private static function §&]§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§'_§.§=!c§);
         if(!_loc3_)
         {
            §§push(§§pop() / §'_§.§<e§);
            if(_loc2_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop() > 1)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     addr56:
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
         §§goto(addr56);
      }
      
      public static function get §#X§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§&N§);
         if(_loc1_)
         {
            return §§pop() * §&]§();
         }
      }
      
      public function get §<>§() : Number
      {
         return this.§2"#§;
      }
      
      public function set §<>§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2"#§ = param1;
         }
      }
      
      public function get §!`§() : Number
      {
         return this.§ !C§;
      }
      
      public function §+C§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(SCREEN_WIDTH_B2);
         if(_loc2_)
         {
            §§push(this.§1"%§);
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop() - this.§,!"§);
            }
            return §§pop() / §§pop();
         }
      }
      
      public function get §1!Q§() : Number
      {
         return this.§-9§;
      }
      
      public function get §,!l§() : Number
      {
         return this.§5s§;
      }
      
      public function §'!s§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2"#§ = param1;
         }
         while(true)
         {
            this.§"Z§();
            while(!(_loc2_ && _loc3_))
            {
               this.§]! §(this.mCurrentCameraSliderLocation,1);
               if(_loc3_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.mCurrentAction != §3J§)
            {
               loop0:
               while(true)
               {
                  this.goToCastleView();
                  loop1:
                  while(true)
                  {
                     this.§%O§ = 2000;
                     loop2:
                     while(true)
                     {
                        this.§=!L§();
                        while(true)
                        {
                           this.§9,§();
                           while(!(_loc2_ && _loc1_))
                           {
                              continue loop2;
                              this.§0h§();
                              if(_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       if(_loc1_)
                                       {
                                          return;
                                          addr54:
                                       }
                                       else
                                       {
                                          addr100:
                                       }
                                       return;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr100);
         }
         §§goto(addr54);
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.mCurrentCameraSliderLocation = 0;
         }
         loop0:
         while(true)
         {
            this.§1!H§ = this.§?!w§.x;
            loop1:
            while(true)
            {
               this.§3">§ = this.§?!w§.y;
               while(true)
               {
                  this.§@!&§ = false;
                  continue loop1;
                  addr67:
                  if(!(_loc3_ && _loc3_))
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function loadCameraBorders() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this);
            §§push(this.§?!w§.x);
            if(!_loc3_)
            {
               §§push(SCREEN_WIDTH_B2);
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop() / this.§?!w§.scale);
                  if(!_loc3_)
                  {
                     §§push(§§pop() / 2);
                  }
               }
               §§push(§§pop() - §§pop());
            }
            §§pop().§,!"§ = §§pop();
         }
         while(true)
         {
            §§push(this);
            §§push(this.§0"<§.x);
            if(_loc2_ || this)
            {
               §§push(SCREEN_WIDTH_B2);
               if(!_loc3_)
               {
                  §§push(§§pop() / this.§0"<§.scale);
                  if(_loc2_)
                  {
                     §§push(§§pop() / 2);
                  }
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().§1"%§ = §§pop();
            while(!_loc3_)
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§`!G§.borders.mBorderGround_B2);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(20 * §,4§.§[G§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() * §,4§.§,^§);
                     }
                     §§push(§§pop() - §§pop());
                  }
                  §§pop().§7!v§ = §§pop();
                  do
                  {
                     §§push(this);
                     §§push(this.§`!G§.borders.mBorderGround_B2);
                     if(!_loc3_)
                     {
                        §§push(§§pop() + 4);
                     }
                     §§pop().§?"?§ = §§pop();
                  }
                  while(_loc3_ && _loc1_);
                  
                  if(_loc3_)
                  {
                     break;
                  }
                  if(false)
                  {
                     continue;
                  }
                  §§push(SCREEN_WIDTH_B2);
                  if(!(_loc3_ && this))
                  {
                     §§push(this.§1"%§);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(§§pop() - this.§,!"§);
                     }
                     §§push(§§pop() / §§pop());
                     if(!_loc3_)
                     {
                        addr157:
                        §§push(Number(§§pop()));
                     }
                     var _loc1_:* = §§pop();
                     if(!(_loc3_ && this))
                     {
                        §§push(this);
                        §§push(this.§?"?§);
                        if(_loc2_)
                        {
                           §§push(SCREEN_HEIGHT_B2);
                           if(!_loc3_)
                           {
                              §§push(0.8);
                              if(_loc2_)
                              {
                                 §§goto(addr198);
                              }
                           }
                           §§goto(addr196);
                        }
                        §§goto(addr198);
                     }
                     addr198:
                     §§push(§§pop() * §§pop());
                     if(!(_loc3_ && this))
                     {
                        addr196:
                        §§push(§§pop() / _loc1_);
                     }
                     §§pop().§ !C§ = §§pop() - §§pop();
                     return;
                  }
                  §§goto(addr157);
               }
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§`!G§ = null;
         }
      }
      
      public function §'!'§(param1:§'!e§) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc3_:§+!S§ = null;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < param1.§+!L§)
         {
            _loc3_ = param1.§6!§(_loc2_);
            if(_loc14_)
            {
               §§push(_loc3_.id);
               if(!_loc15_)
               {
                  §§push(§§pop());
               }
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(§§pop().toUpperCase());
                        loop4:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(_loc3_.scale);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop().toString() == "");
                                 loop7:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   addr492:
                                                   §§push(_loc3_.scale);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().toString() == "null");
                                                      loop13:
                                                      while(_loc14_ || param1)
                                                      {
                                                         §§push(!§§pop());
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(!(_loc14_ || _loc3_))
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(_loc15_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            addr477:
                                                            if(_loc15_ && _loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc15_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr488:
                                                                  while(true)
                                                                  {
                                                                     this.§9!s§(_loc3_);
                                                                     addr491:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                                  addr488:
                                                               }
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_.left);
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop25:
                                                                     while(true)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        addr465:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.right);
                                                                           addr441:
                                                                           while(_loc14_ || this)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              continue loop12;
                                                                           }
                                                                           continue loop25;
                                                                        }
                                                                     }
                                                                     addr365:
                                                                     if(!(_loc15_ && this))
                                                                     {
                                                                        _loc13_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           if(_loc14_)
                                                                           {
                                                                              if(_loc15_ && _loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(_loc4_);
                                                                              loop53:
                                                                              while(_loc14_ || _loc2_)
                                                                              {
                                                                                 if(_loc14_ || param1)
                                                                                 {
                                                                                    §§push(CAMERA_ID_SLINGSHOT);
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() != §§pop())
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(!(_loc15_ && param1))
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          continue loop53;
                                                                                          continue loop53;
                                                                                       }
                                                                                       loop55:
                                                                                       while(_loc14_)
                                                                                       {
                                                                                          this.§?!w§ = new §'!O§(_loc9_,_loc10_,_loc13_,true);
                                                                                          loop56:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§#c§ = new §+2§(_loc9_,_loc10_,_loc13_,true);
                                                                                             loop57:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc15_ && this))
                                                                                                {
                                                                                                   if(_loc14_ || param1)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc2_++;
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            continue loop57;
                                                                                                         }
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc14_ || param1))
                                                                                                               {
                                                                                                                  continue loop56;
                                                                                                               }
                                                                                                               if(!(_loc15_ && _loc3_))
                                                                                                               {
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     continue loop55;
                                                                                                                  }
                                                                                                                  §§goto(addr69);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc14_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           this.§0"<§ = new §'!O§(_loc9_,_loc10_,_loc13_,false);
                                                                                                                           continue loop56;
                                                                                                                        }
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr152:
                                                                                                               }
                                                                                                               addr178:
                                                                                                               this.§!!8§ = new §+2§(_loc9_,_loc10_,_loc13_,false);
                                                                                                            }
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            if(!(_loc15_ && _loc2_))
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  addr69:
                                                                                                                  continue;
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            loop32:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_.bottom);
                                                                                                               while(!_loc15_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     break loop57;
                                                                                                                  }
                                                                                                                  loop40:
                                                                                                                  while(!(_loc15_ && this))
                                                                                                                  {
                                                                                                                     _loc10_ = §§pop();
                                                                                                                     while(!_loc15_)
                                                                                                                     {
                                                                                                                        §§push(SCREEN_HEIGHT_B2);
                                                                                                                        loop42:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc8_);
                                                                                                                           loop43:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              loop44:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 loop45:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    addr389:
                                                                                                                                    addr419:
                                                                                                                                    loop46:
                                                                                                                                    while(_loc14_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       loop47:
                                                                                                                                       while(!_loc15_)
                                                                                                                                       {
                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(SCREEN_WIDTH_B2);
                                                                                                                                             if(_loc14_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc14_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   if(_loc14_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                      if(_loc15_)
                                                                                                                                                      {
                                                                                                                                                         continue loop44;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      if(_loc14_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                         if(!(_loc15_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            addr260:
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               addr262:
                                                                                                                                                               if(_loc15_ && this)
                                                                                                                                                               {
                                                                                                                                                                  continue loop12;
                                                                                                                                                               }
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               if(_loc14_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        addr292:
                                                                                                                                                                        _loc12_ = §§pop();
                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           addr296:
                                                                                                                                                                           §§push(_loc11_);
                                                                                                                                                                           if(!(_loc15_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() < §§pop());
                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop55;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                    if(_loc14_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop6;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr353:
                                                                                                                                                                                    while(_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop50:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          addr356:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop42;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc14_ || _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop40;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr365);
                                                                                                                                                                                             continue loop50;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop24;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       if(_loc15_ && param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc14_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr355);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr404:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop40;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr404:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr327:
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop46;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr475:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr477);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          addr531:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc3_.scale);
                                                                                                                                                                                             break loop47;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr530:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop14;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop43;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop45;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop6;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr296);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc9_ = §§pop();
                                                                                                                                                                        addr421:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr404);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr420:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr327);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr428);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr296);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr292);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr296);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc7_ = §§pop();
                                                                                                                                                      continue loop32;
                                                                                                                                                   }
                                                                                                                                                   addr436:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr260);
                                                                                                                                          }
                                                                                                                                          continue loop6;
                                                                                                                                          if(_loc15_ && this)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§goto(addr319);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().toString() == "0");
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             §§push(!§§pop());
                                                                                                                                          }
                                                                                                                                          §§goto(addr475);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr420);
                                                                                                                                       §§goto(addr389);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop57;
                                                                                                                     }
                                                                                                                     §§goto(addr465);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr433:
                                                                                                               while(!_loc15_)
                                                                                                               {
                                                                                                                  §§goto(addr436);
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               §§goto(addr441);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr400);
                                                                                                         §§goto(addr421);
                                                                                                      }
                                                                                                      §§goto(addr488);
                                                                                                      addr52:
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr413);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr419);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc12_);
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             §§goto(addr312);
                                                                                          }
                                                                                          §§goto(addr327);
                                                                                       }
                                                                                       §§goto(addr404);
                                                                                       addr136:
                                                                                       §§push(CAMERA_ID_CASTLE);
                                                                                       if(_loc15_ && param1)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!(_loc14_ || _loc3_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop() != §§pop())
                                                                                       {
                                                                                          §,"0§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
                                                                                          §§goto(addr75);
                                                                                       }
                                                                                       §§goto(addr152);
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           addr457:
                                                                           while(!_loc15_)
                                                                           {
                                                                              §§goto(addr433);
                                                                              §§push(_loc3_.top);
                                                                           }
                                                                           §§goto(addr531);
                                                                           §§goto(addr433);
                                                                           if(_loc15_ && this)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc14_)
                                                                           {
                                                                              §§goto(addr52);
                                                                           }
                                                                           §§goto(addr488);
                                                                        }
                                                                        continue loop23;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop7;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc15_ && _loc2_)
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                §§goto(addr530);
                                             }
                                             §§goto(addr486);
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
            §§goto(addr465);
         }
      }
      
      public function writeCameraInformation(param1:§'!e§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:§+!S§ = new §+!S§();
         if(_loc8_)
         {
            _loc2_.id = CAMERA_ID_SLINGSHOT;
            loop0:
            while(true)
            {
               addr40:
               while(true)
               {
                  _loc2_.x = this.§?!w§.x;
                  continue loop0;
               }
            }
            addr50:
         }
         while(true)
         {
            _loc2_.y = this.§?!w§.y;
            if(!_loc8_)
            {
               continue;
            }
            if(!(_loc9_ && _loc3_))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr50);
            }
            §§goto(addr40);
         }
         §§push(SCREEN_WIDTH_B2);
         if(_loc8_ || _loc3_)
         {
            §§push(§§pop() / this.§?!w§.scale);
            if(!_loc9_)
            {
               addr65:
               §§push(§§pop() / 2);
               if(!(_loc9_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(SCREEN_HEIGHT_B2);
            if(!_loc9_)
            {
               §§push(§§pop() / this.§?!w§.scale);
               if(!_loc9_)
               {
                  addr85:
                  §§push(§§pop() / 2);
                  if(_loc8_)
                  {
                     addr89:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push(_loc2_);
                     §§push(this.§?!w§.x);
                     if(!(_loc9_ && _loc2_))
                     {
                        §§push(§§pop() - _loc3_);
                     }
                     §§pop().left = §§pop();
                  }
                  loop3:
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push(this.§?!w§.x);
                     if(!(_loc9_ && _loc3_))
                     {
                        §§push(§§pop() + _loc3_);
                     }
                     §§pop().right = §§pop();
                     loop4:
                     while(true)
                     {
                        addr126:
                        while(true)
                        {
                           §§push(_loc2_);
                           §§push(_loc2_.y);
                           if(_loc8_)
                           {
                              §§push(§§pop() - _loc4_);
                           }
                           §§pop().top = §§pop();
                           do
                           {
                              §§push(_loc2_);
                              §§push(_loc2_.y);
                              if(_loc8_)
                              {
                                 §§push(§§pop() + _loc4_);
                              }
                              §§pop().bottom = §§pop();
                           }
                           while(!(_loc8_ || this));
                           
                           if(!_loc9_)
                           {
                              continue loop3;
                           }
                           continue loop4;
                        }
                        continue loop3;
                     }
                  }
               }
               §§goto(addr89);
            }
            §§goto(addr85);
         }
         §§goto(addr65);
      }
      
      public function §9!s§(param1:§+!S§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1.scale);
         if(_loc8_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.x);
         if(_loc8_ || _loc2_)
         {
            §§push(§'_§.§["3§ * 0.5);
            if(!(_loc7_ && param1))
            {
               §§push(_loc2_);
               if(!_loc7_)
               {
                  addr62:
                  §§push(§§pop() / §§pop());
                  if(!(_loc7_ && param1))
                  {
                     §§push(§,4§.§,^§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc7_ && _loc3_))
                  {
                     addr71:
                     var _loc3_:Number = §§pop();
                     §§push(param1.y);
                     if(_loc8_)
                     {
                        §§push(§'_§.§7$§ * 0.5);
                        if(_loc8_ || _loc3_)
                        {
                           §§push(_loc2_);
                           if(!_loc7_)
                           {
                              addr96:
                              §§push(§§pop() / §§pop());
                              if(!_loc7_)
                              {
                                 §§push(§,4§.§,^§);
                              }
                              §§push(§§pop() - §§pop());
                              if(_loc8_ || param1)
                              {
                                 addr115:
                                 var _loc4_:Number = §§pop();
                                 §§push(_loc3_);
                                 if(_loc8_)
                                 {
                                    §§push(§'_§.§["3§ / _loc2_);
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(§§pop() * §,4§.§,^§);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc8_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc5_:* = §§pop();
                                 §§push(_loc4_);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    §§push(§'_§.§7$§ / _loc2_);
                                    if(_loc8_ || param1)
                                    {
                                       §§push(§§pop() * §,4§.§,^§);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc8_ || _loc3_)
                                    {
                                       addr168:
                                       §§push(Number(§§pop()));
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
                                             continue loop0;
                                             addr183:
                                             if(_loc8_ || param1)
                                             {
                                                return;
                                                addr190:
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       param1.bottom = _loc6_;
                                       §§goto(addr195);
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr168);
                              }
                              §§goto(addr115);
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr71);
               }
               §§push(§§pop() * §§pop());
            }
            §§goto(addr62);
         }
         §§goto(addr71);
      }
      
      protected function §0!G§(param1:§'!O§, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = Number(this.mCurrentCameraSliderLocation);
         if(_loc5_)
         {
            §§push(_loc3_);
            if(_loc5_ || param1)
            {
               §§push(param2);
               if(!_loc4_)
               {
                  §§push(§§pop() * this.§=H§);
               }
               §§push(§§pop() + §§pop());
            }
            loop0:
            while(true)
            {
               §§push(Number(§§pop()));
               loop1:
               while(true)
               {
                  _loc3_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(_loc3_);
                     loop3:
                     while(true)
                     {
                        §§push(§]"?§);
                        loop4:
                        while(§§pop() < §§pop())
                        {
                           §§push(_loc3_);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(0);
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              if(§§pop() <= §§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc4_ && param1)
                                    {
                                       break loop4;
                                    }
                                    if(_loc4_ && param2)
                                    {
                                       break;
                                    }
                                    §§push(0);
                                    if(!(_loc4_ && param1))
                                    {
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc5_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                             continue loop3;
                                          }
                                          addr137:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             while(true)
                                             {
                                                this.§8!;§(§>&§);
                                                loop7:
                                                while(_loc5_ || param2)
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      this.mCurrentCameraSliderLocation = _loc3_;
                                                      if(!_loc4_)
                                                      {
                                                         addr34:
                                                         if(_loc5_ || param1)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop5;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ || param1))
                                                            {
                                                               continue loop7;
                                                            }
                                                            this.§8!;§(§>&§);
                                                            §§goto(addr48);
                                                            §§goto(addr34);
                                                         }
                                                         continue loop7;
                                                      }
                                                      addr48:
                                                      while(true)
                                                      {
                                                         continue loop10;
                                                      }
                                                   }
                                                   return;
                                                }
                                             }
                                          }
                                       }
                                       addr96:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                       }
                                       addr110:
                                    }
                                    §§goto(addr111);
                                 }
                                 continue loop2;
                              }
                              §§goto(addr28);
                           }
                           §§goto(addr96);
                        }
                        while(true)
                        {
                           §§goto(addr137);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      protected function §`!u§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(this.mCurrentCameraSliderLocation);
         if(_loc5_ || _loc3_)
         {
            §§push(_loc2_);
            if(!(_loc6_ && param1))
            {
               §§push(param1);
               if(_loc5_)
               {
                  §§push(§§pop() * this.§=H§);
               }
               §§push(§§pop() + §§pop());
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
                  if(_loc5_)
                  {
                     _loc2_ = §§pop();
                     addr48:
                     §§push(0.7);
                     if(!(_loc6_ && this))
                     {
                        addr56:
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     §§push(-§]"?§);
                     if(_loc5_)
                     {
                        §§push(§§pop() * _loc3_);
                        if(_loc5_ || this)
                        {
                           addr71:
                           §§push(Number(§§pop()));
                        }
                        var _loc4_:* = §§pop();
                        if(_loc5_ || _loc3_)
                        {
                           §§push(_loc2_);
                           loop0:
                           while(true)
                           {
                              §§push(§§pop() >= §]"?§);
                              loop1:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§pop();
                                       addr213:
                                       loop15:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          loop7:
                                          while(!_loc6_)
                                          {
                                             §§push(_loc4_);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() < §§pop());
                                                if(_loc6_ && _loc3_)
                                                {
                                                   continue loop2;
                                                }
                                                if(!_loc5_)
                                                {
                                                   continue loop1;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop4:
                                                      while(true)
                                                      {
                                                         if(_loc6_ && _loc3_)
                                                         {
                                                            continue loop15;
                                                         }
                                                         §§push(_loc2_);
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            addr185:
                                                            loop6:
                                                            while(§§pop() >= §§pop())
                                                            {
                                                               §§push(Number(§]"?§));
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(_loc6_ && param1)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  _loc2_ = §§pop();
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§=H§);
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           §§push(-§§pop());
                                                                        }
                                                                        §§pop().§=H§ = §§pop();
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_ && _loc2_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.mCurrentCameraSliderLocation = _loc2_;
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr91:
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       break loop6;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 return;
                                                                                 addr85:
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  §§goto(addr206);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               §§goto(addr205);
                                                               §§goto(addr91);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr85);
                                                }
                                             }
                                             §§goto(addr185);
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                                 §§goto(addr174);
                              }
                           }
                        }
                        §§goto(addr213);
                     }
                     §§goto(addr71);
                  }
               }
            }
            §§goto(addr56);
         }
         §§goto(addr48);
      }
      
      protected function §!!w§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.mCurrentAction);
            loop0:
            while(true)
            {
               §§push(§3J§);
               addr166:
               addr167:
               while(§§pop() != §§pop())
               {
                  §§push(this.mCurrentAction);
                  continue loop0;
               }
               addr167:
               addr24:
               this.§`!u§(param1);
               addr24:
               return;
            }
         }
         §§goto(addr105);
      }
      
      public function updateCamera(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§9!"§)
            {
               this.§"Z§();
               loop0:
               while(true)
               {
                  this.§!!w§(param1);
                  loop1:
                  while(true)
                  {
                     this.§?!b§(this.mCurrentCameraSliderLocation,param1);
                     addr80:
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           this.§=!L§();
                           loop7:
                           while(_loc2_)
                           {
                              addr56:
                              if(_loc2_ || _loc2_)
                              {
                                 this.§9,§();
                                 while(true)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       if(!_loc3_)
                                       {
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    continue loop7;
                                 }
                                 continue loop1;
                              }
                              addr133:
                              while(true)
                              {
                                 this.§1!H§ = this.§9!"§.x;
                                 while(true)
                                 {
                                    this.§3">§ = this.§9!"§.y;
                                    addr117:
                                    while(_loc2_)
                                    {
                                       §§push(§§findproperty(§&N§));
                                       §§push(SCREEN_WIDTH_B2);
                                       if(_loc2_)
                                       {
                                          §§push(this.§9!"§.right);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() - this.§9!"§.left);
                                          }
                                          §§push(§§pop() / §§pop());
                                       }
                                       §§pop().§&N§ = §§pop();
                                       break loop7;
                                    }
                                 }
                                 §§goto(addr56);
                              }
                           }
                           while(_loc2_)
                           {
                              continue loop6;
                           }
                           §§goto(addr117);
                        }
                        return;
                     }
                  }
               }
            }
            §§goto(addr133);
         }
         §§goto(addr80);
      }
      
      private function §2"7§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Number = this.§#c§.scale + (this.§!!8§.scale - this.§#c§.scale) * param1;
         var _loc4_:Number = this.§#c§.x + (this.§!!8§.x - this.§#c§.x) * param1;
         var _loc5_:Number = this.§#c§.y + (this.§!!8§.y - this.§#c§.y) * param1;
         if(_loc6_)
         {
            §§push(this.§>l§);
            loop0:
            while(true)
            {
               §§push(this.§>l§);
               loop1:
               while(true)
               {
                  §§push(§§pop().x - (this.§>l§.x - _loc4_) * param2);
                  loop2:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(this.§>l§);
                        addr127:
                        loop4:
                        while(_loc6_)
                        {
                           §§push(this.§>l§);
                           while(!_loc7_)
                           {
                              §§push(§§pop().y - (this.§>l§.y - _loc5_) * param2);
                              while(true)
                              {
                                 §§pop().y = §§pop();
                                 addr143:
                                 while(!(_loc7_ && this))
                                 {
                                    continue loop4;
                                 }
                                 §§push(§§pop().scale - (this.§>l§.scale - _loc3_) * param2);
                                 addr92:
                                 continue loop3;
                                 if(!(_loc7_ && param2))
                                 {
                                    continue loop2;
                                 }
                              }
                              §§push(this.§>l§);
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              §§goto(addr92);
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§>l§);
            if(!(_loc7_ && param2))
            {
               §§goto(addr78);
            }
            §§goto(addr127);
         }
         §§goto(addr123);
      }
      
      protected function §]! §(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         if(_loc5_)
         {
            §§push(this.§3!4§);
            if(_loc5_ || param1)
            {
               §§push(0);
               loop0:
               while(§§pop() != §§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(!this.§@!&§)
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
                     while(true)
                     {
                        §§push(param1);
                        if(!_loc4_)
                        {
                           §§push(§]"?§);
                           if(_loc4_)
                           {
                              break;
                           }
                           §§push(§§pop() / §§pop());
                           if(!_loc4_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        if(!_loc4_)
                        {
                           _loc3_ = §§pop();
                           loop4:
                           while(true)
                           {
                              this.§2"7§(_loc3_,param2);
                              loop5:
                              while(!_loc4_)
                              {
                                 this.§1!H§ = this.§>l§.x;
                                 loop6:
                                 while(_loc5_ || param2)
                                 {
                                    this.§3">§ = this.§>l§.y;
                                    loop7:
                                    for(; _loc5_; while(true)
                                    {
                                       §&N§ = this.§>l§.scale;
                                       if(_loc5_ || this)
                                       {
                                          continue loop6;
                                       }
                                       continue loop7;
                                    })
                                    {
                                       if(!(_loc4_ && param2))
                                       {
                                          continue;
                                       }
                                       §§goto(addr136);
                                    }
                                    continue loop4;
                                    if(_loc5_ || this)
                                    {
                                       if(_loc5_)
                                       {
                                          break loop0;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 §§goto(addr139);
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr138);
                     }
                     continue loop0;
                  }
               }
               return;
            }
            §§goto(addr138);
         }
         §§goto(addr74);
      }
      
      public function §?!b§(param1:Number, param2:Number) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §`!_§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§?!+§ = param1;
            do
            {
               this.§<"8§ = param2;
            }
            while(_loc4_);
            
         }
      }
      
      private function §=a§(param1:§+2§, param2:§'!O§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = NaN;
         if(_loc5_)
         {
            §§push(param1);
            §§push(§@!f§);
            if(!_loc4_)
            {
               §§push(param2.scale);
               if(!(_loc4_ && param1))
               {
                  §§push(§@!f§);
                  if(_loc5_ || this)
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc4_ && param2))
                     {
                        §§push(this.§2"#§);
                        if(!_loc4_)
                        {
                           addr166:
                           addr188:
                           §§push(§§pop() * §§pop());
                           if(!(_loc4_ && param1))
                           {
                              addr186:
                              §§push(§§pop() * §"!P§.§&]§());
                           }
                           §§pop().scale = §§pop() + §§pop();
                           while(true)
                           {
                              §§push(SCREEN_WIDTH_B2);
                              if(_loc5_)
                              {
                                 §§push(§§pop() / param1.scale);
                                 if(_loc5_ || param1)
                                 {
                                    addr73:
                                    §§push(this.§1"%§);
                                    if(!(_loc5_ || param2))
                                    {
                                       break;
                                    }
                                    §§push(this.§,!"§);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc4_)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             continue;
                                          }
                                          §§push(false);
                                          if(_loc5_ || _loc3_)
                                          {
                                             return §§pop();
                                          }
                                       }
                                       else
                                       {
                                          addr122:
                                          §§push(§§pop() / §§pop());
                                          if(_loc5_ || param2)
                                          {
                                             addr131:
                                             _loc3_ = §§pop();
                                             do
                                             {
                                                param1.scale = _loc3_;
                                             }
                                             while(!_loc5_);
                                             
                                             §§push(true);
                                             addr132:
                                          }
                                          §§goto(addr131);
                                       }
                                       return §§pop();
                                    }
                                    addr121:
                                    §§push(§§pop() - §§pop());
                                    §§goto(addr122);
                                 }
                                 §§goto(addr131);
                              }
                              §§goto(addr73);
                           }
                           §§goto(addr121);
                           §§push(this.§,!"§);
                        }
                     }
                     §§goto(addr186);
                  }
                  §§goto(addr166);
               }
               §§goto(addr186);
            }
            §§goto(addr188);
         }
         §§goto(addr132);
      }
      
      private function §3Z§(param1:§+2§, param2:§'!O§) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(this.§=a§(param1,param2));
         if(!(_loc9_ && param1))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc9_ && param1))
         {
            param1.y = param2.y;
         }
         var _loc4_:Number = param1.y + SCREEN_HEIGHT_B2 * 0.5 / param1.scale;
         §§push(SCREEN_HEIGHT_B2);
         if(!(_loc9_ && this))
         {
            §§push(§§pop() * 0.25);
            if(!(_loc9_ && param1))
            {
               addr68:
               §§push(§§pop() / param1.scale);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(_loc8_ || param1)
            {
               §§push(_loc4_);
               if(_loc8_)
               {
                  §§push(_loc5_);
                  if(_loc8_ || param1)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!_loc9_)
                        {
                           param1.y += _loc5_ - _loc4_;
                           if(!_loc9_)
                           {
                              addr106:
                              param1.x = param2.x;
                           }
                           §§push(param1.x - SCREEN_WIDTH_B2 * 0.5 / param1.scale);
                           if(_loc8_)
                           {
                              addr132:
                              §§push(Number(§§pop()));
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr132);
                        }
                     }
                     §§goto(addr106);
                  }
                  var _loc6_:* = §§pop();
                  if(_loc8_ || this)
                  {
                     §§push(this.§,!"§);
                     if(_loc8_ || param2)
                     {
                        §§push(§§pop() < §§pop());
                        if(_loc8_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc9_ && param1))
                              {
                                 addr162:
                                 §§pop();
                                 if(_loc8_ || param1)
                                 {
                                    addr173:
                                    if(param1.§>"1§)
                                    {
                                       if(_loc8_)
                                       {
                                          addr176:
                                          param1.x += this.§,!"§ - _loc6_;
                                       }
                                    }
                                    var _loc7_:Number;
                                    §§push((_loc7_ = param1.x + SCREEN_WIDTH_B2 * 0.5 / param1.scale) > this.§1"%§);
                                    if(!(_loc9_ && param1))
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             §§pop();
                                             if(_loc8_)
                                             {
                                                §§push(!param1.§>"1§);
                                                if(_loc8_)
                                                {
                                                   addr219:
                                                   if(§§pop())
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         param1.x += this.§1"%§ - _loc7_;
                                                      }
                                                   }
                                                }
                                                §§goto(addr242);
                                             }
                                             addr242:
                                             return §§pop();
                                             §§push(_loc3_);
                                          }
                                          §§goto(addr242);
                                       }
                                       §§goto(addr219);
                                    }
                                    §§goto(addr242);
                                 }
                                 §§goto(addr176);
                              }
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr162);
                     }
                  }
                  §§goto(addr173);
               }
               §§goto(addr132);
            }
            §§goto(addr106);
         }
         §§goto(addr68);
      }
      
      private function §3",§(param1:§+2§, param2:§'!O§) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.scale - §@!f§);
         if(_loc3_ || param1)
         {
            §§push(§"!P§.§&]§());
            if(!(_loc4_ && param2))
            {
               §§push(param2.scale);
               if(!_loc4_)
               {
                  §§push(§§pop() - §@!f§);
               }
               §§push(§§pop() * §§pop());
            }
            return §§pop() / §§pop();
         }
      }
      
      protected function §"Z§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§3Z§(this.§#c§,this.§?!w§);
         }
         §§push(this.§3",§(this.§#c§,this.§?!w§));
         if(_loc3_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || _loc1_)
         {
            this.§3Z§(this.§!!8§,this.§0"<§);
         }
         §§push(this.§3",§(this.§!!8§,this.§0"<§));
         if(_loc3_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.§2"#§ = Math.min(_loc1_,_loc2_);
         }
      }
      
      public function §=!L§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = NaN;
         if(!_loc3_)
         {
            if(this.§`!G§.sprite)
            {
               if(_loc4_)
               {
                  §§push(§'_§.§6l§());
                  if(_loc4_ || _loc1_)
                  {
                     §§push(§§pop() / §'_§.§=!c§);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§'_§.§7$§);
                        if(!(_loc3_ && this))
                        {
                           addr61:
                           §§push(§§pop() - §§pop());
                           if(!_loc3_)
                           {
                              addr58:
                              §§push(1);
                           }
                           _loc1_ = §§pop();
                           if(!(_loc3_ && _loc1_))
                           {
                              addr69:
                              §§push(§§findproperty(§2'§));
                              §§push(this.§`!G§.sprite);
                              §§push(§,4§.§!,§);
                              if(!(_loc3_ && this))
                              {
                                 §§push(1 - §"!P§.§#X§);
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(§§pop() / 2);
                                    if(!_loc3_)
                                    {
                                       addr107:
                                       §§push(§§pop() * §§pop());
                                       §§push(§§pop() * §§pop());
                                    }
                                    var _loc2_:* = §§pop();
                                    §§pop().x = §§pop();
                                    §§pop().§2'§ = _loc2_;
                                    if(_loc4_ || _loc1_)
                                    {
                                       addr121:
                                       §§push(§§findproperty(§0,§));
                                       §§push(this.§`!G§.sprite);
                                       §§push(_loc1_);
                                       if(_loc4_)
                                       {
                                          §§push(§,4§.§[G§);
                                          if(_loc4_)
                                          {
                                             §§push(1 - §"!P§.§#X§);
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc3_)
                                                {
                                                   addr148:
                                                   §§push(§§pop() * §%";§.§7u§);
                                                   if(_loc4_ || this)
                                                   {
                                                   }
                                                   §§goto(addr168);
                                                }
                                                addr167:
                                                addr168:
                                                _loc2_ = §§pop();
                                                §§pop().y = §§pop();
                                                §§pop().§0,§ = _loc2_;
                                                return;
                                                §§push(§§pop() + §§pop());
                                                §§push(§§pop() + §§pop());
                                             }
                                          }
                                          §§goto(addr148);
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr148);
                                 }
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr61);
                        §§push(Number(§§pop() >> §§pop()));
                     }
                     §§goto(addr58);
                  }
                  §§goto(addr61);
               }
               §§goto(addr69);
            }
            §§goto(addr148);
         }
         §§goto(addr121);
      }
      
      public function §0h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§`!G§);
            loop0:
            while(true)
            {
               §§push(§§pop().sprite);
               loop1:
               while(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§`!G§);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop().sprite);
                        loop4:
                        while(true)
                        {
                           §§push(§#X§);
                           loop5:
                           while(true)
                           {
                              §§pop().scaleX = §§pop();
                              addr103:
                              while(true)
                              {
                                 §§push(this.§`!G§);
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop().sprite);
                                       if(_loc1_ || _loc1_)
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§push(§#X§);
                                             if(!_loc2_)
                                             {
                                                §§pop().scaleY = §§pop();
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      break;
                                                   }
                                                   continue loop2;
                                                }
                                                continue;
                                             }
                                             continue loop5;
                                          }
                                          continue loop1;
                                       }
                                       continue loop4;
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              break loop1;
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr103);
      }
      
      public function §9,§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§1!H§);
         if(!(_loc3_ && _loc1_))
         {
            §§push(§,4§.§,^§);
            if(_loc4_ || _loc1_)
            {
               §§push(§§pop() / §§pop());
               if(_loc4_)
               {
                  addr40:
                  §§push(§§pop() + this.§?!+§);
                  if(!_loc3_)
                  {
                     addr43:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc1_:* = §§pop();
               §§push(this.§3">§);
               if(_loc4_ || _loc1_)
               {
                  §§push(§,4§.§,^§);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc3_ && _loc1_))
                     {
                        addr73:
                        §§push(§§pop() + this.§<"8§);
                        if(_loc4_ || this)
                        {
                           addr81:
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(_loc4_)
                        {
                           §§push(this);
                           §§push(_loc1_);
                           if(_loc4_)
                           {
                              §§push(§,4§.§!,§);
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(§§pop() / 2);
                                 if(_loc4_)
                                 {
                                    addr334:
                                    §§push(§'_§.§=!c§);
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr359:
                                       §§push(§§pop() * §§pop());
                                       if(_loc4_)
                                       {
                                          §§push(§'_§.§0!J§);
                                       }
                                       §§pop().§ !2§ = §§pop() - §§pop();
                                       loop0:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(_loc2_);
                                          if(_loc4_ || this)
                                          {
                                             §§push(§,4§.§[G§);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() / 2);
                                                if(_loc4_)
                                                {
                                                   addr315:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc4_)
                                                   {
                                                      §§push(§%";§.§2!6§);
                                                   }
                                                   §§pop().§@!j§ = §§pop();
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(this.§`!G§);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().background);
                                                         if(_loc4_ || _loc1_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               addr280:
                                                               while(true)
                                                               {
                                                                  §§push(this.§`!G§);
                                                                  addr282:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().background);
                                                                     addr283:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§6"1§(this.§ !2§,this.§@!j§);
                                                                        addr288:
                                                                        while(!_loc3_)
                                                                        {
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                               }
                                                               addr280:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§`!G§);
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().objects);
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(this.§`!G§);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().objects);
                                                                              addr255:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§6"1§(this.§ !2§,this.§@!j§);
                                                                              }
                                                                           }
                                                                           addr254:
                                                                        }
                                                                        loop6:
                                                                        for(; !(_loc3_ && _loc2_); while(true)
                                                                        {
                                                                           if(_loc3_ && _loc2_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           if(_loc4_)
                                                                           {
                                                                              §§goto(addr242);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr280);
                                                                           }
                                                                        })
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§`!G§);
                                                                              loop8:
                                                                              for(; !_loc3_; while(true)
                                                                              {
                                                                                 if(_loc3_ && _loc3_)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 §§push(§§pop().slingshot);
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr90);
                                                                                 }
                                                                                 §§goto(addr188);
                                                                              },addr86:,return)
                                                                              {
                                                                                 §§push(§§pop().§?=§);
                                                                                 if(_loc4_ || _loc2_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop9:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§`!G§);
                                                                                          addr217:
                                                                                          while(_loc4_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§goto(addr282);
                                                                                          loop17:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§`!G§);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(§§pop().particles);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc4_ || _loc1_)
                                                                                                               {
                                                                                                                  addr115:
                                                                                                                  if(!(_loc4_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  if(_loc3_ && _loc2_)
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  addr131:
                                                                                                                  §§push(this.§`!G§);
                                                                                                                  if(_loc4_ || this)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        addr141:
                                                                                                                        §§pop().particles.§6"1§(this.§ !2§,this.§@!j§);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr254);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().slingshot);
                                                                                                                        addr188:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().§6"1§(this.§ !2§,this.§@!j§);
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                        §§goto(addr131);
                                                                                                                     }
                                                                                                                     addr187:
                                                                                                                  }
                                                                                                               }
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr86);
                                                                                                         }
                                                                                                         §§goto(addr141);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr217);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr131);
                                                                                                   continue loop17;
                                                                                                }
                                                                                                addr90:
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§`!G§);
                                                                                          continue loop8;
                                                                                          addr242:
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§6"1§(this.§ !2§,this.§@!j§,§#X§);
                                                                                       continue loop6;
                                                                                    }
                                                                                    addr227:
                                                                                 }
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                        §§goto(addr288);
                                                                     }
                                                                     §§goto(addr201);
                                                                  }
                                                                  §§goto(addr255);
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                         }
                                                         §§goto(addr283);
                                                      }
                                                   }
                                                }
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr315);
                                       }
                                    }
                                    §§push(§§pop() / §§pop());
                                 }
                                 §§goto(addr359);
                              }
                              §§goto(addr334);
                           }
                           §§goto(addr359);
                        }
                        §§goto(addr280);
                     }
                     §§goto(addr81);
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr40);
         }
         §§goto(addr43);
      }
      
      protected function §'2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§8!;§(§9!g§);
         }
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§;">§ = -1;
            if(_loc5_)
            {
               addr24:
               this.§'2§();
               if(!_loc4_)
               {
                  §§push(this);
                  §§push(this);
                  §§push(this.§2!=§ = param1);
                  if(_loc5_ || param2)
                  {
                     var _loc3_:*;
                     §§push(_loc3_ = §§pop());
                  }
                  §§pop().§0!K§ = §§pop();
                  §§pop().§3!1§ = _loc3_;
                  if(_loc5_ || this)
                  {
                     §§push(this);
                     §§push(this);
                     §§push(this.§#!§ = param2);
                     if(!_loc4_)
                     {
                        §§push(_loc3_ = §§pop());
                     }
                     §§pop().§6s§ = §§pop();
                     §§pop().§7l§ = _loc3_;
                     if(_loc4_ && this)
                     {
                     }
                     loop0:
                     while(true)
                     {
                        if(Math.abs(this.§!!8§.x - this.§#c§.x) > 0.001)
                        {
                           loop1:
                           while(!_loc4_)
                           {
                              §§push(this);
                              §§push(this.§1!H§);
                              if(!(_loc4_ && param2))
                              {
                                 §§push(§§pop() - this.§#c§.x);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() / (this.§!!8§.x - this.§#c§.x));
                                    if(!_loc5_)
                                    {
                                    }
                                    addr156:
                                    §§pop().mCurrentCameraSliderLocation = §§pop();
                                    while(true)
                                    {
                                       addr86:
                                       while(true)
                                       {
                                          this.mDragging = true;
                                          if(_loc4_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop1;
                                          }
                                          if(_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                break loop0;
                                             }
                                             addr234:
                                             loop5:
                                             while(true)
                                             {
                                                §§push(this.§>l§);
                                                while(true)
                                                {
                                                   §§push(this.§3">§);
                                                   addr209:
                                                   addr217:
                                                   while(true)
                                                   {
                                                      §§pop().y = §§pop();
                                                   }
                                                   §§push(this.§>l§);
                                                   if(_loc4_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc5_ || this)
                                                   {
                                                      §§push(§&N§);
                                                      if(!(_loc5_ || param1))
                                                      {
                                                         §§goto(addr209);
                                                      }
                                                      if(_loc4_ && _loc3_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§pop().scale = §§pop();
                                                      while(true)
                                                      {
                                                         this.§<x§ = §&N§;
                                                         break loop1;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§1!H§);
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§goto(addr217);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                }
                                                addr238:
                                             }
                                             §§goto(addr231);
                                             §§goto(addr209);
                                          }
                                          §§goto(addr202);
                                       }
                                    }
                                 }
                                 §§push(§§pop() * §]"?§);
                              }
                              §§goto(addr156);
                           }
                           continue;
                        }
                        §§goto(addr86);
                     }
                     return;
                     addr169:
                  }
                  this.§^!-§ = 0;
                  §§goto(addr238);
               }
               §§goto(addr234);
            }
            §§goto(addr169);
         }
         §§goto(addr24);
      }
      
      public function §#K§(param1:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = Number(this.mCurrentCameraSliderLocation);
         if(!(_loc4_ && param1))
         {
            §§push(this);
            §§push(this.§^!-§);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§^!-§ = §§pop();
         }
         §§push(this.§3!1§);
         if(!_loc4_)
         {
            §§push(§§pop() - this.§0!K§);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this.§3!4§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc5_ || _loc3_)
                     {
                        §§push(_loc2_);
                        loop2:
                        while(true)
                        {
                           §§push(_loc3_);
                           loop3:
                           while(true)
                           {
                              §§push(§,4§.§,^§);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_ || this)
                                 {
                                    §§push(§#X§);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§push(this.§3!4§);
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             loop17:
                                             while(!(_loc4_ && _loc2_))
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop4;
                                                }
                                                §§push(§§pop() * §§pop());
                                                loop18:
                                                while(!(_loc4_ && _loc3_))
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      continue loop0;
                                                   }
                                                   addr255:
                                                   loop19:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      loop20:
                                                      while(true)
                                                      {
                                                         this.§@!&§ = true;
                                                         loop21:
                                                         while(true)
                                                         {
                                                            loop23:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(!_loc4_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(§]"?§);
                                                                        if(_loc4_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§pop() - _loc2_);
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    addr143:
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       §§push(0.3);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop17;
                                                                                          §§goto(addr143);
                                                                                       }
                                                                                       addr219:
                                                                                    }
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       §§goto(addr178);
                                                                                    }
                                                                                    §§goto(addr181);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §]"?§);
                                                                                       break loop18;
                                                                                    }
                                                                                    addr307:
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop18;
                                                                           addr132:
                                                                        }
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           while(_loc5_ || _loc2_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 addr310:
                                                                                 addr178:
                                                                                 while(!_loc4_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       _loc2_ = §§pop();
                                                                                       addr182:
                                                                                       loop30:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             this.§@!&§ = true;
                                                                                             addr94:
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                             addr94:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr312:
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(!(_loc5_ || _loc2_))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(_loc2_);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      break loop30;
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                }
                                                                                                addr261:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   addr197:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      addr198:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() < §§pop())
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                this.§@!&§ = false;
                                                                                                §§goto(addr261);
                                                                                             }
                                                                                             addr312:
                                                                                          }
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    break loop23;
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop20;
                                                                           addr109:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.mCurrentCameraSliderLocation = _loc2_;
                                                                           continue loop21;
                                                                           §§goto(addr94);
                                                                        }
                                                                        §§goto(addr198);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr197);
                                                               }
                                                               §§goto(addr181);
                                                            }
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               §§goto(addr312);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr310);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr307);
                              }
                           }
                        }
                     }
                     §§goto(addr312);
                  }
                  §§goto(addr59);
               }
            }
         }
         §§goto(addr116);
      }
      
      protected function §<J§() : Boolean
      {
         return this.mCurrentAction == §9!g§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.mDragging)
            {
               if(!(_loc4_ && param1))
               {
                  this.§3!1§ = param1;
                  do
                  {
                     this.§7l§ = param2;
                  }
                  while(_loc4_);
                  
                  addr63:
               }
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         if(!_loc4_)
         {
            §§push(this.mCurrentAction);
            loop0:
            while(true)
            {
               §§push(§9!g§);
               loop1:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§8!;§(§>&§);
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           while(true)
                           {
                              §§push(0);
                              loop5:
                              while(true)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    addr385:
                                    while(true)
                                    {
                                       this.§3!1§ = param1;
                                       addr398:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr385:
                                 }
                                 while(true)
                                 {
                                    §§push(Number(Math.abs(this.§3!1§ - this.§2!=§)));
                                    loop7:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       loop8:
                                       while(!(_loc4_ && this))
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(this.§^!-§);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§,!u§);
                                             loop10:
                                             while(_loc5_ || param1)
                                             {
                                                §§push(§§pop() < §§pop());
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc4_ && this)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(§"l§);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * this.§^!-§);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(§§pop() / 1000);
                                                                              if(!(_loc5_ || _loc3_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           continue loop19;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              loop34:
                                                                              while(true)
                                                                              {
                                                                                 this.§8!;§(§8"'§);
                                                                                 loop35:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          addr310:
                                                                                          loop15:
                                                                                          while(_loc5_ || _loc3_)
                                                                                          {
                                                                                             §§push(§3!j§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() >= §§pop());
                                                                                                addr319:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc5_ || param1)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   addr359:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                }
                                                                                                continue loop11;
                                                                                                addr135:
                                                                                                if(!(_loc5_ || _loc3_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(!(_loc4_ && param1))
                                                                                                      {
                                                                                                         this.§>#§();
                                                                                                         loop39:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§=H§ = §]"?§ / (§]"?§ / 500);
                                                                                                            loop40:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  this.§@!&§ = true;
                                                                                                                  loop41:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc4_ && param1))
                                                                                                                     {
                                                                                                                        loop47:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.mDragging = false;
                                                                                                                           if(_loc5_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    continue loop41;
                                                                                                                                 }
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 loop44:
                                                                                                                                 while(_loc5_)
                                                                                                                                 {
                                                                                                                                    addr65:
                                                                                                                                    if(_loc5_ || param2)
                                                                                                                                    {
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop39;
                                                                                                                                       }
                                                                                                                                       continue loop40;
                                                                                                                                    }
                                                                                                                                    addr93:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             this.§=i§(0);
                                                                                                                                             break loop44;
                                                                                                                                          }
                                                                                                                                          continue loop35;
                                                                                                                                       }
                                                                                                                                       addr249:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr222:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this);
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() / this.§^!-§);
                                                                                                                                                if(_loc5_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * 10);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§pop().§=H§ = §§pop();
                                                                                                                                             addr240:
                                                                                                                                             while(_loc5_)
                                                                                                                                             {
                                                                                                                                                this.§@!&§ = false;
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.mCurrentCameraSliderLocation);
                                                                                                                                                   continue loop0;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr385);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr65);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§=H§ = §]"?§ / (§]"?§ / 500);
                                                                                                                                    §§goto(addr63);
                                                                                                                                 }
                                                                                                                                 addr63:
                                                                                                                              }
                                                                                                                              §§goto(addr240);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop47;
                                                                                                                                       }
                                                                                                                                       continue loop34;
                                                                                                                                    }
                                                                                                                                    loop28:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§@!&§ = true;
                                                                                                                                       loop29:
                                                                                                                                       while(_loc5_ || param1)
                                                                                                                                       {
                                                                                                                                          loop30:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.mCurrentCameraSliderLocation);
                                                                                                                                             if(_loc4_ && param1)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§push(§]"?§);
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   continue loop1;
                                                                                                                                                }
                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.§@!&§ = true;
                                                                                                                                                      addr176:
                                                                                                                                                      while(!(_loc4_ && this))
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      continue loop29;
                                                                                                                                                   }
                                                                                                                                                   addr173:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop47;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop28;
                                                                                                                                                   }
                                                                                                                                                   continue loop30;
                                                                                                                                                }
                                                                                                                                                addr205:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                       continue loop20;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr176);
                                                                                                                                 continue loop47;
                                                                                                                              }
                                                                                                                              addr48:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        return;
                                                                                                                        addr26:
                                                                                                                     }
                                                                                                                     addr286:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§3!1§);
                                                                                                                        addr288:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr173);
                                                                                                            }
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         addr156:
                                                                                                      }
                                                                                                      §§goto(addr221);
                                                                                                   }
                                                                                                   §§goto(addr156);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   this.§#K§(0);
                                                                                                }
                                                                                                §§goto(addr93);
                                                                                             }
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              this.§8!;§(§'!_§);
                                                                              §§goto(addr249);
                                                                           }
                                                                           §§goto(addr222);
                                                                           addr297:
                                                                        }
                                                                        addr255:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr288);
                                                                     }
                                                                     §§goto(addr310);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                         continue;
                                                         addr333:
                                                      }
                                                      §§goto(addr359);
                                                   }
                                                }
                                             }
                                             continue loop5;
                                          }
                                       }
                                       §§goto(addr398);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr26);
               }
            }
         }
         §§goto(addr385);
      }
      
      public function §>#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.mCurrentAction);
            loop0:
            while(true)
            {
               §§push(§8"'§);
               addr144:
               while(§§pop() != §§pop())
               {
                  §§push(this.mCurrentAction);
                  continue loop0;
               }
               addr145:
               addr148:
               this.§8!;§(§'!_§);
               return;
            }
         }
         §§goto(addr112);
      }
      
      public function §=i§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;">§ = param1;
            while(true)
            {
               if(this.mCurrentCameraSliderLocation >= §]"?§ / 2)
               {
                  this.§8!;§(§8"'§);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr20);
                  }
               }
               if(_loc2_)
               {
                  break;
               }
               if(_loc3_ || _loc3_)
               {
                  addr74:
                  this.§8!;§(§'!_§);
                  break;
               }
            }
            addr20:
            return;
         }
         §§goto(addr74);
      }
      
      public function goToBirdView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§8!;§(§'!_§);
         }
      }
      
      public function goToCastleView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§8!;§(§8"'§);
         }
      }
      
      public function §8!;§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§>l§);
            while(true)
            {
               §§push(this.§1!H§);
               while(true)
               {
                  §§pop().x = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this.§>l§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§3">§);
                        addr84:
                        while(true)
                        {
                           §§pop().y = §§pop();
                           addr85:
                           while(!(_loc2_ && this))
                           {
                              continue loop3;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.mCurrentCameraSliderLocation);
            loop0:
            while(true)
            {
               §§push(§]"?§);
               addr100:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
            }
            §§goto(addr76);
            §§push(true);
         }
         §§goto(addr102);
      }
      
      public function §@x§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.mCurrentCameraSliderLocation);
            loop0:
            while(§§pop() != 0)
            {
               while(true)
               {
                  §§push(this.mCurrentAction);
                  if(_loc2_ || _loc3_)
                  {
                     if(§§pop() != §'!_§)
                     {
                        break;
                     }
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr70);
                        }
                        break loop0;
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§push(false);
               if(_loc2_ || param1)
               {
                  if(_loc2_ || this)
                  {
                     return §§pop();
                  }
                  §§goto(addr89);
               }
               else
               {
                  §§goto(addr70);
               }
            }
            addr89:
            return §§pop();
            §§push(true);
         }
         addr70:
         return true;
      }
      
      public function §]",§(param1:§+!S§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§9!"§ = param1;
            loop0:
            while(true)
            {
               if(this.§9!"§ != null)
               {
                  if(_loc2_ || this)
                  {
                     this.§`!j§ = new §+!S§();
                  }
                  §§push(this.§`!j§);
                  while(true)
                  {
                     §§push(this.§1!H§);
                     addr133:
                     while(true)
                     {
                        §§pop().x = §§pop();
                     }
                  }
                  addr161:
                  addr131:
               }
               else
               {
                  this.§1!H§ = this.§`!j§.x;
                  loop1:
                  while(true)
                  {
                     this.§3">§ = this.§`!j§.y;
                     loop2:
                     while(true)
                     {
                        §&N§ = this.§`!j§.scale;
                        loop3:
                        while(true)
                        {
                           if(!(_loc2_ || _loc3_))
                           {
                              continue loop2;
                           }
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           if(_loc3_)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              if(_loc2_ || this)
                              {
                                 continue;
                              }
                              §§goto(addr161);
                           }
                           §§push(this.§`!j§);
                           while(true)
                           {
                              §§push(this.§3">§);
                              addr112:
                              while(!(_loc3_ && param1))
                              {
                                 §§pop().y = §§pop();
                                 break loop3;
                              }
                              addr127:
                              §§goto(addr133);
                              §§push(this.§`!j§);
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              if(!_loc3_)
                              {
                                 §§push(§&N§);
                                 if(!_loc3_)
                                 {
                                    §§pop().scale = §§pop();
                                    addr24:
                                    return;
                                    addr106:
                                 }
                                 §§goto(addr112);
                              }
                              else
                              {
                                 §§goto(addr131);
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
                  if(_loc3_ && param1)
                  {
                     §§goto(addr106);
                  }
                  §§goto(addr24);
               }
               §§goto(addr134);
            }
         }
         §§goto(addr24);
      }
      
      protected function §=!b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.isOnCastleView())
            {
               this.goToBirdView();
               if(!(_loc2_ && _loc1_))
               {
                  addr45:
               }
               else
               {
                  addr68:
               }
               return;
            }
            if(_loc1_ || this)
            {
               this.goToCastleView();
            }
            §§goto(addr68);
         }
         §§goto(addr45);
      }
      
      public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§2"#§);
         if(_loc4_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && param1))
         {
            if(!param1)
            {
               §§push(_loc3_);
               loop0:
               while(true)
               {
                  if(!_loc5_)
                  {
                     §§push(param2);
                     while(true)
                     {
                        if(_loc4_)
                        {
                           §§push(§§pop() - §§pop());
                           if(!(_loc5_ && _loc3_))
                           {
                              if(_loc4_ || param1)
                              {
                                 §§push(Number(§§pop()));
                                 loop3:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr146:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             addr162:
                                             while(true)
                                             {
                                                §§push(param2);
                                                addr163:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr164:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr165:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         addr166:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop13;
                                             }
                                          }
                                          addr161:
                                       }
                                       while(true)
                                       {
                                          §§push(Number(Math.max(this.§,!l§,Math.min(this.§1!Q§,_loc3_))));
                                          addr102:
                                          while(_loc4_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop3;
                                          §§goto(addr166);
                                       }
                                    }
                                 }
                                 addr145:
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr163);
                     }
                     addr127:
                  }
                  §§goto(addr164);
               }
            }
         }
         §§goto(addr161);
      }
      
      public function getZoomRatio() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§<>§);
         if(!_loc2_)
         {
            §§push(this.§,!l§);
            if(_loc1_)
            {
               §§push(§§pop() - §§pop());
               if(!_loc2_)
               {
                  addr37:
                  §§push(this.§1!Q§);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr56:
                     §§push(§§pop() - this.§,!l§);
                  }
                  return §§pop() / §§pop();
               }
            }
            §§goto(addr56);
         }
         §§goto(addr37);
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(Math.min(Math.max(param1,0),1) * (this.§1!Q§ - this.§,!l§));
            if(!_loc3_)
            {
               §§push(§§pop() + this.§,!l§);
            }
            §§pop().§<>§ = §§pop();
         }
      }
      
      public function §+"$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§2"#§ = Math.max(this.§2"#§ - 0.5,0.5);
         }
      }
      
      public function §+§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(!_loc3_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(" mManualScale: " + this.§2"#§);
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
                              §§push(" mXcenterB2: " + this.§1!H§);
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
                                             §§push(" mYcenterB2: " + this.§3">§);
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
                                                            §§push(" mXcenterB2target: " + this.§2"#§);
                                                            loop16:
                                                            while(_loc2_ || _loc2_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  while(true)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push("\n mYcenterB2target: " + this.§2"#§);
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
                                                                                    while(_loc2_)
                                                                                    {
                                                                                       §§push(_loc1_);
                                                                                       loop25:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(" mXcenterB2previous: " + this.§2"#§);
                                                                                          loop26:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc1_ = §§pop();
                                                                                                   loop29:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc1_);
                                                                                                      loop30:
                                                                                                      while(!_loc3_)
                                                                                                      {
                                                                                                         §§push(" mYcenterB2previous: " + this.§2"#§);
                                                                                                         loop31:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            loop32:
                                                                                                            while(true)
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
                                                                                                                        §§push(" mTimeNeededForCameraMovement: " + this.§2"#§);
                                                                                                                        loop36:
                                                                                                                        while(_loc2_ || _loc1_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           loop37:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              loop38:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                 loop39:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc1_);
                                                                                                                                    loop40:
                                                                                                                                    for(; _loc2_ || _loc2_; while(!(_loc3_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       §§goto(addr898);
                                                                                                                                       §§push(" mCastleCameraX: " + this.§2"#§);
                                                                                                                                    })
                                                                                                                                    {
                                                                                                                                       §§push(" mTimeUsedForCameraMovement: " + this.§2"#§);
                                                                                                                                       loop41:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          loop42:
                                                                                                                                          while(_loc2_ || this)
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
                                                                                                                                                   loop45:
                                                                                                                                                   while(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                      §§push("\n mTimeNeededForScaleMovement: " + this.§2"#§);
                                                                                                                                                      loop46:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         loop47:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            loop48:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                               loop49:
                                                                                                                                                               while(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop9;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                  loop50:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(" mTimeUsedForScaleMovement: " + this.§2"#§);
                                                                                                                                                                     loop51:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        loop52:
                                                                                                                                                                        while(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           loop53:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc1_ = §§pop();
                                                                                                                                                                              loop54:
                                                                                                                                                                              while(!_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                 loop55:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(" mTargetScale: " + this.§2"#§);
                                                                                                                                                                                    loop56:
                                                                                                                                                                                    while(_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       loop57:
                                                                                                                                                                                       while(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop7;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          loop58:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc1_ = §§pop();
                                                                                                                                                                                             loop59:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc1_);
                                                                                                                                                                                                loop60:
                                                                                                                                                                                                while(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(" mTargetScalePrevious: " + this.§2"#§);
                                                                                                                                                                                                   while(!_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc2_ || this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop6;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop1;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                         addr923:
                                                                                                                                                                                                         while(!(_loc3_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                                                                            while(!_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                                                                               continue loop40;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop49;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop33;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      loop110:
                                                                                                                                                                                                      while(!(_loc3_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         while(!(_loc3_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            loop112:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                                                                               loop113:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr671:
                                                                                                                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop50;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop60;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop116:
                                                                                                                                                                                                                     for(; !_loc3_; while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc2_ || _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop116;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr656);
                                                                                                                                                                                                                     },§§goto(addr854))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc1_ = §§pop();
                                                                                                                                                                                                                        loop117:
                                                                                                                                                                                                                        while(_loc2_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc1_);
                                                                                                                                                                                                                           loop118:
                                                                                                                                                                                                                           for(; _loc2_ || _loc2_; while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                                                                                                                    §§goto(addr572);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop118;
                                                                                                                                                                                                                              §§goto(addr30);
                                                                                                                                                                                                                           },§§goto(addr877))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push("\n mDraggingPointCurrentX: " + this.§2"#§);
                                                                                                                                                                                                                              loop119:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 addr641:
                                                                                                                                                                                                                                 while(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                    continue loop116;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop52;
                                                                                                                                                                                                                                 loop148:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc3_ && _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop119;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!_loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    loop149:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc3_ && _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                             loop150:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr339:
                                                                                                                                                                                                                                                      if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop58;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push("\n mScreenLeftScroll: " + this.§2"#§);
                                                                                                                                                                                                                                                         addr787:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                            addr788:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                               addr789:
                                                                                                                                                                                                                                                               addr900:
                                                                                                                                                                                                                                                               while(_loc2_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc1_ = §§pop();
                                                                                                                                                                                                                                                                  while(_loc2_ || this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                                                                                                                     if(_loc2_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(" mScreenTopScroll: " + this.§2"#§);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           addr774:
                                                                                                                                                                                                                                                                           addr863:
                                                                                                                                                                                                                                                                           while(_loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr863:
                                                                                                                                                                                                                                                                           while(_loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                 addr867:
                                                                                                                                                                                                                                                                                 while(_loc2_ || this)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc1_);
                                                                                                                                                                                                                                                                                    continue loop55;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop44;
                                                                                                                                                                                                                                                                                 §§goto(addr671);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop32;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr773:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(_loc3_ && _loc2_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc1_);
                                                                                                                                                                                                                                                                           continue loop20;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr867);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr832:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc1_);
                                                                                                                                                                                                                                                                           break loop116;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr832:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop54;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc1_ = §§pop();
                                                                                                                                                                                                                                                                  addr901:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                                                                                                                     addr877:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push("\n mCastleCameraY: " + this.§2"#§);
                                                                                                                                                                                                                                                                        addr881:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           addr882:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                              break loop113;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr339);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr783:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(_loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                                                                                                                         addr572:
                                                                                                                                                                                                                                                         loop132:
                                                                                                                                                                                                                                                         while(_loc2_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                                                                                                                            loop133:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc3_ && this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                     addr480:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(" mDraggingPointOriginalY: " + this.§2"#§);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           loop135:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                                                                 continue loop0;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              loop125:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                                                                             while(!_loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                loop127:
                                                                                                                                                                                                                                                                                                while(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc3_ && _loc1_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop29;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                                                                                                                                                                   while(!_loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(" mDraggingPointOriginalX: " + this.§2"#§);
                                                                                                                                                                                                                                                                                                      while(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         while(!_loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                            continue loop118;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop42;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         addr748:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                            break loop118;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   loop83:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                      loop84:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(" mBirdCameraY: " + this.§2"#§);
                                                                                                                                                                                                                                                                                                            addr825:
                                                                                                                                                                                                                                                                                                            addr146:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               addr826:
                                                                                                                                                                                                                                                                                                               while(_loc2_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop17;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                     §§goto(addr832);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop37;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(!(_loc2_ || this))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(_loc3_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop8;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr155:
                                                                                                                                                                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                            if(_loc2_ || this)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr167:
                                                                                                                                                                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr30:
                                                                                                                                                                                                                                                                                                                        if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           return §§pop();
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop118;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr132:
                                                                                                                                                                                                                                                                                                                     loop162:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop150;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        loop160:
                                                                                                                                                                                                                                                                                                                        for(; _loc2_; continue loop162)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                           loop161:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop162;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr46:
                                                                                                                                                                                                                                                                                                                                    if(!(_loc2_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop112;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(" mPigsAreOnRight: " + this.§2"#§);
                                                                                                                                                                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop148;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr61:
                                                                                                                                                                                                                                                                                                                                       if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr68:
                                                                                                                                                                                                                                                                                                                                          if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr75:
                                                                                                                                                                                                                                                                                                                                             if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr82:
                                                                                                                                                                                                                                                                                                                                                if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc3_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + "\n ");
                                                                                                                                                                                                                                                                                                                                                   continue loop148;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr427:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop31;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop110;
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr82);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop31;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr846:
                                                                                                                                                                                                                                                                                                                                             addr388:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr390:
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc2_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                   while(_loc2_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                         loop146:
                                                                                                                                                                                                                                                                                                                                                         for(; _loc2_; while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr258:
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop5;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               continue loop20;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            continue loop146;
                                                                                                                                                                                                                                                                                                                                                         },§§goto(addr923))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr300:
                                                                                                                                                                                                                                                                                                                                                                     if(_loc3_ && _loc2_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(" mCameraBorderRight: " + this.§2"#§);
                                                                                                                                                                                                                                                                                                                                                                        continue loop148;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     continue loop10;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop150;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr884:
                                                                                                                                                                                                                                                                                                                                                               addr884:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                                  addr854:
                                                                                                                                                                                                                                                                                                                                                                  while(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(" mCastleCameraScale: " + this.§2"#§);
                                                                                                                                                                                                                                                                                                                                                                     while(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr863);
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                        break loop125;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                        loop122:
                                                                                                                                                                                                                                                                                                                                                                        while(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                                                                    addr590:
                                                                                                                                                                                                                                                                                                                                                                                    addr806:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§push(" mDraggingPointCurrentY: " + this.§2"#§);
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                       continue loop125;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr695:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                       break loop149;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 while(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                       addr815:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                          addr816:
                                                                                                                                                                                                                                                                                                                                                                                          while(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr783);
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          continue loop24;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       break loop149;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 continue loop51;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              continue loop116;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           continue loop48;
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc2_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 continue loop122;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 continue loop117;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr514:
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr521);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 while(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                                                    while(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(" mDraggingPointPreviousX: " + this.§2"#§);
                                                                                                                                                                                                                                                                                                                                                                                       continue loop110;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr831);
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr514);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr931);
                                                                                                                                                                                                                                                                                                                                                                                 addr757:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr832);
                                                                                                                                                                                                                                                                                                                                                                              continue loop161;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr867);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        continue loop34;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop30;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr282:
                                                                                                                                                                                                                                                                                                                                                               if(_loc3_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue loop127;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop59;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        continue loop146;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     addr172:
                                                                                                                                                                                                                                                                                                                                                                     if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr179:
                                                                                                                                                                                                                                                                                                                                                                        if(_loc3_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                           addr190:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§push(" mCameraBorderGround: " + this.§2"#§);
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              continue loop41;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr860);
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr61);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        continue loop41;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     addr223:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           continue loop133;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§push(" mCameraBorderSky: " + this.§2"#§);
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc3_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    continue loop36;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                 loop154:
                                                                                                                                                                                                                                                                                                                                                                                 while(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                    continue loop146;
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                          continue loop160;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                       addr107:
                                                                                                                                                                                                                                                                                                                                                                                       continue loop154;
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop149;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    continue loop135;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr788);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr590);
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr788);
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr68);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr881);
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr172);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr582);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc3_ && _loc1_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        continue loop0;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                                           continue loop112;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr535);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr179);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr717);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr901);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            continue loop55;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop38;
                                                                                                                                                                                                                                                                                                                                                         addr408:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr826);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr774);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr551);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                addr847:
                                                                                                                                                                                                                                                                                                                                                while(_loc2_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                   continue loop83;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop57;
                                                                                                                                                                                                                                                                                                                                                §§goto(addr390);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr231);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr408);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§goto(addr190);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr815);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr170);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§goto(addr505);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr582);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr825);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr789);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop132;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr275:
                                                                                                                                                                                                                                                                                                               loop156:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc2_ || this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc3_ && _loc1_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr223);
                                                                                                                                                                                                                                                                                                                              §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr816);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop156;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop84;
                                                                                                                                                                                                                                                                                                                     addr356:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr282);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr901);
                                                                                                                                                                                                                                                                                                               §§goto(addr459);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr213);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr535:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop39;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop53;
                                                                                                                                                                                                                                                                                             addr609:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr922);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr847);
                                                                                                                                                                                                                                                                                    §§goto(addr850);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr641);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr900);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr882);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr787);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr773);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop21;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr609);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop13;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop15;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr747);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop40;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr559);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr398);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(_loc2_ || _loc1_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                       continue loop116;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr814);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop56;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop35;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop113;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr806);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr866);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc1_ = §§pop();
                                                                                                                                                                                                                  §§goto(addr884);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop2;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop26;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop45;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop47;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop46;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop4;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop12;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop14;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop43;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop22;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop23;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop25;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop19;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop11;
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
                              if(!(_loc2_ || this))
                              {
                                 continue;
                              }
                              _loc1_ = §§pop();
                              §§goto(addr275);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr884);
      }
   }
}
