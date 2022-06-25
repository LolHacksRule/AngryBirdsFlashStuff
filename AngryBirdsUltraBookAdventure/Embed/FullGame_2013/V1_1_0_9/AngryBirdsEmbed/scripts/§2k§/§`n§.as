package §2k§
{
   import §1!-§.§5>§;
   import §1!-§.§@Z§;
   import §3a§.§7!+§;
   import §5!L§.§=w§;
   import §6A§.§ !§;
   import §6A§.§"6§;
   import §^!A§.§;!%§;
   
   public class §`n§
   {
      
      public static const §"P§:Number = 1.25;
      
      public static const §[c§:Number = 0.15;
      
      public static const §"b§:Number;
      
      public static const §]$§:Number;
      
      public static const §,!J§:Number = 0.1;
      
      public static const §5O§:int = 1500;
      
      public static const §'t§:int = 10;
      
      public static const §#2§:int = 15;
      
      public static const §%=§:int = 300;
      
      public static const §%b§:int = 1000;
      
      public static const §1%§:int = 10000;
      
      public static const §[t§:int = 200.0;
      
      public static const §3!J§:int = 0;
      
      public static const §2Z§:int = 1;
      
      public static const §2M§:int = 2;
      
      public static const §4!I§:int = 3;
      
      public static const §4q§:int = 4;
      
      public static const §^!9§:int = 5;
      
      public static const §7,§:String = "CASTLE";
      
      public static const §>d§:String = "SLINGSHOT";
      
      protected static var §55§:Number;
      
      public static var §!!7§:Number;
      
      public static var §-!N§:Number;
      
      public static const § D§:Number = 2000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §`n§)
         {
            §"P§ = 1.25;
            if(_loc2_ || _loc1_)
            {
               §[c§ = 0.15;
               if(_loc2_ || §`n§)
               {
                  §"b§ = §=w§.§9!#§ * § !§.§`J§;
                  if(!_loc1_)
                  {
                     §]$§ = §=w§.§0i§ * § !§.§`J§;
                     §,!J§ = 0.1;
                     §5O§ = 1500;
                     §'t§ = 10;
                     §#2§ = 15;
                     if(!_loc1_)
                     {
                        §%=§ = 300;
                        §%b§ = 1000;
                     }
                     addr119:
                     §4!I§ = 3;
                     §4q§ = 4;
                     if(_loc2_)
                     {
                        §§goto(addr127);
                     }
                     §§goto(addr132);
                  }
                  §1%§ = 10000;
                  §[t§ = §1%§ / 50;
                  §3!J§ = 0;
                  §2Z§ = 1;
                  if(!_loc1_)
                  {
                     §2M§ = 2;
                     §§goto(addr119);
                  }
                  addr127:
                  §^!9§ = 5;
                  if(!_loc1_)
                  {
                     addr132:
                     §7,§ = "CASTLE";
                     §>d§ = "SLINGSHOT";
                     § D§ = 2000;
                  }
                  return;
               }
               §§goto(addr119);
            }
         }
         §§goto(addr132);
      }
      
      private var § f§:Number = 1.0;
      
      private var §[u§:Number = 0.2;
      
      protected var §5I§:Number;
      
      protected var §>?§:Number;
      
      protected var §+]§:Number;
      
      public var §?V§:§ !§;
      
      public var § !&§:Number;
      
      public var §5!!§:Number;
      
      protected var §8c§:§for§;
      
      protected var §9!K§:§for§;
      
      public var §?!A§:Number;
      
      public var §@h§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §?i§:Number;
      
      public var §>!>§:Number;
      
      public var §2!D§:Number;
      
      public var §8I§:Number;
      
      private var §;n§:Number;
      
      private var §3>§:§=!J§;
      
      private var §!!<§:§=!J§;
      
      protected var §4x§:Number = 0;
      
      protected var §5v§:Number = 0;
      
      protected var § !?§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §break§:Number = 0;
      
      public var §5!C§:Boolean = true;
      
      public var §0q§:Number = 0;
      
      public var §0r§:Number = 0;
      
      public var §7"§:Number = 0;
      
      public var § !M§:Number = 0;
      
      public var §;B§:Number = 0;
      
      public var §@!I§:Number = 0;
      
      public var §8G§:Number = 0;
      
      public var §6i§:Number = 0;
      
      public var §[#§:Number = 0;
      
      private var §1!!§:§=!J§;
      
      public var §<f§:Number = 0;
      
      private var §&! §:Number = 0;
      
      private var §>p§:Number = 0;
      
      private var §1B§:§5>§ = null;
      
      private var §1H§:§5>§ = null;
      
      public function §`n§(param1:§ !§, param2:§@Z§, param3:Number = 1.0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§1!!§ = new §=!J§(0,0,1,false);
            if(!(_loc5_ && param3))
            {
               super();
               if(!_loc5_)
               {
                  addr37:
                  this.§>?§ = 0;
                  this.§+]§ = 0;
                  if(!(_loc5_ && param3))
                  {
                     this.§?V§ = param1;
                     if(_loc4_ || this)
                     {
                        §`n§.§55§ = 1;
                        if(_loc4_)
                        {
                           this.§ f§ = Math.max(1,Math.min(2,param3));
                           addr74:
                           this.§5I§ = this.§ f§;
                           this.§0!E§(param2);
                           §§push(Boolean(this.§8c§));
                           if(!(_loc5_ && param1))
                           {
                              if(§§pop())
                              {
                                 if(_loc4_ || this)
                                 {
                                    §§pop();
                                    if(_loc4_)
                                    {
                                       addr116:
                                       if(this.§9!K§)
                                       {
                                          this.§]p§();
                                          addr119:
                                          §§push(this);
                                          §§push(this.§8c§.x);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() - this.§9!K§.x);
                                          }
                                          §§pop().§4x§ = §§pop();
                                          §§push(this);
                                          §§push(this.§8c§.y);
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(§§pop() - this.§9!K§.y);
                                          }
                                          §§pop().§5v§ = §§pop();
                                          addr146:
                                          §§push(this);
                                          §§push(this.§8c§.scale);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(§§pop() - this.§9!K§.scale);
                                          }
                                          §§pop().§ !?§ = §§pop();
                                          this.§>?§ = this.§8c§.x;
                                          addr177:
                                          this.§+]§ = this.§8c§.y;
                                          §§push(§§findproperty(§55§));
                                          §§push(this.§8c§.scale);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() * this.§5I§);
                                          }
                                          §§pop().§55§ = §§pop();
                                       }
                                    }
                                    this.mCurrentCameraSliderLocation = §1%§;
                                    if(!_loc5_)
                                    {
                                       this.§5!C§ = true;
                                       addr200:
                                       this.§break§ = §1%§ / 500;
                                    }
                                    return;
                                 }
                              }
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr177);
                     }
                     §§goto(addr200);
                  }
                  §§goto(addr119);
               }
               §§goto(addr74);
            }
            §§goto(addr146);
         }
         §§goto(addr37);
      }
      
      private static function §^c§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§=w§.§continue§);
         if(_loc2_)
         {
            §§push(§§pop() / §=w§.§'c§);
            if(!(_loc3_ && _loc1_))
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
                  if(!_loc3_)
                  {
                     §§push(1);
                     if(_loc2_)
                     {
                        §§goto(addr69);
                     }
                  }
                  else
                  {
                     addr70:
                     §§push(1);
                  }
                  return §§pop();
               }
               §§goto(addr70);
            }
            addr69:
            return §§pop() / Math.pow(_loc1_,0.7);
         }
         §§goto(addr70);
      }
      
      public static function get §&"§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§55§);
         if(_loc2_)
         {
            §§push(§§pop() * §^c§());
         }
         return §§pop();
      }
      
      public function get §^!4§() : Number
      {
         return this.§5I§;
      }
      
      public function set §^!4§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5I§ = param1;
         }
      }
      
      public function get §]!C§() : Number
      {
         return this.§;n§;
      }
      
      public function §9D§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§"b§);
         if(_loc1_ || _loc2_)
         {
            §§push(this.§>!>§);
            if(_loc1_)
            {
               §§push(§§pop() - this.§?i§);
            }
            §§push(§§pop() / §§pop());
         }
         return §§pop();
      }
      
      public function get §'!D§() : Number
      {
         return this.§ f§;
      }
      
      public function get §0g§() : Number
      {
         return this.§[u§;
      }
      
      public function §"!6§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5I§ = param1;
            if(_loc2_)
            {
               this.§4r§();
               if(_loc2_)
               {
                  addr27:
                  this.§16§(this.mCurrentCameraSliderLocation,1);
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(this.mCurrentAction == §^!9§)
         {
            return;
         }
         this.goToCastleView();
         this.§0q§ = 2000;
         if(!_loc1_)
         {
            this.§'S§();
            if(_loc2_)
            {
               this.§5!K§();
               if(_loc2_)
               {
                  addr47:
                  this.§^a§();
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.mCurrentCameraSliderLocation = 0;
            this.§>?§ = this.§9!K§.x;
            if(_loc3_ || param1)
            {
               this.§+]§ = this.§9!K§.y;
               this.§5!C§ = false;
               §§push(this);
               §§push(§1%§ / 160000);
               if(_loc3_)
               {
                  §§push(§§pop() * param1);
               }
               §§pop().§break§ = §§pop();
               addr76:
               this.§]V§(§^!9§);
            }
            return;
         }
         §§goto(addr76);
      }
      
      public function §]p§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§9!K§.x);
            if(_loc2_ || _loc2_)
            {
               §§push(§"b§);
               if(_loc2_)
               {
                  addr41:
                  §§push(§§pop() / this.§9!K§.scale);
                  if(_loc2_)
                  {
                     addr38:
                     §§push(§§pop() / 2);
                  }
                  §§pop().§?i§ = §§pop() - §§pop();
                  if(_loc2_ || _loc3_)
                  {
                     §§push(this);
                     §§push(this.§8c§.x);
                     if(_loc2_)
                     {
                        §§push(§"b§);
                        if(!_loc3_)
                        {
                           addr67:
                           §§push(§§pop() / this.§8c§.scale);
                           if(_loc2_)
                           {
                              addr64:
                              §§push(§§pop() / 2);
                           }
                           §§pop().§>!>§ = §§pop() + §§pop();
                           if(!_loc3_)
                           {
                              §§push(this);
                              §§push(this.§?V§.§%>§.§,j§);
                              if(!(_loc3_ && _loc1_))
                              {
                                 §§push(20 * § !§.§+;§);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() * § !§.§`J§);
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§pop().§2!D§ = §§pop();
                              if(_loc2_)
                              {
                                 addr105:
                                 §§push(this);
                                 §§push(this.§?V§.§%>§.§,j§);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() + 4);
                                 }
                                 §§pop().§8I§ = §§pop();
                                 addr115:
                                 §§push(§"b§);
                                 if(!_loc3_)
                                 {
                                    §§push(this.§>!>§);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() - this.§?i§);
                                    }
                                    §§push(§§pop() / §§pop());
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr133:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc1_:* = §§pop();
                                    if(!(_loc3_ && this))
                                    {
                                       §§push(this);
                                       §§push(this.§8I§);
                                       if(_loc2_)
                                       {
                                          §§push(§]$§);
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§push(0.8);
                                             if(_loc2_)
                                             {
                                                §§goto(addr173);
                                             }
                                             §§push(§§pop() / §§pop());
                                          }
                                          addr173:
                                          §§goto(addr174);
                                       }
                                       addr174:
                                       §§push(§§pop() * §§pop());
                                       if(!_loc3_)
                                       {
                                          §§push(_loc1_);
                                       }
                                       §§pop().§;n§ = §§pop() - §§pop();
                                       return;
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr133);
                              }
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr105);
               }
               §§goto(addr38);
            }
            §§goto(addr41);
         }
         §§goto(addr105);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§?V§ = null;
         }
      }
      
      public function §0!E§(param1:§@Z§) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc3_:§5>§ = null;
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§8e§)
         {
            _loc3_ = param1.§8=§(_loc2_);
            §§push(_loc3_.id);
            if(_loc14_)
            {
               §§push(§§pop());
               if(!(_loc15_ && _loc2_))
               {
                  §§push(§§pop());
                  if(_loc14_)
                  {
                     _loc4_ = §§pop();
                     if(_loc14_)
                     {
                        §§push(§§pop().toUpperCase());
                        if(!_loc15_)
                        {
                           addr71:
                           _loc4_ = §§pop();
                           if(!(_loc15_ && param1))
                           {
                              §§push(_loc3_.scale.toString() == "");
                              if(!(_loc15_ && this))
                              {
                                 §§push(!§§pop());
                                 if(_loc14_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc15_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc14_ || _loc3_)
                                          {
                                             addr105:
                                             §§pop();
                                             if(_loc14_)
                                             {
                                                §§push(_loc3_.scale.toString() != "null");
                                                if(!_loc15_)
                                                {
                                                   addr116:
                                                   if(§§pop())
                                                   {
                                                      addr118:
                                                      §§pop();
                                                      §§push(_loc3_.scale);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(§§pop().toString() == "0");
                                                         if(!_loc15_)
                                                         {
                                                            addr128:
                                                            §§push(!§§pop());
                                                            if(!_loc15_)
                                                            {
                                                               addr131:
                                                               if(§§pop())
                                                               {
                                                                  this.§!1§(_loc3_);
                                                                  if(_loc15_ && this)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               _loc5_ = _loc3_.left;
                                                               §§push(_loc3_.right);
                                                               if(_loc14_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc15_)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     _loc7_ = _loc3_.top;
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(Number(_loc3_.bottom));
                                                                        if(_loc14_ || _loc3_)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           §§push(_loc3_.x);
                                                                           if(_loc14_)
                                                                           {
                                                                              addr185:
                                                                              §§push(Number(§§pop()));
                                                                              if(!(_loc15_ && _loc2_))
                                                                              {
                                                                                 addr193:
                                                                                 _loc9_ = §§pop();
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§push(Number(_loc3_.y));
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       _loc10_ = §§pop();
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          §§push(§]$§);
                                                                                          if(_loc14_ || param1)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!(_loc15_ && _loc3_))
                                                                                                   {
                                                                                                      addr228:
                                                                                                      _loc11_ = §§pop() / §§pop();
                                                                                                      addr226:
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         §§push(§"b§);
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               addr237:
                                                                                                               addr238:
                                                                                                               §§push(§§pop() - _loc5_);
                                                                                                               if(!(_loc15_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(Number(§§pop() / §§pop()));
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc15_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr262:
                                                                                                                     addr263:
                                                                                                                     if(§§pop() < §§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc14_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        addr271:
                                                                                                                        §§push(Number(_loc12_));
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           addr275:
                                                                                                                        }
                                                                                                                        addr288:
                                                                                                                        _loc13_ = §§pop();
                                                                                                                        §§push(_loc4_);
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           addr292:
                                                                                                                           §§push(§>d§);
                                                                                                                           if(!(_loc15_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(§§pop() == §§pop())
                                                                                                                              {
                                                                                                                                 this.§9!K§ = new §for§(_loc9_,_loc10_,_loc13_,true);
                                                                                                                                 this.§!!<§ = new §=!J§(_loc9_,_loc10_,_loc13_,true);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr330:
                                                                                                                                 if(_loc4_ == §7,§)
                                                                                                                                 {
                                                                                                                                    addr331:
                                                                                                                                    this.§8c§ = new §for§(_loc9_,_loc10_,_loc13_,false);
                                                                                                                                    this.§3>§ = new §=!J§(_loc9_,_loc10_,_loc13_,false);
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §7!+§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              _loc2_++;
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr330);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(_loc11_);
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc14_ || _loc2_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           §§goto(addr288);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr288);
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  §§goto(addr275);
                                                                                                               }
                                                                                                               _loc12_ = §§pop();
                                                                                                               if(_loc14_ || _loc3_)
                                                                                                               {
                                                                                                                  addr261:
                                                                                                                  §§push(_loc11_);
                                                                                                               }
                                                                                                               §§goto(addr288);
                                                                                                            }
                                                                                                            §§goto(addr262);
                                                                                                         }
                                                                                                         §§goto(addr275);
                                                                                                      }
                                                                                                      §§goto(addr288);
                                                                                                   }
                                                                                                   §§goto(addr237);
                                                                                                }
                                                                                                §§goto(addr238);
                                                                                             }
                                                                                             §§goto(addr226);
                                                                                          }
                                                                                          §§goto(addr228);
                                                                                       }
                                                                                       §§goto(addr331);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr271);
                                                                              }
                                                                              §§goto(addr228);
                                                                           }
                                                                           §§goto(addr261);
                                                                        }
                                                                        §§goto(addr228);
                                                                     }
                                                                  }
                                                                  §§goto(addr271);
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                            §§goto(addr263);
                                                         }
                                                         §§goto(addr131);
                                                      }
                                                      §§goto(addr193);
                                                   }
                                                   §§goto(addr131);
                                                }
                                                §§goto(addr128);
                                             }
                                             §§goto(addr271);
                                          }
                                       }
                                    }
                                    §§goto(addr116);
                                 }
                                 §§goto(addr105);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr330);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr330);
               }
               §§goto(addr292);
            }
            §§goto(addr71);
         }
      }
      
      public function §5T§(param1:§@Z§) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:§5>§ = new §5>§();
         if(!(_loc11_ && _loc2_))
         {
            _loc2_.id = §>d§;
            if(_loc10_ || _loc3_)
            {
               addr37:
               _loc2_.x = this.§9!K§.x;
               if(!(_loc11_ && _loc2_))
               {
                  addr49:
                  _loc2_.y = this.§9!K§.y;
               }
               §§push(§"b§);
               if(!_loc11_)
               {
                  §§push(§§pop() / this.§9!K§.scale);
                  if(!_loc11_)
                  {
                     §§push(§§pop() / 2);
                     if(_loc11_ && param1)
                     {
                     }
                     addr73:
                     var _loc3_:* = §§pop();
                     §§push(§]$§);
                     if(_loc10_ || param1)
                     {
                        §§push(§§pop() / this.§9!K§.scale);
                        if(!_loc11_)
                        {
                           addr88:
                           §§push(§§pop() / 2);
                           if(!(_loc11_ && _loc2_))
                           {
                              addr97:
                              §§push(Number(§§pop()));
                           }
                           var _loc4_:* = §§pop();
                           if(_loc10_ || this)
                           {
                              §§push(_loc2_);
                              §§push(this.§9!K§.x);
                              if(!(_loc11_ && this))
                              {
                                 §§push(§§pop() - _loc3_);
                              }
                              §§pop().left = §§pop();
                              if(!(_loc11_ && _loc2_))
                              {
                                 addr127:
                                 §§push(_loc2_);
                                 §§push(this.§9!K§.x);
                                 if(_loc10_ || _loc3_)
                                 {
                                    §§push(§§pop() + _loc3_);
                                 }
                                 §§pop().right = §§pop();
                                 if(_loc10_ || _loc3_)
                                 {
                                    §§push(_loc2_);
                                    §§push(_loc2_.y);
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop() - _loc4_);
                                    }
                                    §§pop().top = §§pop();
                                    if(!(_loc11_ && this))
                                    {
                                       addr163:
                                       §§push(_loc2_);
                                       §§push(_loc2_.y);
                                       if(!_loc11_)
                                       {
                                          §§push(§§pop() + _loc4_);
                                       }
                                       §§pop().bottom = §§pop();
                                    }
                                    §§push(§]$§);
                                    if(!_loc11_)
                                    {
                                       §§push(_loc2_.bottom);
                                       if(_loc10_ || _loc2_)
                                       {
                                          §§push(§§pop() - _loc2_.top);
                                       }
                                       §§push(§§pop() / §§pop());
                                       if(_loc10_ || this)
                                       {
                                          addr194:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc5_:* = §§pop();
                                       §§push(§"b§);
                                       if(_loc10_)
                                       {
                                          §§push(_loc2_.right);
                                          if(_loc10_ || this)
                                          {
                                             §§push(§§pop() - _loc2_.left);
                                          }
                                          §§push(§§pop() / §§pop());
                                          if(!(_loc11_ && _loc2_))
                                          {
                                             addr219:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc6_:* = §§pop();
                                          if(!(_loc11_ && this))
                                          {
                                             _loc2_.scale = Math.min(_loc6_,_loc5_);
                                          }
                                          var _loc7_:§5>§;
                                          (_loc7_ = new §5>§()).id = §7,§;
                                          if(!_loc11_)
                                          {
                                             _loc7_.x = this.§8c§.x;
                                             if(_loc10_)
                                             {
                                                addr260:
                                                _loc7_.y = this.§8c§.y;
                                             }
                                             §§push(§"b§);
                                             if(!_loc11_)
                                             {
                                                §§push(§§pop() / this.§8c§.scale);
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop() / 2);
                                                   if(_loc11_ && this)
                                                   {
                                                   }
                                                   addr284:
                                                   var _loc8_:* = §§pop();
                                                   §§push(§]$§);
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      §§push(§§pop() / this.§8c§.scale);
                                                      if(_loc10_ || param1)
                                                      {
                                                         addr304:
                                                         §§push(§§pop() / 2);
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc9_:* = §§pop();
                                                      §§push(_loc7_);
                                                      §§push(this.§8c§.x);
                                                      if(!(_loc11_ && this))
                                                      {
                                                         §§push(§§pop() - _loc8_);
                                                      }
                                                      §§pop().left = §§pop();
                                                      if(_loc10_)
                                                      {
                                                         §§push(_loc7_);
                                                         §§push(this.§8c§.x);
                                                         if(!(_loc11_ && _loc2_))
                                                         {
                                                            §§push(§§pop() + _loc8_);
                                                         }
                                                         §§pop().right = §§pop();
                                                         if(_loc10_)
                                                         {
                                                            addr347:
                                                            §§push(_loc7_);
                                                            §§push(_loc7_.y);
                                                            if(!(_loc11_ && param1))
                                                            {
                                                               §§push(§§pop() - _loc9_);
                                                            }
                                                            §§pop().top = §§pop();
                                                            if(_loc10_ || this)
                                                            {
                                                               §§push(_loc7_);
                                                               §§push(_loc7_.y);
                                                               if(!(_loc11_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() + _loc9_);
                                                               }
                                                               §§pop().bottom = §§pop();
                                                               if(_loc10_)
                                                               {
                                                                  §§push(§]$§);
                                                                  if(!(_loc11_ && this))
                                                                  {
                                                                     §§push(_loc7_.bottom);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(_loc7_.top);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              addr406:
                                                                              §§push(§§pop() / §§pop());
                                                                              if(_loc10_ || _loc3_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    addr417:
                                                                                    _loc5_ = §§pop();
                                                                                    §§push(§"b§);
                                                                                    if(!(_loc11_ && _loc3_))
                                                                                    {
                                                                                       §§push(_loc7_.right);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          addr430:
                                                                                          §§push(§§pop() - _loc7_.left);
                                                                                       }
                                                                                       §§push(§§pop() / §§pop());
                                                                                       if(_loc10_ || _loc3_)
                                                                                       {
                                                                                          addr441:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       _loc6_ = §§pop();
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          addr455:
                                                                                          _loc7_.scale = Math.min(_loc6_,_loc5_);
                                                                                          if(!(_loc11_ && param1))
                                                                                          {
                                                                                             addr468:
                                                                                             param1.§5j§();
                                                                                             if(_loc10_ || _loc2_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr480);
                                                                                          }
                                                                                          param1.§'_§(_loc2_);
                                                                                          §§goto(addr480);
                                                                                       }
                                                                                       addr480:
                                                                                       param1.§'_§(_loc7_);
                                                                                       return;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr441);
                                                                              }
                                                                              §§goto(addr417);
                                                                           }
                                                                        }
                                                                        §§goto(addr430);
                                                                     }
                                                                     §§goto(addr406);
                                                                  }
                                                                  §§goto(addr417);
                                                               }
                                                               §§goto(addr468);
                                                            }
                                                            §§goto(addr455);
                                                         }
                                                         §§goto(addr468);
                                                      }
                                                      §§goto(addr347);
                                                   }
                                                   §§goto(addr304);
                                                }
                                                §§push(Number(§§pop()));
                                             }
                                             §§goto(addr284);
                                          }
                                          §§goto(addr260);
                                       }
                                       §§goto(addr219);
                                    }
                                    §§goto(addr194);
                                 }
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr88);
                  }
                  §§push(Number(§§pop()));
               }
               §§goto(addr73);
            }
            §§goto(addr49);
         }
         §§goto(addr37);
      }
      
      public function §!1§(param1:§5>§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1.scale);
         if(!(_loc8_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.x);
         if(!(_loc8_ && _loc3_))
         {
            §§push(§=w§.§9!#§ * 0.5);
            if(!(_loc8_ && _loc3_))
            {
               §§push(_loc2_);
               if(!(_loc8_ && _loc3_))
               {
                  §§push(§§pop() / §§pop());
                  if(!(_loc8_ && _loc2_))
                  {
                     addr65:
                     §§push(§§pop() * § !§.§`J§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc8_ && this))
                  {
                     addr74:
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  §§push(param1.y);
                  if(!(_loc8_ && param1))
                  {
                     §§push(§=w§.§0i§ * 0.5);
                     if(_loc7_)
                     {
                        §§push(_loc2_);
                        if(!(_loc8_ && _loc3_))
                        {
                           addr120:
                           §§push(§§pop() / §§pop());
                           if(!(_loc8_ && _loc3_))
                           {
                              §§push(§ !§.§`J§);
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc7_)
                           {
                              addr123:
                              §§push(Number(§§pop()));
                           }
                           var _loc4_:* = §§pop();
                           §§push(_loc3_);
                           if(!_loc8_)
                           {
                              §§push(§=w§.§9!#§ / _loc2_);
                              if(_loc7_)
                              {
                                 §§push(§§pop() * § !§.§`J§);
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc8_ && this))
                              {
                                 addr145:
                                 §§push(Number(§§pop()));
                              }
                              var _loc5_:* = §§pop();
                              §§push(_loc4_);
                              if(!_loc8_)
                              {
                                 §§push(§=w§.§0i§ / _loc2_);
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    §§push(§§pop() * § !§.§`J§);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc8_)
                                 {
                                    addr167:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc6_:* = §§pop();
                                 if(_loc7_)
                                 {
                                    param1.left = _loc3_;
                                    if(!_loc8_)
                                    {
                                       param1.top = _loc4_;
                                       if(!(_loc8_ && _loc2_))
                                       {
                                          addr196:
                                          param1.right = _loc5_;
                                          if(_loc7_ || _loc2_)
                                          {
                                             addr206:
                                             param1.bottom = _loc6_;
                                             if(!_loc7_)
                                             {
                                             }
                                             §§goto(addr214);
                                          }
                                          param1.scale = 0;
                                       }
                                       addr214:
                                       return;
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr145);
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr123);
               }
            }
            §§goto(addr65);
         }
         §§goto(addr74);
      }
      
      protected function §<h§(param1:§for§, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         §§push(_loc3_);
         if(_loc5_ || _loc3_)
         {
            §§push(param2);
            if(!_loc4_)
            {
               §§push(§§pop() * this.§break§);
            }
            _loc3_ = §§pop() + §§pop();
            if(!(_loc4_ && this))
            {
               §§push(_loc3_);
               §§push(§1%§);
               if(_loc5_)
               {
                  if(§§pop() >= §§pop())
                  {
                     _loc3_ = §1%§;
                     if(!_loc4_)
                     {
                        this.§]V§(§3!J§);
                        if(!_loc4_)
                        {
                           addr101:
                           this.mCurrentCameraSliderLocation = _loc3_;
                        }
                        else
                        {
                           addr86:
                           _loc3_ = 0;
                           if(!_loc4_)
                           {
                              this.§]V§(§3!J§);
                              if(_loc5_ || _loc3_)
                              {
                                 §§goto(addr101);
                              }
                           }
                        }
                     }
                     return;
                  }
                  addr82:
                  §§push(_loc3_);
                  §§push(0);
                  §§goto(addr101);
               }
               if(§§pop() <= §§pop())
               {
                  if(_loc5_)
                  {
                     §§goto(addr86);
                  }
               }
            }
            §§goto(addr101);
         }
         §§goto(addr82);
      }
      
      protected function §0f§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(this.mCurrentCameraSliderLocation);
         if(!(_loc6_ && param1))
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               §§push(param1);
               if(!_loc6_)
               {
                  §§push(§§pop() * this.§break§);
               }
               §§push(§§pop() + §§pop());
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc6_ && param1))
                  {
                     addr47:
                     _loc2_ = §§pop();
                     §§push(0.7);
                     if(_loc5_)
                     {
                        addr51:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc3_:* = §§pop();
                  §§push(-§1%§);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop() * _loc3_);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc4_:* = §§pop();
                  §§push(_loc2_);
                  if(!_loc6_)
                  {
                     §§push(§§pop() >= §1%§);
                     if(_loc5_ || this)
                     {
                        if(!§§pop())
                        {
                           if(_loc5_ || _loc2_)
                           {
                              §§pop();
                              §§push(_loc2_);
                              if(!_loc6_)
                              {
                                 addr103:
                                 §§push(_loc4_);
                                 if(!_loc6_)
                                 {
                                    addr107:
                                    if(§§pop() < §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc6_)
                                          {
                                             addr114:
                                             if(§§pop() < _loc4_)
                                             {
                                                if(_loc5_ || param1)
                                                {
                                                   §§push(_loc4_);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         §§goto(addr148);
                                                      }
                                                      else
                                                      {
                                                         addr154:
                                                         _loc2_ = §§pop();
                                                      }
                                                      §§goto(addr155);
                                                   }
                                                   addr148:
                                                   _loc2_ = §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      addr155:
                                                      §§push(this);
                                                      §§push(this.§break§);
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§push(-§§pop());
                                                      }
                                                      §§pop().§break§ = §§pop();
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         addr174:
                                                         this.mCurrentCameraSliderLocation = _loc2_;
                                                      }
                                                      addr151:
                                                   }
                                                   return;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr154);
                                                §§push(Number(§1%§));
                                             }
                                          }
                                          §§goto(addr154);
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr154);
                           }
                        }
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr103);
               }
               §§goto(addr51);
            }
         }
         §§goto(addr47);
      }
      
      protected function §>S§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.mCurrentAction);
         if(_loc3_ || this)
         {
            §§push(§^!9§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop() == §§pop())
               {
                  this.§0f§(param1);
               }
               else
               {
                  §§push(this.mCurrentAction);
                  if(!_loc2_)
                  {
                     §§push(§2Z§);
                     if(_loc3_ || _loc3_)
                     {
                        if(§§pop() == §§pop())
                        {
                           this.§<h§(this.§8c§,param1);
                           if(_loc2_)
                           {
                              addr78:
                              §§push(this);
                              §§push(this.§9!K§);
                              §§push(param1);
                              if(!(_loc2_ && this))
                              {
                                 §§push(-§§pop());
                              }
                              §§pop().§<h§(§§pop(),§§pop());
                           }
                           §§goto(addr128);
                        }
                        else
                        {
                           §§push(this.mCurrentAction);
                           if(_loc3_)
                           {
                              addr74:
                              §§push(§2M§);
                              if(_loc3_)
                              {
                                 addr77:
                                 if(§§pop() == §§pop())
                                 {
                                    §§goto(addr78);
                                 }
                                 else
                                 {
                                    §§push(this.mCurrentAction);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr111:
                                       §§push(§4!I§);
                                       if(!_loc2_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             this.§5!C§ = true;
                                             §§goto(addr128);
                                          }
                                          else
                                          {
                                             §§push(this.mCurrentAction);
                                          }
                                          §§goto(addr128);
                                       }
                                       addr122:
                                       if(§§pop() == §§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             this.§'i§(param1);
                                          }
                                       }
                                       §§goto(addr128);
                                    }
                                    §§push(§4q§);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr122);
                           }
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr111);
               }
               addr128:
               return;
            }
            §§goto(addr77);
         }
         §§goto(addr74);
      }
      
      public function §&!$§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.§1B§)
         {
            this.§>?§ = this.§1B§.x;
            if(!_loc2_)
            {
               this.§+]§ = this.§1B§.y;
               §§push(§§findproperty(§55§));
               §§push(§"b§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(this.§1B§.right);
                  if(_loc3_ || param1)
                  {
                     §§push(§§pop() - this.§1B§.left);
                  }
                  §§push(§§pop() / §§pop());
               }
               §§pop().§55§ = §§pop();
               if(_loc3_)
               {
                  addr99:
                  this.§'S§();
                  if(_loc3_)
                  {
                     addr103:
                     this.§5!K§();
                     if(!_loc2_)
                     {
                        addr107:
                        this.§^a§();
                     }
                  }
                  §§goto(addr107);
               }
               else
               {
                  addr89:
                  this.§>S§(param1);
                  this.§@D§(this.mCurrentCameraSliderLocation,param1);
                  if(_loc3_)
                  {
                     §§goto(addr99);
                  }
               }
               return;
            }
            §§goto(addr103);
         }
         else
         {
            this.§4r§();
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr89);
            }
         }
         §§goto(addr107);
      }
      
      private function §39§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Number = this.§!!<§.scale + (this.§3>§.scale - this.§!!<§.scale) * param1;
         var _loc4_:Number = this.§!!<§.x + (this.§3>§.x - this.§!!<§.x) * param1;
         var _loc5_:Number = this.§!!<§.y + (this.§3>§.y - this.§!!<§.y) * param1;
         if(_loc6_)
         {
            §§push(this.§1!!§);
            if(!_loc7_)
            {
               §§push(this.§1!!§);
               if(!_loc7_)
               {
                  §§push(§§pop().x - (this.§1!!§.x - _loc4_) * param2);
                  if(!_loc7_)
                  {
                     §§pop().x = §§pop();
                     if(_loc6_)
                     {
                        §§push(this.§1!!§);
                        if(!_loc7_)
                        {
                           §§push(this.§1!!§);
                           if(_loc6_)
                           {
                              §§push(§§pop().y - (this.§1!!§.y - _loc5_) * param2);
                              if(!(_loc7_ && param1))
                              {
                                 §§goto(addr129);
                              }
                           }
                        }
                     }
                     §§goto(addr150);
                  }
                  addr129:
                  §§pop().y = §§pop();
                  if(_loc6_ || param1)
                  {
                     addr150:
                     this.§1!!§.scale -= (this.§1!!§.scale - _loc3_) * param2;
                  }
                  return;
               }
            }
         }
         §§goto(addr150);
      }
      
      protected function §16§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         if(!_loc5_)
         {
            §§push(this.§4x§);
            if(!(_loc5_ && param1))
            {
               §§push(0);
               if(_loc4_)
               {
                  if(§§pop() != §§pop())
                  {
                     if(!this.§5!C§)
                     {
                        if(!(_loc5_ && param1))
                        {
                           §§push(Number(1));
                           if(!_loc5_)
                           {
                              addr57:
                              param2 = §§pop();
                              addr58:
                              §§push(param1);
                              if(_loc4_ || this)
                              {
                                 addr66:
                                 §§push(§§pop() / §1%§);
                                 if(!(_loc5_ && param2))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              _loc3_ = §§pop();
                              this.§39§(_loc3_,param2);
                              if(_loc4_ || this)
                              {
                                 this.§>?§ = this.§1!!§.x;
                                 if(_loc4_)
                                 {
                                    addr105:
                                    this.§+]§ = this.§1!!§.y;
                                    §55§ = this.§1!!§.scale;
                                    §§goto(addr115);
                                 }
                                 addr115:
                                 return;
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr66);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr58);
                  }
                  §§goto(addr105);
               }
               §§goto(addr66);
            }
            §§goto(addr57);
         }
         §§goto(addr105);
      }
      
      public function §@D§(param1:Number, param2:Number) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1169
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §,!%§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§&! § = param1;
            if(!(_loc3_ && param2))
            {
               this.§>p§ = param2;
            }
         }
      }
      
      private function §=h§(param1:§=!J§, param2:§for§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         if(!(_loc4_ && this))
         {
            §§push(param1);
            §§push(§[c§);
            if(!_loc4_)
            {
               §§push(param2.scale);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§[c§);
                  if(_loc5_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc4_)
                     {
                        §§push(this.§5I§);
                        if(!_loc4_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc5_ || param2)
                           {
                              addr59:
                              §§push(§§pop() * §`n§.§^c§());
                           }
                        }
                        §§goto(addr59);
                     }
                     addr61:
                     §§pop().scale = §§pop() + §§pop();
                     if(_loc5_ || param1)
                     {
                        §§push(§"b§);
                        if(_loc5_ || this)
                        {
                           §§push(§§pop() / param1.scale);
                           if(!(_loc4_ && param2))
                           {
                              addr97:
                              §§push(this.§>!>§);
                              if(_loc5_)
                              {
                                 §§push(this.§?i§);
                                 if(_loc5_ || param1)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc4_ && this))
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          if(_loc5_ || param2)
                                          {
                                             addr126:
                                             §§push(§"b§);
                                             if(_loc5_)
                                             {
                                                addr129:
                                                §§push(this.§>!>§);
                                                if(!(_loc4_ && this))
                                                {
                                                   addr151:
                                                   §§push(§§pop() / (§§pop() - this.§?i§));
                                                   if(!_loc4_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                §§goto(addr151);
                                             }
                                             _loc3_ = §§pop();
                                             if(!(_loc4_ && this))
                                             {
                                                param1.scale = _loc3_;
                                                if(_loc5_)
                                                {
                                                   addr168:
                                                   §§push(true);
                                                   if(!_loc4_)
                                                   {
                                                      return §§pop();
                                                   }
                                                }
                                                else
                                                {
                                                   addr172:
                                                   §§push(false);
                                                }
                                                return §§pop();
                                             }
                                          }
                                          §§goto(addr168);
                                       }
                                       §§goto(addr172);
                                    }
                                 }
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr126);
                  }
               }
               §§goto(addr59);
            }
            §§goto(addr61);
         }
         §§goto(addr168);
      }
      
      private function §1`§(param1:§=!J§, param2:§for§) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(this.§=h§(param1,param2));
         if(!_loc9_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc8_ || param2)
         {
            param1.y = param2.y;
         }
         var _loc4_:Number = param1.y + §]$§ * 0.5 / param1.scale;
         §§push(§]$§);
         if(_loc8_)
         {
            §§push(§§pop() * 0.25);
            if(_loc8_ || _loc3_)
            {
               addr58:
               §§push(§§pop() / param1.scale);
               if(_loc8_ || this)
               {
                  addr68:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc8_ || this)
               {
                  §§push(_loc4_);
                  if(!_loc9_)
                  {
                     §§push(_loc5_);
                     if(_loc8_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!_loc9_)
                           {
                              param1.y += _loc5_ - _loc4_;
                              if(_loc8_ || param2)
                              {
                                 addr111:
                                 param1.x = param2.x;
                              }
                           }
                           §§push(param1.x - §"b§ * 0.5 / param1.scale);
                           if(_loc8_)
                           {
                              addr126:
                              §§push(Number(§§pop()));
                           }
                           §§push(§§pop());
                        }
                        §§goto(addr111);
                     }
                     var _loc6_:* = §§pop();
                     if(_loc8_ || this)
                     {
                        §§push(this.§?i§);
                        if(!_loc9_)
                        {
                           §§push(§§pop() < §§pop());
                           if(!_loc9_)
                           {
                              if(§§pop())
                              {
                                 if(_loc8_)
                                 {
                                    §§pop();
                                    if(_loc8_ || _loc3_)
                                    {
                                       addr158:
                                       if(param1.§^s§)
                                       {
                                          if(!_loc9_)
                                          {
                                             addr161:
                                             param1.x += this.§?i§ - _loc6_;
                                          }
                                       }
                                       var _loc7_:Number;
                                       §§push((_loc7_ = param1.x + §"b§ * 0.5 / param1.scale) > this.§>!>§);
                                       if(_loc8_ || param2)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                §§pop();
                                                if(_loc8_)
                                                {
                                                   §§push(!param1.§^s§);
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      addr219:
                                                      if(§§pop())
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            param1.x += this.§>!>§ - _loc7_;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr232);
                                                }
                                                addr232:
                                                return §§pop();
                                                §§push(_loc3_);
                                             }
                                             §§goto(addr232);
                                          }
                                          §§goto(addr219);
                                       }
                                       §§goto(addr232);
                                    }
                                    §§goto(addr161);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr126);
               }
               §§goto(addr111);
            }
            §§goto(addr68);
         }
         §§goto(addr58);
      }
      
      private function §[1§(param1:§=!J§, param2:§for§) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.scale - §[c§);
         if(!(_loc4_ && param2))
         {
            §§push(§`n§.§^c§());
            if(!_loc4_)
            {
               §§push(param2.scale);
               if(_loc3_ || param2)
               {
                  §§push(§§pop() - §[c§);
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() / §§pop());
         }
         return §§pop();
      }
      
      protected function §4r§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§1`§(this.§!!<§,this.§9!K§);
         }
         §§push(this.§[1§(this.§!!<§,this.§9!K§));
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            this.§1`§(this.§3>§,this.§8c§);
         }
         §§push(this.§[1§(this.§3>§,this.§8c§));
         if(!(_loc3_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            this.§5I§ = Math.min(_loc1_,_loc2_);
         }
      }
      
      public function §'S§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = NaN;
         if(_loc4_)
         {
            if(this.§?V§.sprite)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§=w§.§0E§());
                  if(_loc4_ || _loc1_)
                  {
                     §§push(§§pop() / §=w§.§continue§);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(§=w§.§0i§);
                        if(!_loc3_)
                        {
                           §§goto(addr61);
                        }
                        addr61:
                        §§push(§§pop() - §§pop());
                        if(!_loc3_)
                        {
                           addr58:
                           §§push(1);
                        }
                        _loc1_ = §§pop();
                        if(_loc4_)
                        {
                           §§push(§§findproperty(§!!7§));
                           §§push(this.§?V§.sprite);
                           §§push(§ !§.§,!=§);
                           if(!_loc3_)
                           {
                              §§push(1 - §`n§.§&"§);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() / 2);
                                 if(_loc4_)
                                 {
                                    addr93:
                                    §§push(§§pop() * §§pop());
                                    §§push(§§pop() * §§pop());
                                 }
                              }
                              var _loc2_:* = §§pop();
                              §§pop().x = §§pop();
                              §§pop().§!!7§ = _loc2_;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr106:
                                 §§push(§§findproperty(§-!N§));
                                 §§push(this.§?V§.sprite);
                                 §§push(_loc1_);
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(§ !§.§+;§);
                                    if(!_loc3_)
                                    {
                                       §§push(1 - §`n§.§&"§);
                                       if(_loc4_)
                                       {
                                          §§goto(addr153);
                                       }
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc3_ && this))
                                       {
                                          addr152:
                                          §§push(§§pop() + §§pop());
                                          §§push(§§pop() + §§pop());
                                       }
                                    }
                                    §§goto(addr153);
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr93);
                        }
                        addr153:
                        §§push(§§pop() * §§pop());
                        if(_loc4_)
                        {
                           §§push(§"6§.§ E§);
                        }
                        _loc2_ = §§pop();
                        §§pop().y = §§pop();
                        §§pop().§-!N§ = _loc2_;
                        return;
                        §§push(Number(§§pop() >> §§pop()));
                     }
                     §§goto(addr58);
                  }
                  §§goto(addr61);
               }
               §§goto(addr106);
            }
            §§goto(addr153);
         }
         §§goto(addr106);
      }
      
      public function §^a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§?V§);
            if(_loc1_)
            {
               §§push(§§pop().sprite);
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        §§push(this.§?V§);
                        if(_loc1_ || _loc1_)
                        {
                           addr72:
                           §§push(§§pop().sprite);
                           if(_loc1_)
                           {
                              addr75:
                              §§push(§&"§);
                              if(_loc1_)
                              {
                                 §§pop().scaleX = §§pop();
                                 §§goto(addr91);
                              }
                              §§pop().scaleY = §§pop();
                              §§goto(addr91);
                           }
                        }
                     }
                     §§goto(addr89);
                  }
                  addr91:
                  if(_loc1_ || this)
                  {
                     addr89:
                     §§push(this.§?V§.sprite);
                     §§push(§&"§);
                  }
                  return;
               }
               §§goto(addr75);
            }
            §§goto(addr72);
         }
         §§goto(addr89);
      }
      
      public function §5!K§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§>?§);
         if(_loc4_ || _loc1_)
         {
            §§push(§ !§.§`J§);
            if(_loc4_)
            {
               §§push(§§pop() / §§pop());
               if(!(_loc3_ && _loc1_))
               {
                  addr40:
                  §§push(§§pop() + this.§&! §);
                  if(_loc4_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc1_:* = §§pop();
               §§push(this.§+]§);
               if(_loc4_)
               {
                  §§push(§ !§.§`J§);
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc3_)
                     {
                        addr68:
                        §§push(§§pop() + this.§>p§);
                        if(_loc4_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc2_:* = §§pop();
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(this);
                        §§push(_loc1_);
                        if(_loc4_)
                        {
                           §§push(§ !§.§,!=§);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() / 2);
                              if(_loc4_ || _loc3_)
                              {
                                 addr102:
                                 §§push(§=w§.§continue§);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr122:
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       §§push(§=w§.§44§);
                                    }
                                    §§pop().§?!A§ = §§pop() - §§pop();
                                    if(_loc4_)
                                    {
                                       §§push(this);
                                       §§push(_loc2_);
                                       if(!_loc3_)
                                       {
                                          §§push(§ !§.§+;§);
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(§§pop() / 2);
                                             if(!_loc3_)
                                             {
                                                addr153:
                                                §§push(§§pop() - §§pop());
                                                if(_loc4_ || _loc3_)
                                                {
                                                   addr163:
                                                   §§push(§§pop() + §"6§.§6!?§);
                                                }
                                                §§pop().§@h§ = §§pop();
                                                if(_loc4_)
                                                {
                                                   §§push(this.§?V§);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop().background);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§push(this.§?V§);
                                                            if(_loc4_)
                                                            {
                                                               addr185:
                                                               §§pop().background.§?!<§(this.§?!A§,this.§@h§);
                                                               addr190:
                                                               §§push(this.§?V§);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(§§pop().objects);
                                                                  if(_loc4_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§push(this.§?V§);
                                                                        if(_loc4_)
                                                                        {
                                                                           addr203:
                                                                           §§pop().objects.§?!<§(this.§?!A§,this.§@h§);
                                                                           addr208:
                                                                           if(this.§?V§.§'O§)
                                                                           {
                                                                              this.§",§();
                                                                              addr214:
                                                                              §§push(this.§?V§.slingshot);
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr230:
                                                                                       this.§?V§.slingshot.§?!<§(this.§?!A§,this.§@h§);
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          addr242:
                                                                                          §§push(this.§?V§);
                                                                                          if(!(_loc3_ && this))
                                                                                          {
                                                                                             §§push(§§pop().particles);
                                                                                             if(_loc4_ || this)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr285);
                                                                                             }
                                                                                             §§pop().§?!<§(this.§?!A§,this.§@h§);
                                                                                             §§goto(addr285);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr279);
                                                                                    }
                                                                                    addr285:
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       addr279:
                                                                                       §§push(this.§?V§.particles);
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr242);
                                                                              }
                                                                              §§goto(addr230);
                                                                           }
                                                                           §§goto(addr214);
                                                                        }
                                                                        §§goto(addr279);
                                                                     }
                                                                     §§goto(addr208);
                                                                  }
                                                               }
                                                               §§goto(addr203);
                                                            }
                                                            §§goto(addr214);
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr153);
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr214);
                                 }
                                 §§push(§§pop() / §§pop());
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr185);
                  }
               }
               §§goto(addr68);
            }
         }
         §§goto(addr40);
      }
      
      protected function §",§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§?V§.§'O§.§?!<§(this.§?!A§,this.§@h§,§55§);
         }
      }
      
      protected function §6;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§]V§(§4q§);
         }
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§[#§ = -1;
            if(_loc4_)
            {
               this.§6;§();
               if(_loc4_ || _loc3_)
               {
                  §§push(this);
                  §§push(this);
                  §§push(this.§7"§ = param1);
                  if(!(_loc5_ && param1))
                  {
                     var _loc3_:*;
                     §§push(_loc3_ = §§pop());
                  }
                  §§pop().§8G§ = §§pop();
                  §§pop().§;B§ = _loc3_;
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(this);
                     §§push(this);
                     §§push(this.§ !M§ = param2);
                     if(_loc4_ || param2)
                     {
                        §§push(_loc3_ = §§pop());
                     }
                     §§pop().§6i§ = §§pop();
                     §§pop().§@!I§ = _loc3_;
                     if(_loc4_)
                     {
                        addr85:
                        this.§0r§ = 0;
                        if(!(_loc5_ && param1))
                        {
                           §§push(this.§1!!§);
                           if(_loc4_)
                           {
                              §§push(this.§>?§);
                              if(!(_loc5_ && param2))
                              {
                                 §§pop().x = §§pop();
                                 §§push(this.§1!!§);
                                 if(!(_loc5_ && param2))
                                 {
                                    §§push(this.§+]§);
                                    if(_loc4_)
                                    {
                                       addr132:
                                       §§pop().y = §§pop();
                                       addr135:
                                       §§push(this.§1!!§);
                                       §§push(§55§);
                                    }
                                    §§pop().scale = §§pop();
                                    if(_loc4_)
                                    {
                                       addr139:
                                       this.§<f§ = §55§;
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(Math.abs(this.§3>§.x - this.§!!<§.x) > 0.001)
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                addr167:
                                                §§push(this);
                                                §§push(this.§>?§);
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() - this.§!!<§.x);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      §§push(§§pop() / (this.§3>§.x - this.§!!<§.x));
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() * §1%§);
                                                      }
                                                   }
                                                }
                                                §§pop().mCurrentCameraSliderLocation = §§pop();
                                                if(!_loc4_)
                                                {
                                                }
                                                §§goto(addr211);
                                             }
                                          }
                                          this.mDragging = true;
                                       }
                                    }
                                    addr211:
                                    return;
                                 }
                                 §§goto(addr135);
                              }
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr85);
               }
               §§goto(addr132);
            }
            §§goto(addr167);
         }
         §§goto(addr85);
      }
      
      public function §'i§(param1:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = Number(this.mCurrentCameraSliderLocation);
         if(!(_loc5_ && _loc2_))
         {
            §§push(this);
            §§push(this.§0r§);
            if(!_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§0r§ = §§pop();
         }
         §§push(this.§;B§);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop() - this.§8G§);
            if(_loc4_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this.§4x§);
            §§push(0);
            if(!(_loc5_ && this))
            {
               if(§§pop() > §§pop())
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(_loc2_);
                     §§push(_loc3_);
                     §§push(§ !§.§`J§);
                     if(_loc4_ || this)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_ || this)
                        {
                           §§push(§&"§);
                           if(_loc4_)
                           {
                              §§push(§§pop() / §§pop());
                              if(!(_loc5_ && this))
                              {
                                 §§goto(addr205);
                              }
                              §§push(§§pop() - §§pop());
                              if(_loc4_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc2_ = §§pop();
                              if(!_loc5_)
                              {
                                 this.§5!C§ = false;
                                 §§push(_loc2_);
                                 if(_loc4_)
                                 {
                                    §§push(0);
                                    if(_loc4_ || param1)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          §§push(_loc2_);
                                          if(_loc4_)
                                          {
                                             §§push(_loc2_);
                                             §§push(0.3);
                                             if(_loc4_ || this)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   addr170:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc4_)
                                                   {
                                                      _loc2_ = Number(§§pop());
                                                      this.§5!C§ = true;
                                                      addr179:
                                                      §§push(_loc2_);
                                                      §§push(§1%§);
                                                      if(!_loc5_)
                                                      {
                                                         addr182:
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               addr202:
                                                               addr205:
                                                               addr206:
                                                               §§push(this.§4x§);
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  addr125:
                                                                  §§push(§§pop() / §§pop() * §1%§);
                                                               }
                                                               §§push(§§pop() + §§pop() * §§pop());
                                                               if(!_loc5_)
                                                               {
                                                                  addr209:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               _loc2_ = §§pop();
                                                               this.§5!C§ = true;
                                                               if(_loc4_ || param1)
                                                               {
                                                                  addr221:
                                                                  this.mCurrentCameraSliderLocation = _loc2_;
                                                                  §§goto(addr224);
                                                               }
                                                               addr224:
                                                               this.§8G§ = this.§;B§;
                                                               return;
                                                               §§push(_loc2_);
                                                               §§push(§1%§ - _loc2_);
                                                               §§push(0.3);
                                                            }
                                                            §§goto(addr224);
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                   §§goto(addr209);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr205);
                                          }
                                       }
                                       §§goto(addr179);
                                    }
                                    §§goto(addr182);
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr170);
                     }
                  }
                  §§goto(addr205);
               }
               §§goto(addr221);
            }
            §§goto(addr202);
         }
         §§goto(addr221);
      }
      
      protected function §&9§() : Boolean
      {
         return this.mCurrentAction == §4q§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(this.mDragging)
            {
               if(!_loc4_)
               {
                  this.§;B§ = param1;
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr46);
               }
               this.§@!I§ = param2;
            }
         }
         addr46:
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         §§push(this.mCurrentAction);
         if(_loc4_)
         {
            §§push(§4q§);
            if(_loc4_)
            {
               if(§§pop() == §§pop())
               {
                  this.§]V§(§3!J§);
                  §§push(param1);
                  §§push(0);
                  if(_loc4_)
                  {
                     if(§§pop() > §§pop())
                     {
                        this.§;B§ = param1;
                        if(!_loc5_)
                        {
                           addr39:
                           §§push(Number(Math.abs(this.§;B§ - this.§7"§)));
                           if(!(_loc5_ && _loc3_))
                           {
                              _loc3_ = §§pop();
                              if(!(_loc5_ && param1))
                              {
                                 §§push(this.§0r§);
                                 if(!_loc5_)
                                 {
                                    §§push(§5O§);
                                    if(!_loc5_)
                                    {
                                       addr69:
                                       §§push(§§pop() < §§pop());
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(§§pop());
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   §§pop();
                                                   §§push(_loc3_);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      §§push(§'t§);
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         §§push(§§pop() >= §§pop());
                                                         if(_loc5_)
                                                         {
                                                         }
                                                         addr122:
                                                         §§pop();
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc4_)
                                                            {
                                                               addr143:
                                                               §§push(§#2§);
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§§pop() * this.§0r§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(§§pop() / 1000);
                                                                     if(_loc4_)
                                                                     {
                                                                        addr155:
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           §§push(this.§;B§);
                                                                           if(_loc4_ || param2)
                                                                           {
                                                                              addr168:
                                                                              if(§§pop() < this.§7"§)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    this.§]V§(§2Z§);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr180:
                                                                                       §§push(this);
                                                                                       §§push(_loc3_);
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop() / this.§0r§);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(§§pop() * 10);
                                                                                          }
                                                                                       }
                                                                                       §§pop().§break§ = §§pop();
                                                                                       this.§5!C§ = false;
                                                                                       §§push(this.mCurrentCameraSliderLocation);
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          addr209:
                                                                                          §§push(0);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr212:
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr215:
                                                                                                   this.§5!C§ = true;
                                                                                                   addr218:
                                                                                                   §§push(this.mCurrentCameraSliderLocation);
                                                                                                   §§push(§1%§);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr218);
                                                                                          }
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                this.§5!C§ = true;
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr292:
                                                                                                   this.mDragging = false;
                                                                                                   return;
                                                                                                   addr234:
                                                                                                }
                                                                                                §§goto(addr292);
                                                                                             }
                                                                                             addr241:
                                                                                             this.§break§ = §1%§ / (§1%§ / 500);
                                                                                             this.§5!C§ = true;
                                                                                             §§goto(addr292);
                                                                                          }
                                                                                          §§goto(addr234);
                                                                                       }
                                                                                       §§goto(addr218);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr215);
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.§]V§(§2M§);
                                                                              }
                                                                              §§goto(addr180);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr237:
                                                                              if(§§pop() < §%=§)
                                                                              {
                                                                                 this.§1!,§();
                                                                                 §§goto(addr241);
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.§'i§(0);
                                                                                 this.§%§(0);
                                                                                 addr255:
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    this.§break§ = §1%§ / (§1%§ / 500);
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       this.§5!C§ = true;
                                                                                       §§goto(addr292);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr292);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr237);
                                                                           §§push(this.§0r§);
                                                                        }
                                                                        §§goto(addr237);
                                                                     }
                                                                     §§goto(addr168);
                                                                  }
                                                                  §§goto(addr155);
                                                               }
                                                            }
                                                            §§goto(addr237);
                                                         }
                                                         §§goto(addr255);
                                                      }
                                                      §§goto(addr237);
                                                   }
                                                   §§goto(addr143);
                                                }
                                                §§goto(addr122);
                                             }
                                             §§push(§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§goto(addr122);
                                             }
                                          }
                                          §§goto(addr155);
                                       }
                                       §§goto(addr122);
                                    }
                                 }
                                 §§goto(addr237);
                              }
                              §§goto(addr255);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr39);
                  }
                  §§goto(addr69);
               }
               §§goto(addr292);
            }
            §§goto(addr212);
         }
         §§goto(addr209);
      }
      
      public function §1!,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.mCurrentAction);
            if(!_loc1_)
            {
               §§push(§2Z§);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc1_)
                     {
                        this.§]V§(§2M§);
                     }
                     else
                     {
                        addr113:
                        this.§]V§(§2Z§);
                     }
                  }
                  else
                  {
                     §§push(this.mCurrentAction);
                     if(!(_loc1_ && this))
                     {
                        §§push(§2M§);
                        if(_loc2_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc1_)
                              {
                                 this.§]V§(§2Z§);
                              }
                              else
                              {
                                 addr106:
                              }
                           }
                           else
                           {
                              §§push(this.mCurrentCameraSliderLocation);
                              if(!_loc1_)
                              {
                                 addr71:
                                 §§push(§1%§);
                                 if(!(_loc1_ && this))
                                 {
                                    §§push(2);
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(_loc2_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                addr103:
                                                this.§]V§(§2M§);
                                             }
                                             §§goto(addr106);
                                          }
                                          else
                                          {
                                             addr111:
                                             §§push(this.mCurrentCameraSliderLocation);
                                             §§push(§1%§ / 2);
                                          }
                                          §§goto(addr116);
                                       }
                                       if(§§pop() <= §§pop())
                                       {
                                          §§goto(addr113);
                                       }
                                       §§goto(addr116);
                                    }
                                 }
                              }
                              §§goto(addr111);
                           }
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr71);
                  }
                  addr116:
                  return;
               }
               §§goto(addr111);
            }
            §§goto(addr71);
         }
         §§goto(addr103);
      }
      
      public function §%§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[#§ = param1;
            if(_loc2_ || _loc2_)
            {
               if(this.mCurrentCameraSliderLocation < §1%§ / 2)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr61:
                     this.§]V§(§2M§);
                     if(_loc3_)
                     {
                     }
                  }
               }
               else
               {
                  this.§]V§(§2Z§);
               }
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function goToBirdView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§]V§(§2M§);
         }
      }
      
      public function goToCastleView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§]V§(§2Z§);
         }
      }
      
      public function §]V§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§1!!§);
            if(!(_loc3_ && param1))
            {
               §§push(this.§>?§);
               if(!_loc3_)
               {
                  §§pop().x = §§pop();
                  if(_loc2_)
                  {
                     §§push(this.§1!!§);
                     if(!_loc3_)
                     {
                        addr48:
                        §§push(this.§+]§);
                        if(_loc2_ || param1)
                        {
                           addr67:
                           §§pop().y = §§pop();
                           §§goto(addr94);
                        }
                        §§pop().scale = §§pop();
                        if(_loc2_ || _loc2_)
                        {
                           this.§<f§ = §55§;
                           if(!_loc3_)
                           {
                              addr91:
                              this.mCurrentAction = param1;
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr77);
                  }
                  addr94:
                  if(!(_loc3_ && param1))
                  {
                     addr77:
                     §§push(this.§1!!§);
                     §§push(§55§);
                  }
                  return;
               }
               §§goto(addr67);
            }
            §§goto(addr48);
         }
         §§goto(addr91);
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.mCurrentCameraSliderLocation);
            if(_loc2_ || param1)
            {
               §§push(§1%§);
               if(!_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_ || this)
                     {
                        addr63:
                        §§push(true);
                        if(_loc2_ || param1)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr80:
                        §§push(true);
                        if(_loc3_)
                        {
                           §§goto(addr85);
                        }
                     }
                     return §§pop();
                  }
                  addr77:
                  addr76:
                  if(this.mCurrentAction == §2Z§)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr80);
                     }
                     §§goto(addr85);
                  }
                  §§push(false);
                  addr85:
                  return §§pop();
               }
               §§goto(addr77);
            }
            §§goto(addr76);
         }
         §§goto(addr63);
      }
      
      public function §9_§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.mCurrentCameraSliderLocation);
            if(_loc2_)
            {
               if(§§pop() == 0)
               {
                  if(!_loc3_)
                  {
                     §§push(true);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr57:
                     addr59:
                     if(this.mCurrentAction == §2M§)
                     {
                        if(_loc2_ || param1)
                        {
                           addr68:
                           §§push(true);
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr73);
                     }
                     §§push(false);
                  }
                  addr73:
                  return §§pop();
               }
               §§goto(addr57);
            }
            §§goto(addr59);
         }
         §§goto(addr68);
      }
      
      public function §`x§(param1:§5>§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§1B§ = param1;
         if(this.§1B§ != null)
         {
            this.§1H§ = new §5>§();
            if(!(_loc3_ && param1))
            {
               §§push(this.§1H§);
               if(_loc2_)
               {
                  §§push(this.§>?§);
                  if(_loc2_ || _loc2_)
                  {
                     §§pop().x = §§pop();
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(this.§1H§);
                        if(_loc2_)
                        {
                           §§push(this.§+]§);
                           if(_loc2_ || param1)
                           {
                              §§pop().y = §§pop();
                              addr81:
                              §§push(this.§1H§);
                              §§push(§55§);
                           }
                        }
                     }
                     §§goto(addr81);
                  }
                  §§pop().scale = §§pop();
                  if(!_loc2_)
                  {
                     addr108:
                     §55§ = this.§1H§.scale;
                     if(!(_loc3_ && _loc3_))
                     {
                        this.§1H§ = null;
                     }
                  }
                  return;
               }
            }
            §§goto(addr81);
         }
         else
         {
            this.§>?§ = this.§1H§.x;
            if(!_loc3_)
            {
               this.§+]§ = this.§1H§.y;
            }
         }
         §§goto(addr108);
      }
      
      protected function §=>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.isOnCastleView())
            {
               if(!_loc1_)
               {
                  addr24:
                  this.goToCastleView();
                  if(!_loc2_)
                  {
                  }
               }
            }
            else
            {
               this.goToBirdView();
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§5I§);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && this))
         {
            if(param1)
            {
               addr32:
               §§push(_loc3_);
               if(_loc5_ || param1)
               {
                  §§push(param2);
                  if(_loc5_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc5_)
                     {
                        addr57:
                        _loc3_ = Number(§§pop());
                        if(!_loc4_)
                        {
                           addr100:
                           _loc3_ = Number(Math.max(this.§0g§,Math.min(this.§'!D§,_loc3_)));
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr100);
                  }
                  addr104:
                  if(_loc3_ != this.§5I§)
                  {
                     if(_loc5_)
                     {
                        this.§5I§ = _loc3_;
                     }
                     this.§=>§();
                  }
                  return;
               }
               §§goto(addr57);
            }
            else
            {
               §§push(_loc3_);
               if(_loc5_ || param1)
               {
                  §§push(param2);
                  if(!(_loc4_ && param2))
                  {
                     addr89:
                     _loc3_ = Number(§§pop() - §§pop());
                     §§goto(addr100);
                  }
                  §§goto(addr57);
               }
               §§goto(addr89);
            }
         }
         §§goto(addr32);
      }
      
      public function §[$§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§^!4§);
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§0g§);
            if(!(_loc1_ && this))
            {
               §§push(§§pop() - §§pop());
               if(!_loc1_)
               {
                  addr58:
                  §§push(this.§'!D§);
                  if(_loc2_ || _loc1_)
                  {
                     addr70:
                     §§push(§§pop() / (§§pop() - this.§0g§));
                  }
                  §§goto(addr70);
               }
               return §§pop();
            }
            §§goto(addr70);
         }
         §§goto(addr58);
      }
      
      public function §]!K§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(Math.min(Math.max(param1,0),1) * (this.§'!D§ - this.§0g§));
            if(!_loc3_)
            {
               §§push(§§pop() + this.§0g§);
            }
            §§pop().§^!4§ = §§pop();
         }
      }
      
      public function §"!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§5I§ = Math.max(this.§5I§ - 0.5,0.5);
         }
      }
      
      public function §?!$§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(_loc2_ || _loc1_)
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc1_))
            {
               §§push(" mManualScale: ");
               if(_loc2_ || _loc2_)
               {
                  §§push(this.§5I§);
                  if(_loc2_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc2_ || _loc3_)
                        {
                           §§push(§§pop());
                           if(!_loc3_)
                           {
                              _loc1_ = §§pop();
                              §§push(_loc1_);
                              if(_loc2_)
                              {
                                 §§push(" mXcenterB2: ");
                                 if(_loc2_ || this)
                                 {
                                    §§push(§§pop() + (§§pop() + this.§>?§));
                                    if(!_loc3_)
                                    {
                                       addr77:
                                       §§push(§§pop());
                                       if(_loc2_)
                                       {
                                          _loc1_ = §§pop();
                                          if(!_loc3_)
                                          {
                                             §§push(_loc1_);
                                             if(_loc2_)
                                             {
                                                §§push(" mYcenterB2: ");
                                                §§push(this.§+]§);
                                                if(_loc2_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc3_)
                                                      {
                                                         _loc1_ = §§pop();
                                                         if(_loc2_)
                                                         {
                                                            §§push(_loc1_);
                                                            §§push(" mXcenterB2target: ");
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               §§push(§§pop() + this.§5I§);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc3_)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     §§push(_loc1_);
                                                                     §§push("\n mYcenterB2target: ");
                                                                     if(_loc2_ || _loc1_)
                                                                     {
                                                                        §§push(this.§5I§);
                                                                        if(_loc2_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() + (§§pop() + §§pop()));
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr147:
                                                                              §§push(§§pop());
                                                                              if(_loc2_ || _loc1_)
                                                                              {
                                                                                 _loc1_ = §§pop();
                                                                                 §§push(_loc1_);
                                                                                 if(_loc2_ || _loc1_)
                                                                                 {
                                                                                    §§push(" mXcenterB2previous: ");
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       §§push(this.§5I§);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(§§pop() + (§§pop() + §§pop()));
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             _loc1_ = §§pop();
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                §§push(_loc1_);
                                                                                                if(_loc2_ || _loc2_)
                                                                                                {
                                                                                                   addr200:
                                                                                                   §§push(" mYcenterB2previous: " + this.§5I§);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc2_ || _loc3_)
                                                                                                         {
                                                                                                            _loc1_ = §§pop();
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               §§push(_loc1_);
                                                                                                               §§push(" mTimeNeededForCameraMovement: ");
                                                                                                               §§push(this.§5I§);
                                                                                                               if(_loc2_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     addr233:
                                                                                                                     _loc1_ = §§pop();
                                                                                                                     §§push(_loc1_);
                                                                                                                     if(!(_loc3_ && this))
                                                                                                                     {
                                                                                                                        §§push(" mTimeUsedForCameraMovement: ");
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + this.§5I§);
                                                                                                                           if(!(_loc3_ && _loc1_))
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc1_);
                                                                                                                                    §§push("\n mTimeNeededForScaleMovement: ");
                                                                                                                                    §§push(this.§5I§);
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!(_loc3_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc3_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(!(_loc3_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                if(_loc2_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                   §§push(" mTimeUsedForScaleMovement: ");
                                                                                                                                                   if(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr304:
                                                                                                                                                      §§push(this.§5I§);
                                                                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         _loc1_ = §§pop() + (§§pop() + §§pop());
                                                                                                                                                         if(_loc2_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr328:
                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                            §§push(" mTargetScale: " + this.§5I§);
                                                                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               addr336:
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     _loc1_ = §§pop();
                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(" mTargetScalePrevious: ");
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + (§§pop() + this.§5I§));
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr360:
                                                                                                                                                                              _loc1_ = §§pop();
                                                                                                                                                                              if(!(_loc3_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(" mCastleCameraX: ");
                                                                                                                                                                                    if(_loc2_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§5I§);
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr391:
                                                                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                                                                addr390:
                                                                                                                                                                                                if(_loc2_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                                                                   if(!(_loc3_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push("\n mCastleCameraY: ");
                                                                                                                                                                                                      if(!(_loc3_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr427:
                                                                                                                                                                                                         _loc1_ = §§pop() + (§§pop() + this.§5I§);
                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr433);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr841);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr512);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr769);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr747);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr446);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr841);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr744);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr669);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr684);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr694);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr436);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr666);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr841);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr649);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr427);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr731);
                                                                                                                                                }
                                                                                                                                                addr433:
                                                                                                                                                §§push(_loc1_);
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   addr436:
                                                                                                                                                   §§push(" mCastleCameraScale: ");
                                                                                                                                                   if(!(_loc3_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr446:
                                                                                                                                                      §§push(§§pop() + this.§5I§);
                                                                                                                                                      if(!(_loc3_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         _loc1_ = §§pop() + §§pop();
                                                                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            addr464:
                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(" mBirdCameraX: ");
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§5I§);
                                                                                                                                                                  if(_loc2_ || _loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     addr479:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(_loc2_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr490:
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc1_ = §§pop();
                                                                                                                                                                              if(_loc2_ || _loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr501:
                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                 if(!(_loc3_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr509:
                                                                                                                                                                                    §§push(" mBirdCameraY: ");
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr512:
                                                                                                                                                                                       §§push(§§pop() + this.§5I§);
                                                                                                                                                                                       if(_loc2_ || _loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc1_ = §§pop();
                                                                                                                                                                                             if(!(_loc3_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr534:
                                                                                                                                                                                                §§push(_loc1_);
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(" mBirdCameraScale: ");
                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§5I§);
                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr544:
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            if(_loc2_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr555:
                                                                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                                                                               if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr567);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr786);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr778);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr665);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr694);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr731);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr662);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr744);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr694);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr769);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr747);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr796);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr841);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr778);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr649);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr731);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr700);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr544);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr801);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr577);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr626);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr662);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr512);
                                                                                                                                                }
                                                                                                                                                §§goto(addr567);
                                                                                                                                             }
                                                                                                                                             addr567:
                                                                                                                                             §§push("\n mScreenLeftScroll: ");
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                addr570:
                                                                                                                                                §§push(§§pop() + (§§pop() + this.§5I§));
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   addr577:
                                                                                                                                                   _loc1_ = §§pop();
                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                   §§push(" mScreenTopScroll: " + this.§5I§);
                                                                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         _loc1_ = §§pop();
                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(" mDragging: ");
                                                                                                                                                            if(_loc2_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr606:
                                                                                                                                                               §§push(this.§5I§);
                                                                                                                                                               if(_loc2_ || _loc1_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                  if(_loc2_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr625:
                                                                                                                                                                     _loc1_ = §§pop();
                                                                                                                                                                     addr626:
                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr630);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr786);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr841);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr842);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr810);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr778);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr841);
                                                                                                                                                }
                                                                                                                                                §§goto(addr709);
                                                                                                                                             }
                                                                                                                                             addr630:
                                                                                                                                             §§push(§§pop() + (" mDraggingPointPreviousX: " + this.§5I§));
                                                                                                                                             if(!(_loc3_ && _loc1_))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(!(_loc3_ && this))
                                                                                                                                                {
                                                                                                                                                   addr649:
                                                                                                                                                   _loc1_ = §§pop();
                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                   §§push(" mDraggingPointPreviousY: ");
                                                                                                                                                   if(_loc2_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr662:
                                                                                                                                                      §§push(§§pop() + (§§pop() + this.§5I§));
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr666:
                                                                                                                                                         _loc1_ = §§pop();
                                                                                                                                                         addr665:
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr669:
                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push("\n mDraggingPointCurrentX: " + this.§5I§);
                                                                                                                                                               if(_loc2_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr684:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(_loc2_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc1_ = §§pop();
                                                                                                                                                                     addr694:
                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                     §§push(" mDraggingPointCurrentY: ");
                                                                                                                                                                     §§push(this.§5I§);
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr700:
                                                                                                                                                                        §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                        if(!(_loc3_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr709:
                                                                                                                                                                           _loc1_ = §§pop();
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr713:
                                                                                                                                                                              §§push(_loc1_);
                                                                                                                                                                              §§push(" mDraggingPointOriginalX: ");
                                                                                                                                                                              if(!(_loc3_ && _loc1_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr721);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr731);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr837);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr731);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr764);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr841);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr731);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr694);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr787);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr801);
                                                                                                                                                   }
                                                                                                                                                   addr721:
                                                                                                                                                   §§push(this.§5I§);
                                                                                                                                                   if(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr728:
                                                                                                                                                      _loc1_ = §§pop() + (§§pop() + §§pop());
                                                                                                                                                      addr731:
                                                                                                                                                      §§push(_loc1_);
                                                                                                                                                      §§push(" mDraggingPointOriginalY: " + this.§5I§);
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr744:
                                                                                                                                                               §§push(" mDraggingTimer: ");
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr747:
                                                                                                                                                                  §§push(§§pop() + (§§pop() + this.§5I§));
                                                                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr759:
                                                                                                                                                                     _loc1_ = §§pop();
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr769:
                                                                                                                                                                        _loc1_ += "\n mCameraBorderLeft: " + this.§5I§;
                                                                                                                                                                        addr764:
                                                                                                                                                                        if(!(_loc3_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr778:
                                                                                                                                                                           §§push(_loc1_);
                                                                                                                                                                           §§push(" mCameraBorderRight: " + this.§5I§);
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr786:
                                                                                                                                                                              _loc1_ = §§pop() + §§pop();
                                                                                                                                                                              addr787:
                                                                                                                                                                              §§push(_loc1_);
                                                                                                                                                                              §§push(" mCameraBorderSky: ");
                                                                                                                                                                              if(_loc2_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 addr796:
                                                                                                                                                                                 §§push(§§pop() + this.§5I§);
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr801:
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(!(_loc3_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr810:
                                                                                                                                                                                       _loc1_ = §§pop();
                                                                                                                                                                                       if(_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr813:
                                                                                                                                                                                          §§push(_loc1_);
                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(" mCameraBorderGround: ");
                                                                                                                                                                                             §§push(this.§5I§);
                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr832);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr841);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr854:
                                                                                                                                                                                       §§goto(addr841);
                                                                                                                                                                                       §§push(_loc1_);
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                                                                    §§goto(addr854);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr832);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr801);
                                                                                                                                                                              addr784:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr844);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr854);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr813);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr845);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr764);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr759);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr838);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr747);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr832);
                                                                                                                                                }
                                                                                                                                                §§goto(addr759);
                                                                                                                                             }
                                                                                                                                             addr832:
                                                                                                                                             §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                addr841:
                                                                                                                                                addr844:
                                                                                                                                                addr845:
                                                                                                                                                addr838:
                                                                                                                                                addr837:
                                                                                                                                                addr842:
                                                                                                                                                §§push(_loc1_ + (" mPigsAreOnRight: " + this.§5I§ + "\n "));
                                                                                                                                                if(_loc2_ || this)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                §§goto(addr855);
                                                                                                                                             }
                                                                                                                                             addr855:
                                                                                                                                             return §§pop();
                                                                                                                                          }
                                                                                                                                          §§goto(addr390);
                                                                                                                                       }
                                                                                                                                       §§goto(addr662);
                                                                                                                                    }
                                                                                                                                    §§goto(addr479);
                                                                                                                                 }
                                                                                                                                 §§goto(addr669);
                                                                                                                              }
                                                                                                                              §§goto(addr509);
                                                                                                                           }
                                                                                                                           §§goto(addr446);
                                                                                                                        }
                                                                                                                        §§goto(addr606);
                                                                                                                     }
                                                                                                                     §§goto(addr391);
                                                                                                                  }
                                                                                                                  §§goto(addr731);
                                                                                                               }
                                                                                                               §§goto(addr328);
                                                                                                            }
                                                                                                            §§goto(addr769);
                                                                                                         }
                                                                                                         §§goto(addr709);
                                                                                                      }
                                                                                                      §§goto(addr490);
                                                                                                   }
                                                                                                   §§goto(addr304);
                                                                                                }
                                                                                                §§goto(addr625);
                                                                                             }
                                                                                             §§goto(addr464);
                                                                                          }
                                                                                          §§goto(addr778);
                                                                                       }
                                                                                       §§goto(addr200);
                                                                                    }
                                                                                    §§goto(addr784);
                                                                                 }
                                                                                 §§goto(addr709);
                                                                              }
                                                                              §§goto(addr728);
                                                                           }
                                                                           §§goto(addr555);
                                                                        }
                                                                        §§goto(addr700);
                                                                     }
                                                                     §§goto(addr570);
                                                                  }
                                                                  §§goto(addr360);
                                                               }
                                                               §§goto(addr769);
                                                            }
                                                            §§goto(addr721);
                                                         }
                                                         §§goto(addr534);
                                                      }
                                                      §§goto(addr694);
                                                   }
                                                   §§goto(addr801);
                                                }
                                                §§goto(addr544);
                                             }
                                             §§goto(addr233);
                                          }
                                          §§goto(addr769);
                                       }
                                       §§goto(addr709);
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr336);
                              }
                              §§goto(addr810);
                           }
                           §§goto(addr769);
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr841);
                  }
                  §§goto(addr427);
               }
               §§goto(addr747);
            }
            §§goto(addr713);
         }
         §§goto(addr501);
      }
      
      public function §#r§() : Number
      {
         return this.§>?§;
      }
      
      public function §!!,§() : Number
      {
         return this.§+]§;
      }
   }
}
