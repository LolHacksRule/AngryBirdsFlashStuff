package §`a§
{
   import § !r§.§`![§;
   import §-!0§.§!!s§;
   import §-!0§.§2! §;
   import §<!<§.§7E§;
   import §<!<§.§8!t§;
   import §>!'§.§<!3§;
   import §?!-§.§'!V§;
   
   public class § !U§
   {
      
      public static const §0u§:Number = 1.25;
      
      public static const §-`§:Number = 0.15;
      
      public static const SCREEN_WIDTH_B2:Number;
      
      public static const SCREEN_HEIGHT_B2:Number;
      
      public static const MANUAL_SCALE_STEP:Number = 0.1;
      
      public static const §>3§:int = 1500;
      
      public static const §+k§:int = 10;
      
      public static const §!^§:int = 15;
      
      public static const §;!E§:int = 300;
      
      public static const §^,§:int = 1000;
      
      public static const §&n§:int = 10000;
      
      public static const § !g§:int = 200.0;
      
      public static const §`!F§:int = 0;
      
      public static const §+!<§:int = 1;
      
      public static const §#![§:int = 2;
      
      public static const §?!d§:int = 3;
      
      public static const set:int = 4;
      
      public static const §'!b§:int = 5;
      
      public static const CAMERA_ID_CASTLE:String = "CASTLE";
      
      public static const CAMERA_ID_SLINGSHOT:String = "SLINGSHOT";
      
      protected static var §?C§:Number;
      
      public static var §@B§:Number;
      
      public static var §'G§:Number;
      
      public static const §4?§:Number = 2000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && § !U§))
         {
            §0u§ = 1.25;
            §-`§ = 0.15;
            if(_loc2_)
            {
               SCREEN_WIDTH_B2 = §'!V§.§&d§ * §7E§.§8!'§;
               if(_loc2_ || _loc2_)
               {
                  SCREEN_HEIGHT_B2 = §'!V§.§6k§ * §7E§.§8!'§;
                  MANUAL_SCALE_STEP = 0.1;
                  §>3§ = 1500;
                  if(_loc2_ || _loc1_)
                  {
                     addr66:
                     §+k§ = 10;
                     §!^§ = 15;
                     §;!E§ = 300;
                     if(!(_loc1_ && _loc1_))
                     {
                        §^,§ = 1000;
                        if(_loc2_)
                        {
                           §&n§ = 10000;
                           if(_loc2_ || _loc2_)
                           {
                              § !g§ = §&n§ / 50;
                              if(!(_loc1_ && _loc1_))
                              {
                                 §`!F§ = 0;
                                 if(_loc1_ && _loc1_)
                                 {
                                 }
                                 addr134:
                                 §#![§ = 2;
                                 if(_loc2_ || § !U§)
                                 {
                                    §?!d§ = 3;
                                    set = 4;
                                    §§goto(addr147);
                                 }
                                 §§goto(addr172);
                              }
                              §+!<§ = 1;
                              if(_loc2_)
                              {
                                 §§goto(addr134);
                              }
                              §§goto(addr172);
                           }
                           addr147:
                           if(!_loc1_)
                           {
                              addr162:
                              §'!b§ = 5;
                              if(!(_loc1_ && _loc2_))
                              {
                                 addr172:
                                 CAMERA_ID_CASTLE = "CASTLE";
                                 if(_loc2_ || _loc1_)
                                 {
                                    CAMERA_ID_SLINGSHOT = "SLINGSHOT";
                                    addr185:
                                    §4?§ = 2000;
                                 }
                              }
                              §§goto(addr188);
                           }
                           addr188:
                           return;
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr185);
               }
               §§goto(addr66);
            }
            §§goto(addr134);
         }
         §§goto(addr172);
      }
      
      private var §&!i§:Number = 1.0;
      
      private var §;!`§:Number = 0.2;
      
      protected var §"Y§:Number;
      
      protected var §^T§:Number;
      
      protected var §<9§:Number;
      
      public var §-n§:§7E§;
      
      public var §3!p§:Number;
      
      public var §4!d§:Number;
      
      private var §+!R§:§9!2§;
      
      private var §0!!§:§9!2§;
      
      public var §-!=§:Number;
      
      public var §-!j§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §%S§:Number;
      
      public var §7O§:Number;
      
      public var §1%§:Number;
      
      public var §;![§:Number;
      
      private var §6!3§:Number;
      
      private var §=!7§:§&W§;
      
      private var §-9§:§&W§;
      
      protected var §2!d§:Number = 0;
      
      protected var §+!a§:Number = 0;
      
      protected var §#!3§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §1l§:Number = 0;
      
      public var §5u§:Boolean = true;
      
      public var §'!W§:Number = 0;
      
      public var §?3§:Number = 0;
      
      public var §2!c§:Number = 0;
      
      public var §5c§:Number = 0;
      
      public var §0!G§:Number = 0;
      
      public var §2!,§:Number = 0;
      
      public var §[!r§:Number = 0;
      
      public var §%#§:Number = 0;
      
      public var §[!0§:Number = 0;
      
      private var §&!g§:§&W§;
      
      public var §`!P§:Number = 0;
      
      private var §,!A§:Number = 0;
      
      private var §<!;§:Number = 0;
      
      private var §,M§:§!!s§ = null;
      
      private var §1!,§:§!!s§ = null;
      
      public function § !U§(param1:§7E§, param2:§2! §, param3:Number = 1.0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§&!g§ = new §&W§(0,0,1,false);
            if(_loc5_)
            {
               super();
               if(!_loc4_)
               {
                  this.§^T§ = 0;
                  this.§<9§ = 0;
                  this.§-n§ = param1;
                  if(_loc5_ || param2)
                  {
                     § !U§.§?C§ = 1;
                     this.§&!i§ = Math.max(1,Math.min(2,param3));
                     if(!_loc4_)
                     {
                        this.§"Y§ = this.§&!i§;
                        this.§!!+§(param2);
                        addr75:
                        §§push(Boolean(this.§+!R§));
                        if(!(_loc4_ && param3))
                        {
                           if(§§pop())
                           {
                              if(!(_loc4_ && param3))
                              {
                                 addr104:
                                 §§pop();
                                 §§push(Boolean(this.§0!!§));
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc5_)
                              {
                                 this.loadCameraBorders();
                                 §§push(this);
                                 §§push(this.§+!R§.x);
                                 if(!(_loc4_ && param3))
                                 {
                                    §§push(§§pop() - this.§0!!§.x);
                                 }
                                 §§pop().§2!d§ = §§pop();
                                 §§push(this);
                                 §§push(this.§+!R§.y);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() - this.§0!!§.y);
                                 }
                                 §§pop().§+!a§ = §§pop();
                                 §§push(this);
                                 §§push(this.§+!R§.scale);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() - this.§0!!§.scale);
                                 }
                                 §§pop().§#!3§ = §§pop();
                                 this.§^T§ = this.§+!R§.x;
                                 if(_loc5_)
                                 {
                                    this.§<9§ = this.§+!R§.y;
                                    if(_loc5_)
                                    {
                                       addr175:
                                       §§push(§§findproperty(§?C§));
                                       §§push(this.§+!R§.scale);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() * this.§"Y§);
                                       }
                                       §§pop().§?C§ = §§pop();
                                       addr185:
                                       this.mCurrentCameraSliderLocation = §&n§;
                                    }
                                    §§goto(addr185);
                                 }
                                 this.§5u§ = true;
                                 if(!(_loc4_ && param1))
                                 {
                                    addr198:
                                    this.§1l§ = §&n§ / 500;
                                    §§goto(addr203);
                                 }
                                 addr203:
                                 return;
                              }
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr104);
                     }
                  }
                  §§goto(addr175);
               }
            }
            §§goto(addr198);
         }
         §§goto(addr75);
      }
      
      private static function §;!"§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§'!V§.§9r§);
         if(!(_loc2_ && _loc1_))
         {
            §§push(§§pop() / §'!V§.§'A§);
            if(_loc3_ || § !U§)
            {
               addr56:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            if(_loc3_ || _loc2_)
            {
               §§push(_loc1_);
               if(!_loc2_)
               {
                  if(§§pop() > 1)
                  {
                     if(!_loc2_)
                     {
                        §§push(1);
                        if(!_loc2_)
                        {
                           §§goto(addr80);
                        }
                     }
                     else
                     {
                        addr81:
                        §§push(1);
                     }
                     return §§pop();
                  }
                  §§goto(addr81);
               }
               addr80:
               return §§pop() / Math.pow(_loc1_,0.7);
            }
            §§goto(addr81);
         }
         §§goto(addr56);
      }
      
      public static function get §#!-§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§?C§);
         if(!(_loc1_ && _loc2_))
         {
            §§push(§§pop() * §;!"§());
         }
         return §§pop();
      }
      
      public function get §[!+§() : Number
      {
         return this.§"Y§;
      }
      
      public function set §[!+§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"Y§ = param1;
         }
      }
      
      public function get §>!M§() : Number
      {
         return this.§6!3§;
      }
      
      public function §@&§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(SCREEN_WIDTH_B2);
         if(_loc1_)
         {
            §§push(this.§7O§);
            if(!_loc2_)
            {
               §§push(§§pop() - this.§%S§);
            }
            §§push(§§pop() / §§pop());
         }
         return §§pop();
      }
      
      public function get §9! §() : Number
      {
         return this.§&!i§;
      }
      
      public function get §<_§() : Number
      {
         return this.§;!`§;
      }
      
      public function §<l§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"Y§ = param1;
            if(!(_loc3_ && param1))
            {
               this.updateCameraLocations();
               if(!(_loc3_ && _loc3_))
               {
                  addr47:
                  this.updateCameraSliderNoBird(this.mCurrentCameraSliderLocation,1);
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(this.mCurrentAction == §'!b§)
         {
            return;
         }
         this.goToCastleView();
         if(_loc1_)
         {
            this.§'!W§ = 2000;
            if(_loc1_ || this)
            {
               this.§0!=§();
               addr49:
               this.§7!d§();
            }
            this.§!J§();
            return;
         }
         §§goto(addr49);
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mCurrentCameraSliderLocation = 0;
         }
         this.§^T§ = this.§0!!§.x;
         if(!_loc3_)
         {
            this.§<9§ = this.§0!!§.y;
            if(_loc2_)
            {
               addr55:
               this.§5u§ = false;
               if(!(_loc3_ && _loc3_))
               {
                  §§push(this);
                  §§push(§&n§ / 160000);
                  if(!_loc3_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§pop().§1l§ = §§pop();
                  if(!_loc3_)
                  {
                     this.§'!6§(§'!b§);
                  }
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function loadCameraBorders() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this);
            §§push(this.§0!!§.x);
            if(_loc2_)
            {
               §§push(SCREEN_WIDTH_B2);
               if(_loc2_)
               {
                  §§push(§§pop() / this.§0!!§.scale);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() / 2);
                  }
               }
               §§push(§§pop() - §§pop());
            }
            §§pop().§%S§ = §§pop();
            if(_loc2_)
            {
               §§push(this);
               §§push(this.§+!R§.x);
               if(_loc2_ || _loc2_)
               {
                  §§push(SCREEN_WIDTH_B2);
                  if(!_loc3_)
                  {
                     addr72:
                     §§push(§§pop() / this.§+!R§.scale);
                     if(!_loc3_)
                     {
                        addr69:
                        §§push(§§pop() / 2);
                     }
                     §§pop().§7O§ = §§pop() + §§pop();
                     if(_loc2_ || this)
                     {
                        addr80:
                        §§push(this);
                        §§push(this.§-n§.borders.mBorderGround_B2);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(20 * §7E§.§5H§);
                           if(_loc2_)
                           {
                              §§push(§§pop() * §7E§.§8!'§);
                           }
                           §§push(§§pop() - §§pop());
                        }
                        §§pop().§1%§ = §§pop();
                        if(_loc2_ || this)
                        {
                           §§push(this);
                           §§push(this.§-n§.borders.mBorderGround_B2);
                           if(!(_loc3_ && _loc1_))
                           {
                              §§push(§§pop() + 4);
                           }
                           §§pop().§;![§ = §§pop();
                           addr135:
                           §§push(SCREEN_WIDTH_B2);
                           if(_loc2_ || this)
                           {
                              §§push(this.§7O§);
                              if(_loc2_)
                              {
                                 §§push(§§pop() - this.§%S§);
                              }
                              §§push(§§pop() / §§pop());
                              if(_loc2_)
                              {
                                 addr153:
                                 §§push(Number(§§pop()));
                              }
                              var _loc1_:* = §§pop();
                              if(!_loc3_)
                              {
                                 §§push(this);
                                 §§push(this.§;![§);
                                 if(!_loc3_)
                                 {
                                    §§push(SCREEN_HEIGHT_B2);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§push(0.8);
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          §§goto(addr193);
                                       }
                                       §§push(§§pop() / §§pop());
                                    }
                                    addr193:
                                    §§goto(addr194);
                                 }
                                 addr194:
                                 §§push(§§pop() * §§pop());
                                 if(_loc2_)
                                 {
                                    §§push(_loc1_);
                                 }
                                 §§pop().§6!3§ = §§pop() - §§pop();
                                 return;
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr153);
                        }
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr69);
               }
               §§goto(addr72);
            }
            §§goto(addr135);
         }
         §§goto(addr80);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§-n§ = null;
         }
      }
      
      public function §!!+§(param1:§2! §) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc3_:§!!s§ = null;
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§"T§)
         {
            _loc3_ = param1.getCamera(_loc2_);
            if(!(_loc14_ && _loc3_))
            {
               §§push(_loc3_.id);
               if(!(_loc14_ && this))
               {
                  §§push(§§pop());
                  if(!_loc14_)
                  {
                     §§push(§§pop());
                     if(!_loc14_)
                     {
                        _loc4_ = §§pop();
                        if(_loc15_)
                        {
                           §§push(§§pop().toUpperCase());
                           if(!(_loc14_ && _loc3_))
                           {
                              addr84:
                              _loc4_ = §§pop();
                              if(!_loc14_)
                              {
                                 §§push(_loc3_.scale);
                                 if(_loc15_ || _loc3_)
                                 {
                                    §§push(§§pop().toString() == "");
                                    if(_loc15_)
                                    {
                                       §§push(!§§pop());
                                       §§push(!§§pop());
                                       if(!(_loc14_ && _loc2_))
                                       {
                                          if(§§pop())
                                          {
                                             §§pop();
                                             if(!(_loc14_ && this))
                                             {
                                                §§push(_loc3_.scale);
                                                if(_loc15_)
                                                {
                                                   addr126:
                                                   §§push(§§pop().toString() != "null");
                                                   if(_loc15_ || _loc2_)
                                                   {
                                                      addr134:
                                                      addr135:
                                                      if(§§pop() && _loc3_.scale.toString() != "0")
                                                      {
                                                         this.§8p§(_loc3_);
                                                      }
                                                      _loc5_ = _loc3_.left;
                                                      if(_loc14_)
                                                      {
                                                         continue;
                                                      }
                                                      _loc6_ = _loc3_.right;
                                                      if(!(_loc14_ && this))
                                                      {
                                                         §§push(Number(_loc3_.top));
                                                         if(!(_loc14_ && this))
                                                         {
                                                            _loc7_ = §§pop();
                                                            if(!_loc14_)
                                                            {
                                                               _loc8_ = _loc3_.bottom;
                                                               if(!(_loc14_ && param1))
                                                               {
                                                                  §§push(Number(_loc3_.x));
                                                                  if(!_loc14_)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     if(_loc15_ || _loc3_)
                                                                     {
                                                                        _loc10_ = _loc3_.y;
                                                                        if(!(_loc14_ && param1))
                                                                        {
                                                                           addr222:
                                                                           §§push(SCREEN_HEIGHT_B2);
                                                                           §§push(_loc8_);
                                                                           if(_loc15_)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(_loc15_ || param1)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          _loc11_ = §§pop();
                                                                                          §§push(SCREEN_WIDTH_B2);
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                addr251:
                                                                                                §§push(§§pop() - _loc5_);
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   addr254:
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      addr258:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         _loc12_ = §§pop();
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            addr265:
                                                                                                            if(§§pop() < _loc11_)
                                                                                                            {
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  addr269:
                                                                                                                  §§push(_loc12_);
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     addr278:
                                                                                                                     _loc13_ = Number(§§pop());
                                                                                                                     if(!(_loc14_ && this))
                                                                                                                     {
                                                                                                                        addr287:
                                                                                                                        §§push(_loc4_);
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           addr290:
                                                                                                                           §§push(CAMERA_ID_SLINGSHOT);
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              addr293:
                                                                                                                              if(§§pop() == §§pop())
                                                                                                                              {
                                                                                                                                 addr294:
                                                                                                                                 this.§0!!§ = new §9!2§(_loc9_,_loc10_,_loc13_,true);
                                                                                                                                 if(_loc15_ || this)
                                                                                                                                 {
                                                                                                                                    this.§-9§ = new §&W§(_loc9_,_loc10_,_loc13_,true);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr320:
                                                                                                                                 if(_loc4_ == CAMERA_ID_CASTLE)
                                                                                                                                 {
                                                                                                                                    this.§+!R§ = new §9!2§(_loc9_,_loc10_,_loc13_,false);
                                                                                                                                    addr339:
                                                                                                                                    this.§=!7§ = new §&W§(_loc9_,_loc10_,_loc13_,false);
                                                                                                                                    if(_loc14_ && param1)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    addr354:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §`![§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              _loc2_++;
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr320);
                                                                                                                     }
                                                                                                                     §§goto(addr294);
                                                                                                                  }
                                                                                                                  §§goto(addr278);
                                                                                                               }
                                                                                                               §§goto(addr287);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr278);
                                                                                                               §§push(_loc11_);
                                                                                                            }
                                                                                                            §§goto(addr278);
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            addr275:
                                                                                                         }
                                                                                                         §§goto(addr278);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr278);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr265);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr278);
                                                                                 }
                                                                                 §§goto(addr254);
                                                                              }
                                                                              §§goto(addr251);
                                                                           }
                                                                           §§goto(addr254);
                                                                        }
                                                                        §§goto(addr339);
                                                                     }
                                                                     §§goto(addr269);
                                                                  }
                                                                  §§goto(addr258);
                                                               }
                                                               §§goto(addr287);
                                                            }
                                                            §§goto(addr222);
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      §§goto(addr354);
                                                   }
                                                   §§goto(addr136);
                                                }
                                                §§goto(addr258);
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr134);
                                       }
                                       §§goto(addr135);
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr278);
                              }
                              §§goto(addr294);
                           }
                           §§goto(addr290);
                        }
                        §§goto(addr320);
                     }
                     §§goto(addr293);
                  }
                  §§goto(addr84);
               }
               §§goto(addr290);
            }
            §§goto(addr136);
         }
      }
      
      public function writeCameraInformation(param1:§2! §) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§!!s§ = new §!!s§();
         if(_loc9_ || _loc2_)
         {
            _loc2_.id = CAMERA_ID_SLINGSHOT;
            if(!(_loc8_ && _loc2_))
            {
               addr38:
               _loc2_.x = this.§0!!§.x;
               if(_loc9_ || _loc3_)
               {
                  addr50:
                  _loc2_.y = this.§0!!§.y;
               }
               §§push(SCREEN_WIDTH_B2);
               if(!(_loc8_ && this))
               {
                  §§push(§§pop() / this.§0!!§.scale);
                  if(_loc9_)
                  {
                     addr69:
                     §§push(§§pop() / 2);
                     if(_loc9_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc3_:* = §§pop();
                  §§push(SCREEN_HEIGHT_B2);
                  if(!_loc8_)
                  {
                     §§push(§§pop() / this.§0!!§.scale);
                     if(!_loc8_)
                     {
                        §§push(§§pop() / 2);
                        if(_loc9_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  var _loc4_:* = §§pop();
                  if(_loc9_)
                  {
                     §§push(_loc2_);
                     §§push(this.§0!!§.x);
                     if(!(_loc8_ && _loc2_))
                     {
                        §§push(§§pop() - _loc3_);
                     }
                     §§pop().left = §§pop();
                     if(_loc9_)
                     {
                        §§push(_loc2_);
                        §§push(this.§0!!§.x);
                        if(!(_loc8_ && param1))
                        {
                           §§push(§§pop() + _loc3_);
                        }
                        §§pop().right = §§pop();
                        if(!(_loc8_ && _loc3_))
                        {
                           §§push(_loc2_);
                           §§push(_loc2_.y);
                           if(_loc9_ || _loc2_)
                           {
                              §§push(§§pop() - _loc4_);
                           }
                           §§pop().top = §§pop();
                           if(!(_loc8_ && _loc2_))
                           {
                              §§push(_loc2_);
                              §§push(_loc2_.y);
                              if(!(_loc8_ && this))
                              {
                                 §§push(§§pop() + _loc4_);
                              }
                              §§pop().bottom = §§pop();
                           }
                        }
                     }
                  }
                  var _loc5_:§!!s§;
                  (_loc5_ = new §!!s§()).id = CAMERA_ID_CASTLE;
                  if(!(_loc8_ && param1))
                  {
                     _loc5_.x = this.§+!R§.x;
                     if(_loc9_)
                     {
                        addr193:
                        _loc5_.y = this.§+!R§.y;
                     }
                     §§push(SCREEN_WIDTH_B2);
                     if(_loc9_ || this)
                     {
                        §§push(§§pop() / this.§+!R§.scale);
                        if(!_loc8_)
                        {
                           §§push(§§pop() / 2);
                           if(!_loc8_)
                           {
                              addr216:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           §§push(SCREEN_HEIGHT_B2);
                           if(_loc9_ || _loc2_)
                           {
                              §§push(§§pop() / this.§+!R§.scale);
                              if(!_loc8_)
                              {
                                 addr232:
                                 §§push(§§pop() / 2);
                                 if(_loc9_ || param1)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc7_:* = §§pop();
                              if(_loc9_)
                              {
                                 §§push(_loc5_);
                                 §§push(this.§+!R§.x);
                                 if(_loc9_ || param1)
                                 {
                                    §§push(§§pop() - _loc6_);
                                 }
                                 §§pop().left = §§pop();
                                 §§push(_loc5_);
                                 §§push(this.§+!R§.x);
                                 if(_loc9_ || _loc3_)
                                 {
                                    §§push(§§pop() + _loc6_);
                                 }
                                 §§pop().right = §§pop();
                                 §§push(_loc5_);
                                 §§push(_loc5_.y);
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    §§push(§§pop() - _loc7_);
                                 }
                                 §§pop().top = §§pop();
                                 if(!(_loc8_ && param1))
                                 {
                                    §§push(_loc5_);
                                    §§push(_loc5_.y);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() + _loc7_);
                                    }
                                    §§pop().bottom = §§pop();
                                    addr311:
                                    param1.§7!q§();
                                 }
                                 param1.§,!j§(_loc2_);
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    param1.§,!j§(_loc5_);
                                 }
                                 return;
                              }
                              §§goto(addr311);
                           }
                           §§goto(addr232);
                        }
                     }
                     §§goto(addr216);
                  }
                  §§goto(addr193);
               }
               §§goto(addr69);
            }
            §§goto(addr50);
         }
         §§goto(addr38);
      }
      
      public function §8p§(param1:§!!s§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1.scale);
         if(_loc7_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.x);
         if(_loc7_ || param1)
         {
            §§push(§'!V§.§&d§ * 0.5);
            if(_loc7_ || param1)
            {
               §§push(_loc2_);
               if(_loc7_ || param1)
               {
                  addr66:
                  §§push(§§pop() / §§pop());
                  if(_loc7_ || _loc2_)
                  {
                     §§push(§7E§.§8!'§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc8_ && _loc2_))
                  {
                     addr75:
                     var _loc3_:Number = §§pop();
                     §§push(param1.y);
                     if(!_loc8_)
                     {
                        §§push(§'!V§.§6k§ * 0.5);
                        if(!(_loc8_ && _loc3_))
                        {
                           §§push(_loc2_);
                           if(!_loc8_)
                           {
                              §§push(§§pop() / §§pop());
                              if(_loc7_)
                              {
                                 addr109:
                                 §§push(§§pop() * §7E§.§8!'§);
                              }
                              §§push(§§pop() - §§pop());
                              if(!(_loc8_ && this))
                              {
                                 addr119:
                                 var _loc4_:Number = §§pop();
                                 §§push(_loc3_);
                                 if(!_loc8_)
                                 {
                                    §§push(§'!V§.§&d§ / _loc2_);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() * §7E§.§8!'§);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc8_ && this))
                                    {
                                       addr140:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc5_:* = §§pop();
                                    §§push(_loc4_);
                                    if(_loc7_)
                                    {
                                       §§push(§'!V§.§6k§ / _loc2_);
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          §§push(§§pop() * §7E§.§8!'§);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc8_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc6_:* = §§pop();
                                    if(_loc7_)
                                    {
                                       param1.left = _loc3_;
                                       if(_loc7_ || _loc2_)
                                       {
                                          addr186:
                                          param1.top = _loc4_;
                                          if(_loc7_ || param1)
                                          {
                                             param1.right = _loc5_;
                                             if(_loc8_ && _loc2_)
                                             {
                                             }
                                             §§goto(addr214);
                                          }
                                          param1.bottom = _loc6_;
                                          if(_loc7_)
                                          {
                                             param1.scale = 0;
                                          }
                                       }
                                       addr214:
                                       return;
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr119);
                           }
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr75);
               }
               §§push(§§pop() * §§pop());
            }
            §§goto(addr66);
         }
         §§goto(addr75);
      }
      
      protected function moveCameraTowardsTarget(param1:§9!2§, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = Number(this.mCurrentCameraSliderLocation);
         if(_loc5_ || this)
         {
            §§push(_loc3_);
            §§push(param2);
            if(!_loc4_)
            {
               §§push(§§pop() * this.§1l§);
            }
            §§push(Number(§§pop() + §§pop()));
            if(!_loc4_)
            {
               _loc3_ = §§pop();
               §§push(_loc3_);
               if(!(_loc4_ && param2))
               {
                  §§push(§&n§);
                  if(!_loc4_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        §§push(Number(§&n§));
                        if(!(_loc4_ && param2))
                        {
                           _loc3_ = §§pop();
                           this.§'!6§(§`!F§);
                           if(!(_loc4_ && param2))
                           {
                              addr111:
                              this.mCurrentCameraSliderLocation = _loc3_;
                           }
                        }
                        §§goto(addr114);
                     }
                     else
                     {
                        §§push(_loc3_);
                        if(!(_loc4_ && param1))
                        {
                           addr102:
                           if(§§pop() <= 0)
                           {
                              §§goto(addr105);
                           }
                           §§goto(addr111);
                        }
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr102);
               }
               addr105:
               _loc3_ = Number(0);
               if(!_loc4_)
               {
                  this.§'!6§(§`!F§);
               }
               addr114:
               return;
            }
            §§goto(addr102);
         }
         §§goto(addr111);
      }
      
      private function §0O§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = Number(this.mCurrentCameraSliderLocation);
         if(_loc6_)
         {
            §§push(_loc2_);
            if(_loc6_ || _loc2_)
            {
               §§push(param1);
               if(!_loc5_)
               {
                  §§push(§§pop() * this.§1l§);
               }
               §§push(§§pop() + §§pop());
               if(!(_loc5_ && _loc3_))
               {
                  §§push(Number(§§pop()));
                  if(!(_loc5_ && _loc3_))
                  {
                     _loc2_ = §§pop();
                     addr54:
                     §§push(0.7);
                     if(_loc6_ || this)
                     {
                     }
                     addr63:
                     var _loc3_:* = §§pop();
                     §§push(-§&n§);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(§§pop() * _loc3_);
                        if(_loc6_ || _loc2_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc4_:* = §§pop();
                     §§push(_loc2_);
                     if(!(_loc5_ && param1))
                     {
                        §§push(§§pop() >= §&n§);
                        if(_loc6_)
                        {
                           if(!§§pop())
                           {
                              if(_loc6_)
                              {
                                 §§goto(addr110);
                              }
                           }
                           §§goto(addr125);
                        }
                        addr110:
                        §§pop();
                        if(!(_loc5_ && param1))
                        {
                           §§push(_loc2_);
                           if(_loc6_)
                           {
                              §§push(_loc4_);
                              if(!_loc5_)
                              {
                                 addr125:
                                 if(§§pop() < §§pop())
                                 {
                                    §§push(_loc2_);
                                    if(_loc6_)
                                    {
                                       addr130:
                                       if(§§pop() < _loc4_)
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             §§goto(addr138);
                                          }
                                          §§goto(addr171);
                                       }
                                       else
                                       {
                                          §§push(Number(§&n§));
                                       }
                                    }
                                    §§goto(addr170);
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr130);
                           }
                           §§goto(addr141);
                        }
                        addr138:
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           addr141:
                           §§push(Number(§§pop()));
                           if(!(_loc5_ && _loc2_))
                           {
                              §§goto(addr159);
                           }
                           else
                           {
                              addr170:
                              _loc2_ = §§pop();
                           }
                           §§goto(addr171);
                        }
                        addr159:
                        _loc2_ = §§pop();
                        if(_loc6_ || this)
                        {
                           addr171:
                           §§push(this);
                           §§push(this.§1l§);
                           if(!_loc5_)
                           {
                              §§push(-§§pop());
                           }
                           §§pop().§1l§ = §§pop();
                           this.mCurrentCameraSliderLocation = _loc2_;
                        }
                        return;
                     }
                     §§goto(addr130);
                  }
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr63);
         }
         §§goto(addr54);
      }
      
      protected function updateCameraActions(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.mCurrentAction);
            if(!(_loc3_ && this))
            {
               §§push(§'!b§);
               if(!_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     this.§0O§(param1);
                  }
                  else
                  {
                     §§push(this.mCurrentAction);
                     if(_loc2_)
                     {
                        addr39:
                        §§push(§+!<§);
                        if(!(_loc3_ && param1))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc3_ && param1))
                              {
                                 this.moveCameraTowardsTarget(this.§+!R§,param1);
                              }
                              else
                              {
                                 addr101:
                              }
                              §§goto(addr150);
                           }
                           else
                           {
                              §§push(this.mCurrentAction);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(§#![§);
                                 if(_loc2_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          §§push(this);
                                          §§push(this.§0!!§);
                                          §§push(param1);
                                          if(_loc2_)
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().moveCameraTowardsTarget(§§pop(),§§pop());
                                          if(_loc2_)
                                          {
                                             §§goto(addr101);
                                          }
                                       }
                                       else
                                       {
                                          addr140:
                                       }
                                       §§goto(addr150);
                                    }
                                    else
                                    {
                                       §§push(this.mCurrentAction);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(§?!d§);
                                          if(_loc2_ || param1)
                                          {
                                             addr129:
                                             if(§§pop() == §§pop())
                                             {
                                                this.§5u§ = true;
                                                if(_loc2_ || _loc3_)
                                                {
                                                   §§goto(addr140);
                                                }
                                                else
                                                {
                                                   addr147:
                                                   this.§ §(param1);
                                                   §§goto(addr150);
                                                }
                                             }
                                             else
                                             {
                                                addr143:
                                                §§push(this.mCurrentAction);
                                                §§push(set);
                                             }
                                             §§goto(addr150);
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                §§goto(addr147);
                                             }
                                          }
                                          §§goto(addr150);
                                       }
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr129);
                              }
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr143);
                  }
                  addr150:
                  return;
               }
               §§goto(addr129);
            }
            §§goto(addr39);
         }
         §§goto(addr140);
      }
      
      public function updateCamera(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§,M§)
            {
               this.§^T§ = this.§,M§.x;
               if(!_loc3_)
               {
                  this.§<9§ = this.§,M§.y;
                  §§push(§§findproperty(§?C§));
                  §§push(SCREEN_WIDTH_B2);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this.§,M§.right);
                     if(!_loc3_)
                     {
                        §§push(§§pop() - this.§,M§.left);
                     }
                     §§push(§§pop() / §§pop());
                  }
                  §§pop().§?C§ = §§pop();
                  addr105:
                  this.§0!=§();
                  if(_loc2_ || _loc2_)
                  {
                     this.§7!d§();
                     addr116:
                     this.§!J§();
                  }
                  §§goto(addr116);
                  addr68:
               }
               §§goto(addr118);
            }
            else
            {
               this.updateCameraLocations();
               if(!(_loc3_ && _loc3_))
               {
                  this.updateCameraActions(param1);
                  if(_loc2_ || _loc3_)
                  {
                     this.§>!m§(this.mCurrentCameraSliderLocation,param1);
                     if(!_loc3_)
                     {
                        §§goto(addr105);
                     }
                     addr118:
                     return;
                  }
               }
            }
            §§goto(addr116);
         }
         §§goto(addr68);
      }
      
      private function §^!r§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Number = this.§-9§.scale + (this.§=!7§.scale - this.§-9§.scale) * param1;
         var _loc4_:Number = this.§-9§.x + (this.§=!7§.x - this.§-9§.x) * param1;
         var _loc5_:Number = this.§-9§.y + (this.§=!7§.y - this.§-9§.y) * param1;
         if(_loc7_)
         {
            §§push(this.§&!g§);
            if(_loc7_ || param2)
            {
               §§push(this.§&!g§);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop().x - (this.§&!g§.x - _loc4_) * param2);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§pop().x = §§pop();
                     if(!(_loc6_ && this))
                     {
                        §§push(this.§&!g§);
                        if(_loc7_ || param1)
                        {
                           addr125:
                           §§push(this.§&!g§);
                           if(!_loc6_)
                           {
                              §§push(§§pop().y - (this.§&!g§.y - _loc5_) * param2);
                              if(!(_loc6_ && param2))
                              {
                                 §§pop().y = §§pop();
                                 if(_loc7_ || this)
                                 {
                                    addr176:
                                    this.§&!g§.scale -= (this.§&!g§.scale - _loc3_) * param2;
                                 }
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr176);
            }
            §§goto(addr125);
         }
         §§goto(addr176);
      }
      
      protected function updateCameraSliderNoBird(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         §§push(this.§2!d§);
         if(_loc4_ || _loc3_)
         {
            §§push(0);
            if(_loc4_)
            {
               if(§§pop() != §§pop())
               {
                  if(!_loc5_)
                  {
                     if(!this.§5u§)
                     {
                        if(!(_loc5_ && param2))
                        {
                           §§push(Number(1));
                           if(!(_loc5_ && param1))
                           {
                              §§goto(addr62);
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr84);
                     }
                  }
                  §§goto(addr65);
               }
               §§goto(addr83);
            }
            §§goto(addr79);
         }
         addr62:
         param2 = §§pop();
         if(!_loc5_)
         {
            addr65:
            §§push(param1);
            if(!_loc5_)
            {
               addr79:
               §§push(§§pop() / §&n§);
               if(_loc5_)
               {
               }
               addr83:
               _loc3_ = §§pop();
               addr84:
               this.§^!r§(_loc3_,param2);
               this.§^T§ = this.§&!g§.x;
               if(_loc4_)
               {
                  this.§<9§ = this.§&!g§.y;
               }
               §?C§ = this.§&!g§.scale;
               §§goto(addr105);
            }
            §§push(Number(§§pop()));
         }
         addr105:
      }
      
      public function §>!m§(param1:Number, param2:Number) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1118
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §%![§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§,!A§ = param1;
            if(!_loc4_)
            {
               addr23:
               this.§<!;§ = param2;
            }
            return;
         }
         §§goto(addr23);
      }
      
      private function §7z§(param1:§&W§, param2:§9!2§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         if(_loc5_)
         {
            §§push(param1);
            §§push(§-`§);
            if(_loc5_)
            {
               §§push(param2.scale);
               if(_loc5_ || param2)
               {
                  §§push(§-`§);
                  if(_loc5_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc4_ && _loc3_))
                     {
                        addr45:
                        §§push(this.§"Y§);
                        if(_loc5_)
                        {
                           addr61:
                           §§push(§§pop() * §§pop());
                           if(_loc5_ || param2)
                           {
                              addr59:
                              §§push(§§pop() * § !U§.§;!"§());
                           }
                           §§pop().scale = §§pop() + §§pop();
                           if(!(_loc4_ && param1))
                           {
                              addr69:
                              §§push(SCREEN_WIDTH_B2);
                              if(_loc5_ || param1)
                              {
                                 §§push(§§pop() / param1.scale);
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(this.§7O§);
                                    if(!(_loc4_ && this))
                                    {
                                       §§push(this.§%S§);
                                       if(_loc5_ || this)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc5_ || param2)
                                          {
                                             addr123:
                                             if(§§pop() > §§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(SCREEN_WIDTH_B2);
                                                   if(_loc5_)
                                                   {
                                                      addr129:
                                                      §§push(this.§7O§);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         addr138:
                                                         §§push(§§pop() - this.§%S§);
                                                      }
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc5_ || param2)
                                                      {
                                                         addr159:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc3_ = §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         param1.scale = _loc3_;
                                                         if(!_loc4_)
                                                         {
                                                            addr168:
                                                            §§push(true);
                                                            if(_loc5_ || this)
                                                            {
                                                               return §§pop();
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr177:
                                                            §§push(false);
                                                         }
                                                         return §§pop();
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§goto(addr168);
                                             }
                                             §§goto(addr177);
                                          }
                                       }
                                       §§goto(addr138);
                                    }
                                    §§goto(addr123);
                                 }
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr177);
                        }
                     }
                  }
                  §§goto(addr59);
               }
               §§goto(addr45);
            }
            §§goto(addr61);
         }
         §§goto(addr69);
      }
      
      private function §=j§(param1:§&W§, param2:§9!2§) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(this.§7z§(param1,param2));
         if(!(_loc8_ && this))
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
         if(!_loc8_)
         {
            §§push(§§pop() * 0.25);
            if(_loc9_ || param2)
            {
               addr59:
               §§push(§§pop() / param1.scale);
               if(!(_loc8_ && this))
               {
                  addr69:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!(_loc8_ && this))
               {
                  §§push(_loc4_);
                  if(!_loc8_)
                  {
                     §§push(_loc5_);
                     if(_loc9_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc9_ || _loc3_)
                           {
                              param1.y += _loc5_ - _loc4_;
                              if(_loc8_)
                              {
                              }
                              addr106:
                              §§push(param1.x - SCREEN_WIDTH_B2 * 0.5 / param1.scale);
                              if(!_loc8_)
                              {
                                 addr127:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:*;
                              §§push(_loc6_ = §§pop());
                              if(!_loc8_)
                              {
                                 §§push(this.§%S§);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(!_loc8_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc9_ || this)
                                          {
                                             addr148:
                                             §§pop();
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                addr159:
                                                if(param1.§3!a§)
                                                {
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      param1.x += this.§%S§ - _loc6_;
                                                   }
                                                }
                                             }
                                             var _loc7_:Number;
                                             §§push((_loc7_ = param1.x + SCREEN_WIDTH_B2 * 0.5 / param1.scale) > this.§7O§);
                                             if(!(_loc8_ && param2))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      addr207:
                                                      §§pop();
                                                      if(_loc9_ || param2)
                                                      {
                                                         §§push(!param1.§3!a§);
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            addr235:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  addr243:
                                                                  param1.x += this.§7O§ - _loc7_;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr253);
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                   addr253:
                                                   return _loc3_;
                                                }
                                                §§goto(addr235);
                                             }
                                             §§goto(addr207);
                                          }
                                       }
                                       §§goto(addr159);
                                    }
                                 }
                              }
                              §§goto(addr148);
                           }
                        }
                        param1.x = param2.x;
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr127);
               }
               §§goto(addr106);
            }
            §§goto(addr69);
         }
         §§goto(addr59);
      }
      
      private function §>Z§(param1:§&W§, param2:§9!2§) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.scale - §-`§);
         if(!_loc4_)
         {
            §§push(§ !U§.§;!"§());
            if(_loc3_)
            {
               §§push(param2.scale);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() - §-`§);
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() / §§pop());
         }
         return §§pop();
      }
      
      protected function updateCameraLocations() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§=j§(this.§-9§,this.§0!!§);
         }
         §§push(this.§>Z§(this.§-9§,this.§0!!§));
         if(_loc3_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc4_)
         {
            this.§=j§(this.§=!7§,this.§+!R§);
         }
         §§push(this.§>Z§(this.§=!7§,this.§+!R§));
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc1_))
         {
            this.§"Y§ = Math.min(_loc1_,_loc2_);
         }
      }
      
      public function §0!=§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = NaN;
         if(!(_loc4_ && _loc1_))
         {
            if(this.§-n§.sprite)
            {
               if(_loc3_)
               {
                  §§push(§'!V§.§<x§());
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop() / §'!V§.§9r§);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§'!V§.§6k§);
                        if(_loc3_ || _loc1_)
                        {
                           addr65:
                           §§push(§§pop() - §§pop());
                           if(_loc3_)
                           {
                              addr62:
                              §§push(1);
                           }
                           _loc1_ = §§pop();
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§findproperty(§@B§));
                              §§push(this.§-n§.sprite);
                              §§push(§7E§.§#!U§);
                              if(_loc3_)
                              {
                                 §§push(1 - § !U§.§#!-§);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() / 2);
                                    if(!_loc4_)
                                    {
                                       addr101:
                                       §§push(§§pop() * §§pop());
                                       §§push(§§pop() * §§pop());
                                    }
                                    var _loc2_:* = §§pop();
                                    §§pop().x = §§pop();
                                    §§pop().§@B§ = _loc2_;
                                    if(!_loc4_)
                                    {
                                       addr110:
                                       §§push(§§findproperty(§'G§));
                                       §§push(this.§-n§.sprite);
                                       §§push(_loc1_);
                                       if(_loc3_)
                                       {
                                          §§push(§7E§.§5H§);
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             §§push(1 - § !U§.§#!-§);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc4_)
                                                {
                                                   addr152:
                                                   §§push(§§pop() * §8!t§.§ S§);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      addr160:
                                                      §§push(§§pop() + §§pop());
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                }
                                                _loc2_ = §§pop();
                                                §§pop().y = §§pop();
                                                §§pop().§'G§ = _loc2_;
                                                §§goto(addr167);
                                             }
                                             §§goto(addr152);
                                          }
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr167);
                                 }
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr110);
                        }
                        §§push(Number(§§pop() >> §§pop()));
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr62);
               }
               §§goto(addr110);
            }
            addr167:
            return;
         }
         §§goto(addr110);
      }
      
      public function §!J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§-n§);
            if(_loc1_)
            {
               §§push(§§pop().sprite);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr58:
                        §§push(this.§-n§);
                        if(!(_loc2_ && this))
                        {
                           §§push(§§pop().sprite);
                           if(!_loc2_)
                           {
                              §§push(§#!-§);
                              if(!(_loc2_ && this))
                              {
                                 §§pop().scaleX = §§pop();
                                 §§goto(addr86);
                              }
                              §§pop().scaleY = §§pop();
                           }
                        }
                        §§goto(addr84);
                     }
                  }
                  addr86:
                  if(_loc1_)
                  {
                     addr84:
                     §§push(this.§-n§.sprite);
                     §§push(§#!-§);
                  }
                  return;
               }
            }
            §§goto(addr84);
         }
         §§goto(addr58);
      }
      
      public function §7!d§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§^T§);
         if(_loc4_)
         {
            §§push(§7E§.§8!'§);
            if(_loc4_ || _loc3_)
            {
               addr38:
               §§push(§§pop() / §§pop());
               if(_loc4_)
               {
                  §§push(this.§,!A§);
               }
               var _loc1_:Number = §§pop();
               §§push(this.§<9§);
               if(_loc4_)
               {
                  §§push(§7E§.§8!'§);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc4_)
                     {
                        addr58:
                        §§push(§§pop() + this.§<!;§);
                        if(_loc4_ || _loc3_)
                        {
                        }
                        addr67:
                        var _loc2_:* = §§pop();
                        if(_loc4_)
                        {
                           §§push(this);
                           §§push(_loc1_);
                           if(_loc4_)
                           {
                              §§push(§7E§.§#!U§);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() / 2);
                                 if(_loc4_)
                                 {
                                    §§push(§'!V§.§9r§);
                                    if(_loc4_)
                                    {
                                       addr97:
                                       §§push(§§pop() * §§pop());
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(§'!V§.§25§);
                                       }
                                       §§pop().§-!=§ = §§pop() - §§pop();
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(this);
                                          §§push(_loc2_);
                                          if(_loc4_ || this)
                                          {
                                             §§push(§7E§.§5H§);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() / 2);
                                                if(_loc4_)
                                                {
                                                   addr134:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc4_ || _loc1_)
                                                   {
                                                      §§push(§8!t§.§5-§);
                                                   }
                                                   §§pop().§-!j§ = §§pop();
                                                   §§push(this.§-n§);
                                                   if(!(_loc3_ && this))
                                                   {
                                                      §§push(§§pop().background);
                                                      if(_loc4_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §§push(this.§-n§);
                                                               if(_loc4_ || this)
                                                               {
                                                                  addr170:
                                                                  §§pop().background.§[t§(this.§-!=§,this.§-!j§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr177:
                                                                     §§push(this.§-n§);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(§§pop().objects);
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr192:
                                                                                 §§push(this.§-n§);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr197:
                                                                                    §§pop().objects.§[t§(this.§-!=§,this.§-!j§);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr204:
                                                                                       §§push(this.§-n§);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§push(§§pop().§[!U§);
                                                                                          if(_loc4_ || _loc2_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc4_ || _loc3_)
                                                                                                {
                                                                                                   addr227:
                                                                                                   this.§-n§.§[!U§.§[t§(this.§-!=§,this.§-!j§);
                                                                                                   addr226:
                                                                                                   if(_loc4_ || _loc3_)
                                                                                                   {
                                                                                                   }
                                                                                                   addr275:
                                                                                                   §§push(this.§-n§);
                                                                                                   if(_loc4_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop().particles);
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr296:
                                                                                                            this.§-n§.particles.§[t§(this.§-!=§,this.§-!j§);
                                                                                                         }
                                                                                                         return;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr296);
                                                                                                }
                                                                                                §§goto(addr275);
                                                                                             }
                                                                                             §§push(this.§-n§);
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop().slingshot);
                                                                                                if(!(_loc3_ && this))
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr259:
                                                                                                      §§push(this.§-n§.slingshot);
                                                                                                   }
                                                                                                   §§goto(addr275);
                                                                                                }
                                                                                                §§pop().§[t§(this.§-!=§,this.§-!j§);
                                                                                                §§goto(addr275);
                                                                                             }
                                                                                             §§goto(addr259);
                                                                                          }
                                                                                          §§goto(addr227);
                                                                                       }
                                                                                       §§goto(addr226);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr296);
                                                                              }
                                                                              §§goto(addr227);
                                                                           }
                                                                           §§goto(addr204);
                                                                        }
                                                                        §§goto(addr197);
                                                                     }
                                                                  }
                                                                  §§goto(addr192);
                                                               }
                                                               §§goto(addr296);
                                                            }
                                                            §§goto(addr204);
                                                         }
                                                         §§goto(addr177);
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                   §§goto(addr227);
                                                }
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr134);
                                       }
                                       §§goto(addr192);
                                    }
                                    §§push(§§pop() / §§pop());
                                 }
                              }
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr67);
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr58);
            }
            §§push(§§pop() + §§pop());
            if(_loc3_)
            {
            }
         }
         §§goto(addr38);
      }
      
      protected function setDraggingAction() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§'!6§(set);
         }
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         this.§[!0§ = -1;
         if(_loc4_)
         {
            this.setDraggingAction();
            §§push(this);
            §§push(this);
            §§push(this.§2!c§ = param1);
            if(!_loc5_)
            {
               var _loc3_:*;
               §§push(_loc3_ = §§pop());
            }
            §§pop().§[!r§ = §§pop();
            §§pop().§0!G§ = _loc3_;
            §§push(this);
            §§push(this);
            §§push(this.§5c§ = param2);
            if(!(_loc5_ && _loc3_))
            {
               §§push(_loc3_ = §§pop());
            }
            §§pop().§%#§ = §§pop();
            §§pop().§2!,§ = _loc3_;
            if(_loc4_)
            {
               this.§?3§ = 0;
               §§push(this.§&!g§);
               if(_loc4_)
               {
                  §§push(this.§^T§);
                  if(_loc4_ || this)
                  {
                     §§pop().x = §§pop();
                     §§push(this.§&!g§);
                     if(_loc4_)
                     {
                        addr108:
                        §§push(this.§<9§);
                        if(_loc4_ || this)
                        {
                           §§pop().y = §§pop();
                           §§push(this.§&!g§);
                        }
                        §§pop().scale = §§pop();
                        this.§`!P§ = §?C§;
                        if(_loc4_)
                        {
                           if(Math.abs(this.§=!7§.x - this.§-9§.x) > 0.001)
                           {
                              §§push(this);
                              §§push(this.§^T§);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() - this.§-9§.x);
                                 if(_loc4_ || this)
                                 {
                                    §§goto(addr151);
                                 }
                                 §§goto(addr166);
                              }
                              addr151:
                              §§push(§§pop() / (this.§=!7§.x - this.§-9§.x));
                              if(_loc4_ || param2)
                              {
                                 addr166:
                                 §§push(§§pop() * §&n§);
                              }
                              §§pop().mCurrentCameraSliderLocation = §§pop();
                              if(_loc4_ || param1)
                              {
                                 addr176:
                                 this.mDragging = true;
                                 §§goto(addr179);
                              }
                              addr179:
                              return;
                           }
                        }
                        §§goto(addr176);
                     }
                     §§push(§?C§);
                  }
               }
               §§goto(addr108);
            }
         }
         §§goto(addr176);
      }
      
      public function § §(param1:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         if(!_loc5_)
         {
            §§push(this);
            §§push(this.§?3§);
            if(!_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§?3§ = §§pop();
         }
         §§push(this.§0!G§);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop() - this.§[!r§);
            if(!_loc5_)
            {
               addr44:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               §§push(this.§2!d§);
               §§push(0);
               if(_loc4_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc5_ && this))
                     {
                        addr61:
                        §§push(_loc2_);
                        §§push(_loc3_);
                        if(!(_loc5_ && param1))
                        {
                           §§push(§7E§.§8!'§);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() * §§pop());
                              §§push(§#!-§);
                              if(_loc4_)
                              {
                                 addr93:
                                 §§push(§§pop() / §§pop());
                                 §§push(this.§2!d§);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(_loc4_ || this)
                                    {
                                       §§push(§§pop() * §&n§);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc5_)
                                          {
                                             _loc2_ = §§pop();
                                             addr120:
                                             this.§5u§ = false;
                                             if(_loc4_ || param1)
                                             {
                                                §§push(_loc2_);
                                                §§push(0);
                                                if(!_loc5_)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         addr139:
                                                         §§push(_loc2_);
                                                         §§push(_loc2_);
                                                         §§push(0.3);
                                                         if(_loc4_)
                                                         {
                                                            _loc2_ = §§pop() - §§pop() * §§pop();
                                                            this.§5u§ = true;
                                                         }
                                                         addr175:
                                                         _loc2_ = §§pop() + §§pop() * §§pop();
                                                         addr177:
                                                         this.§5u§ = true;
                                                         if(!_loc5_)
                                                         {
                                                            addr182:
                                                            this.mCurrentCameraSliderLocation = _loc2_;
                                                            addr185:
                                                            this.§[!r§ = this.§0!G§;
                                                         }
                                                         return;
                                                         addr173:
                                                         addr174:
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   §§push(_loc2_);
                                                   §§push(§&n§);
                                                   if(_loc4_)
                                                   {
                                                      addr163:
                                                      if(§§pop() > §§pop())
                                                      {
                                                         §§push(_loc2_);
                                                         if(!_loc5_)
                                                         {
                                                            addr168:
                                                            §§push(§&n§ - _loc2_);
                                                            if(_loc4_)
                                                            {
                                                               §§goto(addr173);
                                                               §§push(0.3);
                                                            }
                                                            §§goto(addr174);
                                                         }
                                                         §§goto(addr175);
                                                      }
                                                      §§goto(addr182);
                                                   }
                                                   §§goto(addr168);
                                                }
                                                §§goto(addr163);
                                             }
                                             §§goto(addr177);
                                          }
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr139);
                                 }
                              }
                              §§goto(addr139);
                           }
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr182);
               }
               §§goto(addr163);
            }
            §§goto(addr61);
         }
         §§goto(addr44);
      }
      
      protected function isDragging() : Boolean
      {
         return this.mCurrentAction == set;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            if(this.mDragging)
            {
               if(!_loc4_)
               {
                  this.§0!G§ = param1;
                  if(_loc3_)
                  {
                     addr43:
                     this.§2!,§ = param2;
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         §§push(this.mCurrentAction);
         if(_loc4_ || param1)
         {
            §§push(set);
            if(_loc4_ || param1)
            {
               if(§§pop() == §§pop())
               {
                  this.§'!6§(§`!F§);
                  §§push(param1);
                  §§push(0);
                  if(_loc4_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!_loc5_)
                        {
                           this.§0!G§ = param1;
                           if(_loc4_)
                           {
                              addr51:
                              §§push(Number(Math.abs(this.§0!G§ - this.§2!c§)));
                              if(_loc4_ || param1)
                              {
                                 _loc3_ = §§pop();
                                 if(!_loc5_)
                                 {
                                    §§push(this.§?3§);
                                    §§push(§>3§);
                                    if(_loc4_)
                                    {
                                       addr74:
                                       §§push(§§pop() < §§pop());
                                       if(_loc4_ || param1)
                                       {
                                          §§push(§§pop());
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   §§pop();
                                                   addr94:
                                                   §§push(_loc3_);
                                                   §§push(§+k§);
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop() >= §§pop());
                                                      if(_loc5_)
                                                      {
                                                      }
                                                      addr105:
                                                      §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr108);
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                   §§goto(addr119);
                                                }
                                             }
                                             §§push(§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                §§goto(addr105);
                                             }
                                          }
                                          §§goto(addr133);
                                       }
                                       §§goto(addr105);
                                    }
                                    §§goto(addr119);
                                 }
                                 addr108:
                                 §§push(_loc3_);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(§!^§);
                                    if(!_loc5_)
                                    {
                                       addr119:
                                       §§push(§§pop() * this.§?3§);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() / 1000);
                                          if(!(_loc5_ && param2))
                                          {
                                             addr133:
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   §§push(this.§0!G§);
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr158);
                                                   }
                                                   else
                                                   {
                                                      addr230:
                                                      if(§§pop() < §;!E§)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            this.§3a§();
                                                            if(!(_loc4_ || this))
                                                            {
                                                               addr274:
                                                               this.§=R§(0);
                                                            }
                                                            §§goto(addr277);
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                      else
                                                      {
                                                         this.§ §(0);
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                }
                                                §§goto(addr161);
                                             }
                                             else
                                             {
                                                §§push(this.§?3§);
                                             }
                                             §§goto(addr230);
                                          }
                                          addr158:
                                          §§goto(addr156);
                                       }
                                       §§goto(addr133);
                                    }
                                    §§goto(addr230);
                                 }
                                 addr156:
                                 if(§§pop() < this.§2!c§)
                                 {
                                    if(_loc4_)
                                    {
                                       addr161:
                                       this.§'!6§(§+!<§);
                                    }
                                 }
                                 else
                                 {
                                    this.§'!6§(§#![§);
                                 }
                                 §§push(this);
                                 §§push(_loc3_);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(§§pop() / this.§?3§);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() * 10);
                                    }
                                 }
                                 §§pop().§1l§ = §§pop();
                                 if(_loc4_ || this)
                                 {
                                    this.§5u§ = false;
                                    if(_loc4_)
                                    {
                                       §§push(this.mCurrentCameraSliderLocation);
                                       if(_loc4_)
                                       {
                                          addr201:
                                          §§push(0);
                                          if(_loc4_ || _loc3_)
                                          {
                                             addr209:
                                             if(§§pop() < §§pop())
                                             {
                                                if(_loc4_ || param2)
                                                {
                                                   this.§5u§ = true;
                                                }
                                                else
                                                {
                                                   addr243:
                                                   this.§1l§ = §&n§ / (§&n§ / 500);
                                                   this.§5u§ = true;
                                                   if(_loc5_ && param2)
                                                   {
                                                      addr277:
                                                      this.§1l§ = §&n§ / (§&n§ / 500);
                                                      if(_loc4_ || param1)
                                                      {
                                                         this.§5u§ = true;
                                                      }
                                                   }
                                                   §§goto(addr294);
                                                }
                                                §§goto(addr294);
                                             }
                                             addr222:
                                             §§push(this.mCurrentCameraSliderLocation);
                                             §§push(§&n§);
                                          }
                                          if(§§pop() > §§pop())
                                          {
                                             addr224:
                                             this.§5u§ = true;
                                          }
                                          §§goto(addr294);
                                       }
                                       §§goto(addr222);
                                    }
                                 }
                                 §§goto(addr294);
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr294);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr51);
                  }
                  §§goto(addr74);
               }
               addr294:
               this.mDragging = false;
               return;
            }
            §§goto(addr209);
         }
         §§goto(addr201);
      }
      
      public function §3a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.mCurrentAction);
            if(!_loc1_)
            {
               §§push(§+!<§);
               if(_loc2_ || this)
               {
                  if(§§pop() == §§pop())
                  {
                     this.§'!6§(§#![§);
                  }
                  else
                  {
                     §§push(this.mCurrentAction);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(§#![§);
                        if(!(_loc1_ && this))
                        {
                           if(§§pop() == §§pop())
                           {
                              this.§'!6§(§+!<§);
                              if(_loc2_ || _loc2_)
                              {
                              }
                              §§goto(addr134);
                           }
                           else
                           {
                              §§push(this.mCurrentCameraSliderLocation);
                              if(!_loc1_)
                              {
                                 addr84:
                                 §§push(§&n§);
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    addr92:
                                    §§push(2);
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             addr119:
                                             this.§'!6§(§#![§);
                                             if(!_loc2_)
                                             {
                                                addr131:
                                                this.§'!6§(§+!<§);
                                             }
                                             §§goto(addr134);
                                          }
                                          else
                                          {
                                             addr129:
                                             §§push(this.mCurrentCameraSliderLocation);
                                             §§push(§&n§ / 2);
                                          }
                                          §§goto(addr134);
                                       }
                                       if(§§pop() <= §§pop())
                                       {
                                          §§goto(addr131);
                                       }
                                       §§goto(addr134);
                                    }
                                    §§goto(addr129);
                                 }
                              }
                              §§goto(addr129);
                           }
                        }
                     }
                     §§goto(addr129);
                  }
                  addr134:
                  return;
               }
               §§goto(addr92);
            }
            §§goto(addr84);
         }
         §§goto(addr119);
      }
      
      public function §=R§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[!0§ = param1;
            if(_loc2_)
            {
               §§goto(addr33);
            }
            §§goto(addr46);
         }
         addr33:
         if(this.mCurrentCameraSliderLocation < §&n§ / 2)
         {
            if(!_loc3_)
            {
               this.§'!6§(§#![§);
               if(!_loc3_)
               {
                  addr46:
               }
            }
         }
         else
         {
            this.§'!6§(§+!<§);
         }
      }
      
      public function goToBirdView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§'!6§(§#![§);
         }
      }
      
      public function goToCastleView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§'!6§(§+!<§);
         }
      }
      
      public function §'!6§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§&!g§);
            if(_loc2_ || _loc2_)
            {
               §§push(this.§^T§);
               if(!_loc3_)
               {
                  §§pop().x = §§pop();
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(this.§&!g§);
                     if(!_loc3_)
                     {
                        §§push(this.§<9§);
                        if(_loc2_)
                        {
                           §§pop().y = §§pop();
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr83);
                           }
                        }
                        addr83:
                        this.§&!g§.scale = §?C§;
                        §§goto(addr82);
                     }
                     addr82:
                     if(_loc3_)
                     {
                     }
                     §§goto(addr96);
                  }
                  this.§`!P§ = §?C§;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr96:
                     this.mCurrentAction = param1;
                     return;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.mCurrentCameraSliderLocation);
            if(!_loc3_)
            {
               §§push(§&n§);
               if(_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc3_)
                     {
                        addr53:
                        §§push(true);
                        if(!(_loc3_ && this))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr64:
                        if(this.mCurrentAction == §+!<§)
                        {
                           if(_loc2_)
                           {
                              §§push(true);
                              if(_loc2_)
                              {
                                 §§goto(addr73);
                              }
                           }
                           else
                           {
                              addr74:
                              §§push(false);
                           }
                           return §§pop();
                        }
                        §§goto(addr74);
                     }
                     addr73:
                     return §§pop();
                  }
               }
            }
            §§goto(addr64);
         }
         §§goto(addr53);
      }
      
      public function §'d§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.mCurrentCameraSliderLocation);
            if(_loc3_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(true);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr74:
                     §§push(true);
                     if(!_loc3_)
                     {
                        §§goto(addr79);
                     }
                  }
                  return §§pop();
               }
               addr65:
               addr63:
               if(this.mCurrentAction == §#![§)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr74);
                  }
                  §§goto(addr79);
               }
               §§push(false);
               addr79:
               return §§pop();
            }
            §§goto(addr65);
         }
         §§goto(addr63);
      }
      
      public function §,!&§(param1:§!!s§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,M§ = param1;
            if(this.§,M§ != null)
            {
               this.§1!,§ = new §!!s§();
               addr30:
               §§push(this.§1!,§);
               if(_loc3_ || _loc2_)
               {
                  §§push(this.§^T§);
                  if(_loc3_)
                  {
                     §§pop().x = §§pop();
                     if(!(_loc2_ && param1))
                     {
                        §§push(this.§1!,§);
                        if(_loc3_ || param1)
                        {
                           §§push(this.§<9§);
                           if(!(_loc2_ && param1))
                           {
                              §§pop().y = §§pop();
                              addr93:
                              this.§1!,§.scale = §?C§;
                           }
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr120);
                  }
               }
               §§goto(addr93);
            }
            else
            {
               this.§^T§ = this.§1!,§.x;
               if(!(_loc2_ && _loc2_))
               {
                  this.§<9§ = this.§1!,§.y;
                  §?C§ = this.§1!,§.scale;
               }
               this.§1!,§ = null;
            }
            addr120:
            return;
         }
         §§goto(addr30);
      }
      
      protected function manualScaleChanged() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.isOnCastleView())
            {
               if(!(_loc1_ && _loc1_))
               {
                  addr44:
                  this.goToCastleView();
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr51);
               }
            }
            else
            {
               this.goToBirdView();
            }
            addr51:
            return;
         }
         §§goto(addr44);
      }
      
      public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§"Y§);
         if(!(_loc4_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(param1)
         {
            if(!_loc4_)
            {
               §§push(_loc3_);
               if(_loc5_)
               {
                  §§push(param2);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc4_)
                     {
                        addr46:
                        §§push(Number(§§pop()));
                        if(!(_loc4_ && param2))
                        {
                           _loc3_ = §§pop();
                           §§goto(addr97);
                        }
                        else
                        {
                           addr79:
                           _loc3_ = §§pop();
                           if(!(_loc4_ && _loc3_))
                           {
                              addr97:
                              _loc3_ = Number(Math.max(this.§<_§,Math.min(this.§9! §,_loc3_)));
                              if(!(_loc4_ && param2))
                              {
                                 addr118:
                                 if(_loc3_ != this.§"Y§)
                                 {
                                    addr119:
                                    this.§"Y§ = _loc3_;
                                    if(_loc5_)
                                    {
                                       addr124:
                                       this.manualScaleChanged();
                                    }
                                 }
                              }
                              return;
                           }
                        }
                        §§goto(addr124);
                     }
                     else
                     {
                        addr78:
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr118);
               }
               §§goto(addr46);
            }
            §§goto(addr119);
         }
         else
         {
            §§push(_loc3_);
            §§push(param2);
            if(!_loc4_)
            {
               §§push(§§pop() - §§pop());
               if(_loc5_ || this)
               {
                  §§goto(addr78);
               }
               §§goto(addr118);
            }
         }
         §§goto(addr118);
      }
      
      public function getZoomRatio() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§[!+§);
         if(_loc1_)
         {
            §§push(this.§<_§);
            if(_loc1_ || _loc1_)
            {
               §§goto(addr55);
            }
            §§push(§§pop() / §§pop());
         }
         addr55:
         §§push(§§pop() - §§pop());
         if(_loc1_ || _loc1_)
         {
            §§push(this.§9! §);
            if(_loc1_)
            {
               §§push(§§pop() - this.§<_§);
            }
         }
         return §§pop();
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this);
            §§push(Math.min(Math.max(param1,0),1) * (this.§9! § - this.§<_§));
            if(!_loc3_)
            {
               §§push(§§pop() + this.§<_§);
            }
            §§pop().§[!+§ = §§pop();
         }
      }
      
      public function §#m§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§"Y§ = Math.max(this.§"Y§ - 0.5,0.5);
         }
      }
      
      public function §'S§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc3_ && _loc2_))
         {
            §§push(_loc1_);
            §§push(" mManualScale: ");
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop() + this.§"Y§);
               if(!_loc3_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_ = §§pop();
                     if(_loc2_ || _loc3_)
                     {
                        §§push(_loc1_);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(" mXcenterB2: ");
                           if(_loc2_ || _loc1_)
                           {
                              §§push(§§pop() + (§§pop() + this.§^T§));
                              if(!(_loc3_ && this))
                              {
                                 _loc1_ = §§pop();
                                 §§push(_loc1_);
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§push(" mYcenterB2: ");
                                    if(!_loc3_)
                                    {
                                       §§push(this.§<9§);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() + (§§pop() + §§pop()));
                                          if(!_loc3_)
                                          {
                                             _loc1_ = §§pop();
                                             if(!_loc3_)
                                             {
                                                §§push(_loc1_);
                                                §§push(" mXcenterB2target: ");
                                                if(!(_loc3_ && this))
                                                {
                                                   addr119:
                                                   §§push(§§pop() + this.§"Y§);
                                                   if(_loc2_)
                                                   {
                                                      addr124:
                                                      _loc1_ = §§pop() + §§pop();
                                                      §§push(_loc1_);
                                                      if(_loc2_)
                                                      {
                                                         §§push("\n mYcenterB2target: ");
                                                         §§push(this.§"Y§);
                                                         if(!_loc3_)
                                                         {
                                                            addr134:
                                                            §§push(§§pop() + (§§pop() + §§pop()));
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                               _loc1_ = §§pop();
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(_loc1_);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(" mXcenterB2previous: ");
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(this.§"Y§);
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              _loc1_ = §§pop() + §§pop();
                                                                              §§push(_loc1_);
                                                                              if(_loc2_ || _loc3_)
                                                                              {
                                                                                 §§push(" mYcenterB2previous: ");
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(this.§"Y§);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc2_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc2_ || _loc1_)
                                                                                             {
                                                                                                _loc1_ = §§pop();
                                                                                                §§push(_loc1_);
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   addr218:
                                                                                                   §§push(" mTimeNeededForCameraMovement: " + this.§"Y§);
                                                                                                   if(_loc2_ || _loc3_)
                                                                                                   {
                                                                                                      addr227:
                                                                                                      _loc1_ = §§pop() + §§pop();
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         §§push(_loc1_);
                                                                                                         §§push(" mTimeUsedForCameraMovement: ");
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§push(this.§"Y§);
                                                                                                            if(_loc2_ || _loc1_)
                                                                                                            {
                                                                                                               addr245:
                                                                                                               §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                               if(_loc2_ || _loc1_)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                  {
                                                                                                                     _loc1_ = §§pop();
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§push(_loc1_);
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           addr267:
                                                                                                                           §§push("\n mTimeNeededForScaleMovement: ");
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              §§push(this.§"Y§);
                                                                                                                              if(_loc2_ || _loc1_)
                                                                                                                              {
                                                                                                                                 _loc1_ = §§pop() + (§§pop() + §§pop());
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    addr285:
                                                                                                                                    §§push(_loc1_);
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(" mTimeUsedForScaleMovement: ");
                                                                                                                                       §§push(this.§"Y§);
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          addr293:
                                                                                                                                          §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                          if(!(_loc3_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                §§push(_loc1_);
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(" mTargetScale: ");
                                                                                                                                                   §§push(this.§"Y§);
                                                                                                                                                   if(_loc2_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc2_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                            §§push(" mTargetScalePrevious: ");
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§"Y§);
                                                                                                                                                               if(_loc2_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr345:
                                                                                                                                                                  §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                  if(!(_loc3_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr355:
                                                                                                                                                                     _loc1_ = §§pop();
                                                                                                                                                                     addr358:
                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                     §§push(" mCastleCameraX: ");
                                                                                                                                                                     §§push(this.§"Y§);
                                                                                                                                                                     if(_loc2_ || _loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc1_ = §§pop();
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc1_);
                                                                                                                                                                              §§push("\n mCastleCameraY: ");
                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr381:
                                                                                                                                                                                 §§push(§§pop() + (§§pop() + this.§"Y§));
                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr388:
                                                                                                                                                                                       _loc1_ = §§pop();
                                                                                                                                                                                       §§push(_loc1_);
                                                                                                                                                                                       §§push(" mCastleCameraScale: ");
                                                                                                                                                                                       if(!(_loc3_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr400:
                                                                                                                                                                                          §§push(§§pop() + this.§"Y§);
                                                                                                                                                                                          if(_loc2_ || _loc1_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr408:
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr415:
                                                                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                                                                   §§push(" mBirdCameraX: ");
                                                                                                                                                                                                   if(_loc2_ || _loc1_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + this.§"Y§);
                                                                                                                                                                                                      if(_loc2_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr435:
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(!(_loc3_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                                                                            if(_loc2_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                                                                               if(_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(" mBirdCameraY: ");
                                                                                                                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr472:
                                                                                                                                                                                                                     §§push(this.§"Y§);
                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc1_ = §§pop() + §§pop();
                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr484:
                                                                                                                                                                                                                              §§push(_loc1_ + (" mBirdCameraScale: " + this.§"Y§));
                                                                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr493:
                                                                                                                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc1_);
                                                                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr499:
                                                                                                                                                                                                                                       §§push("\n mScreenLeftScroll: ");
                                                                                                                                                                                                                                       if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§"Y§);
                                                                                                                                                                                                                                          if(!(_loc3_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr519:
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                if(_loc2_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                                                                                                                      addr531:
                                                                                                                                                                                                                                                      §§push(_loc1_);
                                                                                                                                                                                                                                                      §§push(" mScreenTopScroll: ");
                                                                                                                                                                                                                                                      if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + this.§"Y§);
                                                                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                            if(!(_loc3_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc1_ = §§pop();
                                                                                                                                                                                                                                                                  if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                                                                                                                     if(_loc2_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(" mDragging: ");
                                                                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr580:
                                                                                                                                                                                                                                                                           §§push(this.§"Y§);
                                                                                                                                                                                                                                                                           if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr590:
                                                                                                                                                                                                                                                                              §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr597:
                                                                                                                                                                                                                                                                                    §§push(_loc1_ + (" mDraggingPointPreviousX: " + this.§"Y§));
                                                                                                                                                                                                                                                                                    if(_loc2_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr610:
                                                                                                                                                                                                                                                                                       _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                       if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr836:
                                                                                                                                                                                                                                                                                       §§push(_loc1_);
                                                                                                                                                                                                                                                                                       §§push(" mCameraBorderGround: ");
                                                                                                                                                                                                                                                                                       if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr845:
                                                                                                                                                                                                                                                                                          §§push(this.§"Y§);
                                                                                                                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr850:
                                                                                                                                                                                                                                                                                             §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                                                                             if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr858:
                                                                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                                                                if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr876:
                                                                                                                                                                                                                                                                                                   _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr884:
                                                                                                                                                                                                                                                                                                      §§push(_loc1_);
                                                                                                                                                                                                                                                                                                      if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr899:
                                                                                                                                                                                                                                                                                                         addr895:
                                                                                                                                                                                                                                                                                                         addr896:
                                                                                                                                                                                                                                                                                                         addr893:
                                                                                                                                                                                                                                                                                                         addr892:
                                                                                                                                                                                                                                                                                                         addr898:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + (" mPigsAreOnRight: " + this.§"Y§ + "\n "));
                                                                                                                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr902:
                                                                                                                                                                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr904);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr903:
                                                                                                                                                                                                                                                                                                   addr904:
                                                                                                                                                                                                                                                                                                   return §§pop();
                                                                                                                                                                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr904);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr899);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr895);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr896);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr858);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                                                                                                                 if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(" mDraggingPointPreviousY: ");
                                                                                                                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr630:
                                                                                                                                                                                                                                                                                       §§push(this.§"Y§);
                                                                                                                                                                                                                                                                                       if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr640:
                                                                                                                                                                                                                                                                                          _loc1_ = §§pop() + (§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc1_);
                                                                                                                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr653:
                                                                                                                                                                                                                                                                                                §§push("\n mDraggingPointCurrentX: ");
                                                                                                                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§"Y§);
                                                                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr661:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                                                                                      if(_loc2_ || this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr670:
                                                                                                                                                                                                                                                                                                         _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(" mDraggingPointCurrentY: ");
                                                                                                                                                                                                                                                                                                            §§push(this.§"Y§);
                                                                                                                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr679:
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                                                                                               if(_loc2_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                  if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(" mDraggingPointOriginalX: " + this.§"Y§);
                                                                                                                                                                                                                                                                                                                     if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr704:
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                        if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr713:
                                                                                                                                                                                                                                                                                                                           _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                           addr715:
                                                                                                                                                                                                                                                                                                                           §§push(_loc1_ + (" mDraggingPointOriginalY: " + this.§"Y§));
                                                                                                                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr726:
                                                                                                                                                                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr729:
                                                                                                                                                                                                                                                                                                                                    §§push(" mDraggingTimer: ");
                                                                                                                                                                                                                                                                                                                                    if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr739:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + this.§"Y§);
                                                                                                                                                                                                                                                                                                                                       if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr747:
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr750:
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                             if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr758:
                                                                                                                                                                                                                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr770:
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + ("\n mCameraBorderLeft: " + this.§"Y§));
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr779:
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr782:
                                                                                                                                                                                                                                                                                                                                                         _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                         addr784:
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                         §§push(" mCameraBorderRight: " + this.§"Y§);
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr797:
                                                                                                                                                                                                                                                                                                                                                            _loc1_ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                                                                                            addr796:
                                                                                                                                                                                                                                                                                                                                                            if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr805:
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr814:
                                                                                                                                                                                                                                                                                                                                                                  §§push(" mCameraBorderSky: " + this.§"Y§);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr819:
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                     if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr827:
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                        if(_loc2_ || this)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr835:
                                                                                                                                                                                                                                                                                                                                                                           _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr836);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr899);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr858);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr893);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr902);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr903);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr845);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr796);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr876);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr892);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr779);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr814);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr796);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr758);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr805);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr902);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr850);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr784);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr827);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr770);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr797);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr679);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr784);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr835);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr805);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr679);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr704);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr653);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr782);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr770);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr814);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr758);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr597);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr729);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr779);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr797);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr747);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr899);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr827);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr819);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr850);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr819);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr782);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr726);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr715);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr531);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr580);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr770);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr679);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr782);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr836);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr670);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr661);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr590);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr484);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr670);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr850);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr845);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr782);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr750);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr630);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr484);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr814);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr435);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr739);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr679);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr858);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr640);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr715);
                                                                                                                                                }
                                                                                                                                                §§goto(addr493);
                                                                                                                                             }
                                                                                                                                             §§goto(addr713);
                                                                                                                                          }
                                                                                                                                          §§goto(addr827);
                                                                                                                                       }
                                                                                                                                       §§goto(addr713);
                                                                                                                                    }
                                                                                                                                    §§goto(addr388);
                                                                                                                                 }
                                                                                                                                 §§goto(addr884);
                                                                                                                              }
                                                                                                                              §§goto(addr293);
                                                                                                                           }
                                                                                                                           §§goto(addr408);
                                                                                                                        }
                                                                                                                        §§goto(addr713);
                                                                                                                     }
                                                                                                                     §§goto(addr415);
                                                                                                                  }
                                                                                                                  §§goto(addr493);
                                                                                                               }
                                                                                                               §§goto(addr610);
                                                                                                            }
                                                                                                            §§goto(addr381);
                                                                                                         }
                                                                                                         §§goto(addr580);
                                                                                                      }
                                                                                                      §§goto(addr884);
                                                                                                   }
                                                                                                   §§goto(addr472);
                                                                                                }
                                                                                                §§goto(addr267);
                                                                                             }
                                                                                             §§goto(addr899);
                                                                                          }
                                                                                          §§goto(addr227);
                                                                                       }
                                                                                       §§goto(addr770);
                                                                                    }
                                                                                    §§goto(addr345);
                                                                                 }
                                                                                 §§goto(addr845);
                                                                              }
                                                                              §§goto(addr876);
                                                                           }
                                                                           §§goto(addr358);
                                                                        }
                                                                        §§goto(addr400);
                                                                     }
                                                                     §§goto(addr519);
                                                                  }
                                                                  §§goto(addr355);
                                                               }
                                                               §§goto(addr713);
                                                            }
                                                            §§goto(addr590);
                                                         }
                                                         §§goto(addr218);
                                                      }
                                                      §§goto(addr499);
                                                   }
                                                   §§goto(addr245);
                                                }
                                                §§goto(addr400);
                                             }
                                             §§goto(addr355);
                                          }
                                          §§goto(addr713);
                                       }
                                       §§goto(addr119);
                                    }
                                    §§goto(addr899);
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr590);
                           }
                           §§goto(addr898);
                        }
                        §§goto(addr267);
                     }
                     §§goto(addr713);
                  }
                  §§goto(addr750);
               }
               §§goto(addr134);
            }
            §§goto(addr119);
         }
         §§goto(addr285);
      }
   }
}
