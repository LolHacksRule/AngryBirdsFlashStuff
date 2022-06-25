package §3c§
{
   import §+!?§.§"h§;
   import §3G§.§!E§;
   import §3G§.§-s§;
   import §8u§.§0r§;
   import §=!B§.§<!-§;
   import §=!B§.§^!9§;
   import §>K§.§9X§;
   
   public class §^z§
   {
      
      public static const §6!$§:Number = 1.25;
      
      public static const §5?§:Number = 0.15;
      
      public static const §=u§:Number;
      
      public static const §'f§:Number;
      
      public static const §,!2§:Number = 0.1;
      
      public static const §`!3§:int = 1500;
      
      public static const §%0§:int = 10;
      
      public static const §81§:int = 15;
      
      public static const §<d§:int = 300;
      
      public static const §switch§:int = 1000;
      
      public static const §>!I§:int = 10000;
      
      public static const §3@§:int = 200.0;
      
      public static const §,s§:int = 0;
      
      public static const §;!%§:int = 1;
      
      public static const §`A§:int = 2;
      
      public static const §6!G§:int = 3;
      
      public static const §7!F§:int = 4;
      
      public static const §@h§:int = 5;
      
      public static const §,z§:String = "CASTLE";
      
      public static const §,!4§:String = "SLINGSHOT";
      
      protected static var §+!-§:Number;
      
      public static var §<H§:Number;
      
      public static var §#&§:Number;
      
      public static const §6t§:Number = 2000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §6!$§ = 1.25;
            §5?§ = 0.15;
            §=u§ = §"h§.§4T§ * §!E§.§#N§;
            if(!(_loc2_ && §^z§))
            {
               §'f§ = §"h§.§0!$§ * §!E§.§#N§;
               if(!_loc2_)
               {
                  §,!2§ = 0.1;
                  §`!3§ = 1500;
                  if(!(_loc2_ && _loc1_))
                  {
                     §%0§ = 10;
                     §81§ = 15;
                     addr81:
                     §<d§ = 300;
                     §switch§ = 1000;
                     §>!I§ = 10000;
                     if(!(_loc2_ && §^z§))
                     {
                        §3@§ = §>!I§ / 50;
                        addr102:
                        §,s§ = 0;
                        if(!(_loc2_ && §^z§))
                        {
                           §;!%§ = 1;
                           §`A§ = 2;
                           §§goto(addr118);
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr128);
                  }
                  addr118:
                  §6!G§ = 3;
                  if(_loc1_ || §^z§)
                  {
                     §7!F§ = 4;
                     addr128:
                     if(_loc1_ || _loc2_)
                     {
                        addr148:
                        §@h§ = 5;
                        if(!_loc2_)
                        {
                           §,z§ = "CASTLE";
                        }
                        §§goto(addr156);
                     }
                     §6t§ = 2000;
                  }
                  §§goto(addr156);
               }
               §§goto(addr81);
            }
            §§goto(addr102);
         }
         addr156:
         if(_loc1_ || _loc1_)
         {
         }
      }
      
      private var §%p§:Number = 1.0;
      
      private var §<x§:Number = 0.2;
      
      protected var §]!=§:Number;
      
      protected var §4!5§:Number;
      
      protected var §&L§:Number;
      
      public var §33§:§!E§;
      
      public var §2]§:Number;
      
      public var §8f§:Number;
      
      private var §!t§:§@!8§;
      
      private var §^4§:§@!8§;
      
      public var §,!&§:Number;
      
      public var §',§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §,!E§:Number;
      
      public var §,!I§:Number;
      
      public var §break§:Number;
      
      public var §'w§:Number;
      
      private var §-m§:Number;
      
      private var §`d§:§1s§;
      
      private var §0[§:§1s§;
      
      protected var § !J§:Number = 0;
      
      protected var §1!@§:Number = 0;
      
      protected var §^!5§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §'_§:Number = 0;
      
      public var §6!B§:Boolean = true;
      
      public var §=a§:Number = 0;
      
      public var §54§:Number = 0;
      
      public var §,a§:Number = 0;
      
      public var §#!8§:Number = 0;
      
      public var §2s§:Number = 0;
      
      public var § V§:Number = 0;
      
      public var §?Y§:Number = 0;
      
      public var §;,§:Number = 0;
      
      public var §'v§:Number = 0;
      
      private var §-2§:§1s§;
      
      public var §<!$§:Number = 0;
      
      private var §^c§:Number = 0;
      
      private var §64§:Number = 0;
      
      private var §^Q§:§<!-§ = null;
      
      private var §]Y§:§<!-§ = null;
      
      public function §^z§(param1:§!E§, param2:§^!9§, param3:Number = 1.0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            this.§-2§ = new §1s§(0,0,1,false);
            super();
            if(_loc4_ || this)
            {
               this.§4!5§ = 0;
               this.§&L§ = 0;
               if(!_loc5_)
               {
                  this.§33§ = param1;
                  §^z§.§+!-§ = 1;
                  if(!(_loc5_ && this))
                  {
                     this.§%p§ = Math.max(1,Math.min(2,param3));
                     if(_loc4_ || param1)
                     {
                        this.§]!=§ = this.§%p§;
                        §§goto(addr81);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr213);
               }
               §§goto(addr203);
            }
            addr81:
            this.§;!E§(param2);
            if(_loc4_)
            {
               addr86:
               §§push(Boolean(this.§!t§));
               if(!(_loc5_ && param3))
               {
                  if(§§pop())
                  {
                     if(_loc4_ || param3)
                     {
                        §§pop();
                        §§goto(addr136);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc4_ || this)
                  {
                     this.§;!&§();
                     §§goto(addr136);
                  }
                  §§goto(addr154);
               }
               §§goto(addr213);
            }
            addr136:
            if(_loc4_ || param1)
            {
               §§push(Boolean(this.§^4§));
            }
            §§push(this);
            §§push(this.§!t§.x);
            if(_loc4_ || this)
            {
               §§push(§§pop() - this.§^4§.x);
            }
            §§pop().§ !J§ = §§pop();
            if(_loc4_)
            {
               addr154:
               §§push(this);
               §§push(this.§!t§.y);
               if(_loc4_)
               {
                  §§push(§§pop() - this.§^4§.y);
               }
               §§pop().§1!@§ = §§pop();
               if(_loc4_ || param2)
               {
                  §§push(this);
                  §§push(this.§!t§.scale);
                  if(_loc4_)
                  {
                     §§push(§§pop() - this.§^4§.scale);
                  }
                  §§pop().§^!5§ = §§pop();
                  this.§4!5§ = this.§!t§.x;
                  this.§&L§ = this.§!t§.y;
                  addr203:
                  §§push(§§findproperty(§+!-§));
                  §§push(this.§!t§.scale);
                  if(!_loc5_)
                  {
                     §§push(§§pop() * this.§]!=§);
                  }
                  §§pop().§+!-§ = §§pop();
                  addr213:
                  this.mCurrentCameraSliderLocation = §>!I§;
                  if(!_loc5_)
                  {
                     addr218:
                     this.§6!B§ = true;
                     if(!_loc5_)
                     {
                        this.§'_§ = §>!I§ / 500;
                     }
                  }
               }
               §§goto(addr218);
            }
            return;
         }
         §§goto(addr218);
      }
      
      private static function §7$§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§"h§.§'!I§);
         if(_loc3_)
         {
            §§push(§§pop() / §"h§.§for§);
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc1_)
            {
               if(§§pop() > 1)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr67:
                     §§push(1);
                     if(!(_loc2_ && _loc1_))
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
         §§goto(addr67);
      }
      
      public static function get §%!8§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§+!-§);
         if(!_loc2_)
         {
            §§push(§§pop() * §7$§());
         }
         return §§pop();
      }
      
      public function get §"Q§() : Number
      {
         return this.§]!=§;
      }
      
      public function set §"Q§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]!=§ = param1;
         }
      }
      
      public function get §6Y§() : Number
      {
         return this.§-m§;
      }
      
      public function §'e§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§=u§);
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§,!I§);
            if(!_loc2_)
            {
               §§push(§§pop() - this.§,!E§);
            }
            §§push(§§pop() / §§pop());
         }
         return §§pop();
      }
      
      public function get §7y§() : Number
      {
         return this.§%p§;
      }
      
      public function get §2!#§() : Number
      {
         return this.§<x§;
      }
      
      public function §25§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§]!=§ = param1;
            if(!_loc2_)
            {
               this.§`J§();
               if(_loc3_)
               {
                  this.§"`§(this.mCurrentCameraSliderLocation,1);
               }
            }
         }
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(this.mCurrentAction == §@h§)
         {
            return;
         }
         this.goToCastleView();
         this.§=a§ = 2000;
         if(!(_loc1_ && this))
         {
            this.§5[§();
            if(!(_loc1_ && _loc1_))
            {
               this.§]8§();
               this.§9H§();
            }
         }
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.mCurrentCameraSliderLocation = 0;
         this.§4!5§ = this.§^4§.x;
         if(_loc2_ || _loc3_)
         {
            this.§&L§ = this.§^4§.y;
            if(!_loc3_)
            {
               addr58:
               this.§6!B§ = false;
            }
            §§push(this);
            §§push(§>!I§ / 160000);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() * param1);
            }
            §§pop().§'_§ = §§pop();
            if(!_loc3_)
            {
               this.§&k§(§@h§);
            }
            return;
         }
         §§goto(addr58);
      }
      
      public function §;!&§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§^4§.x);
            if(!_loc3_)
            {
               §§push(§=u§);
               if(!_loc3_)
               {
                  §§goto(addr36);
               }
               §§goto(addr33);
            }
            addr36:
            §§push(§§pop() / this.§^4§.scale);
            if(_loc2_)
            {
               addr33:
               §§push(§§pop() / 2);
            }
            §§pop().§,!E§ = §§pop() - §§pop();
            if(!(_loc3_ && _loc1_))
            {
               §§push(this);
               §§push(this.§!t§.x);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§=u§);
                  if(!(_loc3_ && _loc2_))
                  {
                     addr77:
                     §§push(§§pop() / this.§!t§.scale);
                     if(_loc2_ || _loc2_)
                     {
                        addr74:
                        §§push(§§pop() / 2);
                     }
                     §§pop().§,!I§ = §§pop() + §§pop();
                     if(!_loc3_)
                     {
                        §§goto(addr90);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr74);
               }
               §§goto(addr77);
            }
            addr90:
            §§push(this);
            §§push(this.§33§.§0>§.§-F§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(20 * §!E§.§ &§);
               if(_loc2_)
               {
                  §§push(§§pop() * §!E§.§#N§);
               }
               §§push(§§pop() - §§pop());
            }
            §§pop().§break§ = §§pop();
            if(_loc2_)
            {
               addr115:
               §§push(this);
               §§push(this.§33§.§0>§.§-F§);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() + 4);
               }
               §§pop().§'w§ = §§pop();
            }
            §§push(§=u§);
            if(!_loc3_)
            {
               §§push(this.§,!I§);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() - this.§,!E§);
               }
               §§push(§§pop() / §§pop());
               if(!(_loc3_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc1_:* = §§pop();
            if(_loc2_ || _loc2_)
            {
               §§push(this);
               §§push(this.§'w§);
               if(!_loc3_)
               {
                  §§push(§'f§);
                  if(_loc2_)
                  {
                     §§push(0.8);
                     if(_loc2_)
                     {
                        §§goto(addr189);
                     }
                  }
                  §§goto(addr187);
               }
               §§goto(addr189);
            }
            addr189:
            §§push(§§pop() * §§pop());
            if(_loc2_)
            {
               addr187:
               §§push(§§pop() / _loc1_);
            }
            §§pop().§-m§ = §§pop() - §§pop();
            return;
         }
         §§goto(addr115);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§33§ = null;
         }
      }
      
      public function §;!E§(param1:§^!9§) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc3_:§<!-§ = null;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§9u§)
         {
            _loc3_ = param1.§&W§(_loc2_);
            if(_loc15_)
            {
               §§push(_loc3_.id);
               if(_loc15_)
               {
                  §§push(§§pop());
                  if(!(_loc14_ && this))
                  {
                     §§push(§§pop());
                     if(!_loc14_)
                     {
                        _loc4_ = §§pop();
                        if(_loc15_ || this)
                        {
                           addr75:
                           §§push(§§pop().toUpperCase());
                           if(!_loc14_)
                           {
                              _loc4_ = §§pop();
                              §§push(_loc3_.scale);
                              if(!_loc14_)
                              {
                                 §§push(§§pop().toString() != "");
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc14_ && _loc2_))
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          if(_loc15_ || _loc2_)
                                          {
                                             addr113:
                                             §§push(_loc3_.scale.toString() != "null");
                                             if(_loc3_.scale.toString() != "null")
                                             {
                                                §§pop();
                                                if(_loc15_)
                                                {
                                                   §§push(_loc3_.scale);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(§§pop().toString() == "0");
                                                      if(_loc15_ || _loc3_)
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc15_ || this)
                                                         {
                                                            addr140:
                                                            if(§§pop())
                                                            {
                                                               this.§';§(_loc3_);
                                                            }
                                                            §§push(_loc3_.left);
                                                            if(_loc15_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!_loc14_)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  if(_loc15_ || param1)
                                                                  {
                                                                     §§push(_loc3_.right);
                                                                     if(!(_loc14_ && param1))
                                                                     {
                                                                        addr168:
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc15_ || param1)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           §§push(_loc3_.top);
                                                                           if(_loc15_ || _loc3_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!(_loc14_ && this))
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    addr210:
                                                                                    _loc8_ = _loc3_.bottom;
                                                                                    §§push(_loc3_.x);
                                                                                    if(!(_loc14_ && _loc3_))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          _loc9_ = §§pop();
                                                                                          addr318:
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             §§push(_loc3_.y);
                                                                                          }
                                                                                          §§push(_loc4_);
                                                                                          if(_loc15_ || _loc3_)
                                                                                          {
                                                                                             §§push(§,!4§);
                                                                                             if(!(_loc14_ && param1))
                                                                                             {
                                                                                                addr334:
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   this.§^4§ = new §@!8§(_loc9_,_loc10_,_loc13_,true);
                                                                                                   this.§0[§ = new §1s§(_loc9_,_loc10_,_loc13_,true);
                                                                                                   addr351:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr354:
                                                                                                   if(_loc4_ == §,z§)
                                                                                                   {
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         this.§!t§ = new §@!8§(_loc9_,_loc10_,_loc13_,false);
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         this.§`d§ = new §1s§(_loc9_,_loc10_,_loc13_,false);
                                                                                                         if(!(_loc15_ || this))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         addr392:
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §9X§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
                                                                                                      if(_loc14_ && _loc2_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                _loc2_++;
                                                                                                continue;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr354);
                                                                                       }
                                                                                       _loc10_ = §§pop();
                                                                                       addr230:
                                                                                       §§push(§'f§);
                                                                                       §§push(_loc8_);
                                                                                       if(_loc15_ || _loc3_)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(_loc15_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!(_loc14_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   addr258:
                                                                                                   _loc11_ = §§pop();
                                                                                                   §§push(§=u§);
                                                                                                   §§push(_loc6_);
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      addr277:
                                                                                                      §§push(§§pop() - _loc5_);
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         addr268:
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      if(§§pop() < §§pop())
                                                                                                      {
                                                                                                         if(_loc15_ || this)
                                                                                                         {
                                                                                                            §§push(_loc12_);
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               addr289:
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!(_loc14_ && this))
                                                                                                               {
                                                                                                                  addr310:
                                                                                                                  _loc13_ = §§pop();
                                                                                                                  addr309:
                                                                                                                  if(!(_loc14_ && param1))
                                                                                                                  {
                                                                                                                     §§goto(addr318);
                                                                                                                  }
                                                                                                                  §§goto(addr392);
                                                                                                                  addr297:
                                                                                                               }
                                                                                                               §§goto(addr309);
                                                                                                            }
                                                                                                            §§goto(addr297);
                                                                                                         }
                                                                                                         §§goto(addr318);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(_loc11_);
                                                                                                         if(_loc15_ || _loc2_)
                                                                                                         {
                                                                                                            addr306:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               §§goto(addr309);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr310);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr268);
                                                                                                }
                                                                                                §§push(§§pop());
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   _loc12_ = §§pop();
                                                                                                   §§goto(addr277);
                                                                                                   §§push(_loc11_);
                                                                                                }
                                                                                                §§goto(addr277);
                                                                                             }
                                                                                             §§goto(addr268);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr277);
                                                                                    }
                                                                                    §§goto(addr310);
                                                                                 }
                                                                                 §§goto(addr392);
                                                                              }
                                                                              §§goto(addr306);
                                                                           }
                                                                           §§goto(addr258);
                                                                        }
                                                                     }
                                                                     §§goto(addr310);
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                               §§goto(addr168);
                                                            }
                                                            §§goto(addr210);
                                                         }
                                                      }
                                                      §§goto(addr277);
                                                   }
                                                   §§goto(addr289);
                                                }
                                                §§goto(addr318);
                                             }
                                             §§goto(addr140);
                                          }
                                          §§goto(addr351);
                                       }
                                    }
                                 }
                                 §§goto(addr113);
                              }
                              §§goto(addr258);
                           }
                        }
                        §§goto(addr354);
                     }
                     §§goto(addr334);
                  }
                  §§goto(addr354);
               }
               §§goto(addr75);
            }
            §§goto(addr113);
         }
      }
      
      public function §,!-§(param1:§^!9§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:§<!-§ = new §<!-§();
         if(_loc8_ || _loc3_)
         {
            _loc2_.id = §,!4§;
            if(_loc8_)
            {
               _loc2_.x = this.§^4§.x;
               if(_loc9_ && _loc2_)
               {
               }
               addr49:
               §§push(§=u§);
               if(_loc8_)
               {
                  §§push(§§pop() / this.§^4§.scale);
                  if(_loc8_ || _loc2_)
                  {
                     §§push(§§pop() / 2);
                     if(_loc8_)
                     {
                        addr67:
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     §§push(§'f§);
                     if(!(_loc9_ && _loc2_))
                     {
                        §§push(§§pop() / this.§^4§.scale);
                        if(_loc8_)
                        {
                           §§push(§§pop() / 2);
                           if(_loc8_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     var _loc4_:* = §§pop();
                     if(!(_loc9_ && this))
                     {
                        §§push(_loc2_);
                        §§push(this.§^4§.x);
                        if(_loc8_)
                        {
                           §§push(§§pop() - _loc3_);
                        }
                        §§pop().left = §§pop();
                        if(_loc8_)
                        {
                           §§push(_loc2_);
                           §§push(this.§^4§.x);
                           if(_loc8_ || this)
                           {
                              §§push(§§pop() + _loc3_);
                           }
                           §§pop().right = §§pop();
                           if(_loc8_)
                           {
                              addr123:
                              §§push(_loc2_);
                              §§push(_loc2_.y);
                              if(_loc8_ || _loc3_)
                              {
                                 §§push(§§pop() - _loc4_);
                              }
                              §§pop().top = §§pop();
                              if(_loc9_)
                              {
                              }
                              addr156:
                              var _loc5_:§<!-§;
                              (_loc5_ = new §<!-§()).id = §,z§;
                              if(_loc8_)
                              {
                                 _loc5_.x = this.§!t§.x;
                                 if(_loc8_)
                                 {
                                    addr172:
                                    _loc5_.y = this.§!t§.y;
                                 }
                                 §§push(§=u§);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() / this.§!t§.scale);
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       §§push(§§pop() / 2);
                                       if(_loc9_ && _loc2_)
                                       {
                                       }
                                       addr201:
                                       var _loc6_:* = §§pop();
                                       §§push(§'f§);
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() / this.§!t§.scale);
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop() / 2);
                                             if(_loc8_ || _loc2_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                       }
                                       var _loc7_:* = §§pop();
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          §§push(_loc5_);
                                          §§push(this.§!t§.x);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop() - _loc6_);
                                          }
                                          §§pop().left = §§pop();
                                          §§push(_loc5_);
                                          §§push(this.§!t§.x);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop() + _loc6_);
                                          }
                                          §§pop().right = §§pop();
                                          if(!_loc9_)
                                          {
                                             §§push(_loc5_);
                                             §§push(_loc5_.y);
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop() - _loc7_);
                                             }
                                             §§pop().top = §§pop();
                                             if(!(_loc9_ && this))
                                             {
                                                §§push(_loc5_);
                                                §§push(_loc5_.y);
                                                if(_loc8_ || _loc3_)
                                                {
                                                   §§push(§§pop() + _loc7_);
                                                }
                                                §§pop().bottom = §§pop();
                                                param1.§7c§();
                                                addr289:
                                                param1.§<!B§(_loc2_);
                                                if(!_loc8_)
                                                {
                                                }
                                                §§goto(addr297);
                                             }
                                             param1.§<!B§(_loc5_);
                                          }
                                          addr297:
                                          return;
                                       }
                                       §§goto(addr289);
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr172);
                           }
                           §§push(_loc2_);
                           §§push(_loc2_.y);
                           if(!_loc9_)
                           {
                              §§push(§§pop() + _loc4_);
                           }
                           §§pop().bottom = §§pop();
                           §§goto(addr156);
                        }
                     }
                     §§goto(addr123);
                  }
               }
               §§goto(addr67);
            }
            _loc2_.y = this.§^4§.y;
         }
         §§goto(addr49);
      }
      
      public function §';§(param1:§<!-§) : void
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
         if(_loc8_)
         {
            §§push(§"h§.§4T§ * 0.5);
            if(_loc8_)
            {
               §§push(_loc2_);
               if(_loc8_ || this)
               {
                  §§push(§§pop() / §§pop());
                  if(!(_loc7_ && this))
                  {
                     addr51:
                     §§push(§§pop() * §!E§.§#N§);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc8_)
                  {
                     addr56:
                     var _loc3_:Number = §§pop();
                     §§push(param1.y);
                     if(_loc8_)
                     {
                        §§push(§"h§.§0!$§ * 0.5);
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(_loc2_);
                           if(_loc8_ || this)
                           {
                              addr86:
                              §§push(§§pop() / §§pop());
                              if(_loc8_)
                              {
                                 §§push(§!E§.§#N§);
                              }
                              §§push(§§pop() - §§pop());
                              if(_loc8_)
                              {
                                 addr89:
                                 §§push(Number(§§pop()));
                              }
                              var _loc4_:* = §§pop();
                              §§push(_loc3_);
                              if(_loc8_ || this)
                              {
                                 §§push(§"h§.§4T§ / _loc2_);
                                 if(_loc8_ || _loc2_)
                                 {
                                    §§push(§§pop() * §!E§.§#N§);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc8_)
                                 {
                                    addr126:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc5_:* = §§pop();
                                 §§push(_loc4_);
                                 if(_loc8_ || param1)
                                 {
                                    §§push(§"h§.§0!$§ / _loc2_);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(§§pop() * §!E§.§#N§);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       addr158:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc6_:* = §§pop();
                                    if(_loc8_ || this)
                                    {
                                       param1.left = _loc3_;
                                       if(!(_loc7_ && this))
                                       {
                                          addr187:
                                          param1.top = _loc4_;
                                          if(!(_loc7_ && this))
                                          {
                                             §§goto(addr197);
                                          }
                                          §§goto(addr202);
                                       }
                                       addr197:
                                       param1.right = _loc5_;
                                       if(_loc8_)
                                       {
                                          addr202:
                                          param1.bottom = _loc6_;
                                          if(!_loc7_)
                                          {
                                             param1.scale = 0;
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr126);
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr56);
               }
            }
            §§goto(addr51);
         }
         §§goto(addr56);
      }
      
      protected function §>!+§(param1:§@!8§, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         §§push(_loc3_);
         §§push(param2);
         if(_loc5_ || param2)
         {
            §§push(§§pop() * this.§'_§);
         }
         §§push(§§pop() + §§pop());
         if(_loc5_ || param1)
         {
            _loc3_ = §§pop();
            §§push(_loc3_);
            §§push(§>!I§);
            if(!(_loc4_ && param1))
            {
               if(§§pop() >= §§pop())
               {
                  addr65:
                  _loc3_ = §>!I§;
                  if(!(_loc4_ && this))
                  {
                     this.§&k§(§,s§);
                     addr107:
                     this.mCurrentCameraSliderLocation = _loc3_;
                  }
                  else
                  {
                     addr96:
                     _loc3_ = 0;
                     addr94:
                     if(_loc5_ || _loc3_)
                     {
                        this.§&k§(§,s§);
                        §§goto(addr107);
                     }
                  }
                  §§goto(addr110);
               }
               else
               {
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     addr91:
                     if(§§pop() <= 0)
                     {
                        if(_loc5_)
                        {
                           §§goto(addr94);
                        }
                        addr110:
                        return;
                     }
                     §§goto(addr107);
                  }
               }
               §§goto(addr96);
            }
            §§goto(addr91);
         }
         §§goto(addr65);
      }
      
      private function §'B§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(this.mCurrentCameraSliderLocation);
         if(!(_loc6_ && this))
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               §§push(param1);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§§pop() * this.§'_§);
               }
               §§push(§§pop() + §§pop());
               if(!(_loc6_ && this))
               {
                  §§push(Number(§§pop()));
                  if(_loc5_ || this)
                  {
                     _loc2_ = §§pop();
                     addr58:
                     §§push(0.7);
                     if(!_loc6_)
                     {
                        addr61:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc3_:* = §§pop();
                  §§push(-§>!I§);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * _loc3_);
                     if(_loc5_ || this)
                     {
                        addr76:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     if(_loc5_)
                     {
                        §§push(_loc2_);
                        if(!_loc6_)
                        {
                           §§push(§§pop() >= §>!I§);
                           if(!(_loc6_ && _loc2_))
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    addr111:
                                    §§pop();
                                    §§push(_loc2_);
                                    if(_loc5_)
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc6_ && this))
                                       {
                                          addr124:
                                          if(§§pop() < §§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                §§push(_loc2_);
                                                if(_loc5_)
                                                {
                                                   addr131:
                                                   if(§§pop() < _loc4_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         addr140:
                                                         §§push(Number(§§pop()));
                                                         if(_loc6_)
                                                         {
                                                            addr159:
                                                            _loc2_ = §§pop();
                                                            if(!_loc6_)
                                                            {
                                                               addr162:
                                                               §§push(this);
                                                               §§push(this.§'_§);
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(-§§pop());
                                                               }
                                                               §§pop().§'_§ = §§pop();
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  addr181:
                                                                  this.mCurrentCameraSliderLocation = _loc2_;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr184);
                                                      }
                                                      _loc2_ = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr162);
                                                      }
                                                      §§goto(addr184);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr159);
                                                      §§push(Number(§>!I§));
                                                   }
                                                }
                                                §§goto(addr159);
                                             }
                                             addr184:
                                             return;
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr159);
                                 }
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr76);
               }
            }
            §§goto(addr61);
         }
         §§goto(addr58);
      }
      
      protected function §#!&§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.mCurrentAction);
         if(_loc2_ || _loc3_)
         {
            §§push(§@h§);
            if(!(_loc3_ && this))
            {
               if(§§pop() == §§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     this.§'B§(param1);
                  }
               }
               else
               {
                  §§push(this.mCurrentAction);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§;!%§);
                     if(!_loc3_)
                     {
                        if(§§pop() == §§pop())
                        {
                           this.§>!+§(this.§!t§,param1);
                           §§goto(addr134);
                        }
                        else
                        {
                           §§push(this.mCurrentAction);
                           if(!_loc3_)
                           {
                              addr78:
                              §§push(§`A§);
                              if(_loc2_)
                              {
                                 addr81:
                                 if(§§pop() == §§pop())
                                 {
                                    §§push(this);
                                    §§push(this.§^4§);
                                    §§push(param1);
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§push(-§§pop());
                                    }
                                    §§pop().§>!+§(§§pop(),§§pop());
                                    if(!_loc2_)
                                    {
                                       addr124:
                                    }
                                    §§goto(addr134);
                                 }
                                 else
                                 {
                                    §§push(this.mCurrentAction);
                                    if(!_loc3_)
                                    {
                                       addr112:
                                       §§push(§6!G§);
                                       if(_loc2_ || this)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             this.§6!B§ = true;
                                             §§goto(addr124);
                                          }
                                          else
                                          {
                                             §§push(this.mCurrentAction);
                                          }
                                          §§goto(addr134);
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc2_)
                                          {
                                             this.§,N§(param1);
                                          }
                                       }
                                       §§goto(addr134);
                                    }
                                    §§push(§7!F§);
                                 }
                                 §§goto(addr134);
                              }
                           }
                           §§goto(addr112);
                        }
                     }
                  }
                  §§goto(addr112);
               }
               addr134:
               return;
            }
            §§goto(addr81);
         }
         §§goto(addr78);
      }
      
      public function §,d§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(this.§^Q§)
         {
            this.§4!5§ = this.§^Q§.x;
            if(_loc2_)
            {
               this.§&L§ = this.§^Q§.y;
               §§push(§§findproperty(§+!-§));
               §§push(§=u§);
               if(_loc2_)
               {
                  §§push(this.§^Q§.right);
                  if(_loc2_)
                  {
                     §§push(§§pop() - this.§^Q§.left);
                  }
                  §§push(§§pop() / §§pop());
               }
               §§pop().§+!-§ = §§pop();
               if(_loc3_)
               {
                  addr74:
                  this.§<!0§(this.mCurrentCameraSliderLocation,param1);
               }
               this.§5[§();
               this.§]8§();
               if(!_loc3_)
               {
                  this.§9H§();
               }
            }
            return;
         }
         this.§`J§();
         this.§#!&§(param1);
         §§goto(addr74);
      }
      
      private function §!<§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Number = this.§0[§.scale + (this.§`d§.scale - this.§0[§.scale) * param1;
         var _loc4_:Number = this.§0[§.x + (this.§`d§.x - this.§0[§.x) * param1;
         var _loc5_:Number = this.§0[§.y + (this.§`d§.y - this.§0[§.y) * param1;
         if(_loc7_)
         {
            §§push(this.§-2§);
            if(_loc7_)
            {
               §§push(this.§-2§);
               if(_loc7_ || param2)
               {
                  §§push(§§pop().x - (this.§-2§.x - _loc4_) * param2);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§pop().x = §§pop();
                     if(_loc7_)
                     {
                        §§push(this.§-2§);
                        if(_loc7_ || _loc3_)
                        {
                           §§push(this.§-2§);
                           if(_loc7_)
                           {
                              addr129:
                              §§push(§§pop().y - (this.§-2§.y - _loc5_) * param2);
                              if(_loc7_)
                              {
                                 addr140:
                                 §§pop().y = §§pop();
                                 §§goto(addr157);
                              }
                              §§pop().scale = §§pop();
                              §§goto(addr157);
                           }
                        }
                        §§goto(addr147);
                     }
                     addr157:
                     if(_loc7_)
                     {
                        addr147:
                        §§push(this.§-2§);
                        §§push(this.§-2§.scale - (this.§-2§.scale - _loc3_) * param2);
                     }
                     return;
                  }
                  §§goto(addr140);
               }
               §§goto(addr129);
            }
         }
         §§goto(addr147);
      }
      
      protected function §"`§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         if(_loc4_ || param2)
         {
            §§push(this.§ !J§);
            if(_loc4_)
            {
               §§push(0);
               if(!(_loc5_ && this))
               {
                  if(§§pop() != §§pop())
                  {
                     if(!this.§6!B§)
                     {
                        §§push(Number(1));
                        if(!_loc5_)
                        {
                           addr55:
                           param2 = §§pop();
                           §§goto(addr56);
                        }
                        §§goto(addr59);
                     }
                     addr56:
                     §§push(param1);
                     if(_loc4_)
                     {
                        addr59:
                        §§push(§§pop() / §>!I§);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     _loc3_ = §§pop();
                     if(!(_loc5_ && param2))
                     {
                        this.§!<§(_loc3_,param2);
                        this.§4!5§ = this.§-2§.x;
                     }
                     this.§&L§ = this.§-2§.y;
                     if(_loc4_ || param2)
                     {
                        §+!-§ = this.§-2§.scale;
                     }
                     §§goto(addr113);
                  }
                  addr113:
                  return;
               }
               §§goto(addr59);
            }
         }
         §§goto(addr55);
      }
      
      public function §<!0§(param1:Number, param2:Number) : void
      {
         var _loc25_:Boolean = false;
         var _loc26_:Boolean = true;
         var _loc5_:§0r§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = false;
         §§push(param2);
         if(!_loc25_)
         {
            §§push(§§pop() / 1000);
            if(_loc26_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc26_)
         {
            §§push(3.5);
            if(_loc26_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc25_ && _loc3_))
               {
                  addr92:
                  §§push(Number(§§pop()));
                  §§push(Number(§§pop()));
               }
               §§goto(addr92);
            }
            var _loc4_:* = §§pop();
            if(!(_loc25_ && param1))
            {
               if(§§pop() > 1)
               {
                  if(!(_loc25_ && _loc3_))
                  {
                     §§push(1);
                     if(!(_loc25_ && param1))
                     {
                        addr119:
                        _loc4_ = Number(§§pop());
                        if(_loc26_)
                        {
                           addr122:
                           §§push(this.mCurrentCameraSliderLocation);
                           if(!_loc25_)
                           {
                              §§push(0);
                              if(_loc26_ || param1)
                              {
                                 §§push(§§pop() <= §§pop());
                                 if(!_loc25_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc26_)
                                       {
                                          addr141:
                                          §§pop();
                                          §§push(this.mCurrentCameraSliderLocation);
                                          if(_loc26_ || _loc3_)
                                          {
                                             §§push(§>!I§);
                                             if(!(_loc25_ && _loc3_))
                                             {
                                                addr160:
                                                addr159:
                                                if(§§pop() >= §§pop())
                                                {
                                                   this.§6!B§ = true;
                                                }
                                                addr166:
                                                §§push(this.mCurrentAction);
                                                §§push(§6!G§);
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc26_ || param2)
                                                {
                                                   addr175:
                                                   §§push(this.§33§);
                                                   if(!(_loc25_ && this))
                                                   {
                                                      §§push(§§pop().activeObject);
                                                      if(!_loc25_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc26_ || param2)
                                                            {
                                                               this.§&k§(§;!%§);
                                                               if(!_loc25_)
                                                               {
                                                                  this.§'v§ = §switch§;
                                                                  addr203:
                                                               }
                                                            }
                                                            §§goto(addr1224);
                                                         }
                                                         else
                                                         {
                                                            addr207:
                                                            §§push((_loc5_ = this.§33§.activeObject).§?n§());
                                                            if(_loc26_ || param2)
                                                            {
                                                               §§push(§§pop().GetPosition());
                                                               if(_loc26_ || this)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc26_)
                                                                  {
                                                                     if(_loc5_.§+!A§)
                                                                     {
                                                                        §§push(_loc5_.§+!A§);
                                                                        if(_loc26_ || this)
                                                                        {
                                                                           addr250:
                                                                           _loc6_ = §§pop() + §§pop() * §!E§.§#N§;
                                                                           if(!_loc25_)
                                                                           {
                                                                              §§push(_loc5_.§?n§());
                                                                              if(!(_loc25_ && param1))
                                                                              {
                                                                                 addr265:
                                                                                 §§push(§§pop().GetPosition().y);
                                                                                 if(_loc5_.§[=§)
                                                                                 {
                                                                                    §§push(_loc5_.§[=§ * §!E§.§#N§);
                                                                                    if(!(_loc25_ && param1))
                                                                                    {
                                                                                       addr292:
                                                                                       §§push(Number(§§pop() + §§pop()));
                                                                                       if(_loc26_)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          §§goto(addr299);
                                                                                       }
                                                                                       §§goto(addr1160);
                                                                                    }
                                                                                    §§goto(addr854);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!(_loc25_ && param2))
                                                                                    {
                                                                                       §§goto(addr292);
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr337);
                                                                              }
                                                                              §§goto(addr299);
                                                                           }
                                                                           §§goto(addr324);
                                                                        }
                                                                        §§goto(addr992);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(0);
                                                                        if(!_loc25_)
                                                                        {
                                                                           §§goto(addr250);
                                                                           §§push(§§pop());
                                                                        }
                                                                     }
                                                                     §§goto(addr410);
                                                                  }
                                                                  §§goto(addr923);
                                                               }
                                                               §§goto(addr265);
                                                            }
                                                            addr299:
                                                            §§push(_loc5_.§?n§().GetLinearVelocity().x);
                                                            if(_loc26_)
                                                            {
                                                               §§push(_loc8_ = §§pop());
                                                               §§push(0);
                                                               if(!_loc25_)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                                  §§push(§§pop() > §§pop());
                                                                  if(!(_loc25_ && _loc3_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc26_)
                                                                        {
                                                                           §§pop();
                                                                           if(_loc26_)
                                                                           {
                                                                              addr324:
                                                                              §§push(this.§ !J§);
                                                                              if(!(_loc25_ && param1))
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!_loc25_)
                                                                                 {
                                                                                    addr337:
                                                                                    §§push(§§pop() != §§pop());
                                                                                    if(!_loc25_)
                                                                                    {
                                                                                       addr340:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc26_ || param2)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             if(_loc26_ || _loc3_)
                                                                                             {
                                                                                                §§push(_loc3_ * _loc8_);
                                                                                                if(!(_loc25_ && param1))
                                                                                                {
                                                                                                   §§push(10);
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      §§push(this.§ !J§);
                                                                                                      if(_loc26_ || param2)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(!(_loc25_ && this))
                                                                                                         {
                                                                                                            addr388:
                                                                                                            param1 = Number(§§pop() + §§pop() * §>!I§);
                                                                                                            if(_loc26_)
                                                                                                            {
                                                                                                               addr394:
                                                                                                               §§push(param1);
                                                                                                               if(!(_loc25_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(§>!I§);
                                                                                                                  if(_loc26_ || param2)
                                                                                                                  {
                                                                                                                     addr410:
                                                                                                                     if(§§pop() >= §§pop())
                                                                                                                     {
                                                                                                                        if(!_loc25_)
                                                                                                                        {
                                                                                                                           §§push(§>!I§);
                                                                                                                           if(_loc26_ || param2)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!_loc25_)
                                                                                                                              {
                                                                                                                                 param1 = §§pop();
                                                                                                                                 if(_loc26_ || param2)
                                                                                                                                 {
                                                                                                                                    addr432:
                                                                                                                                    this.mCurrentCameraSliderLocation = param1;
                                                                                                                                 }
                                                                                                                                 addr437:
                                                                                                                                 §§push(Number(param1 / §>!I§));
                                                                                                                                 if(!_loc25_)
                                                                                                                                 {
                                                                                                                                    _loc9_ = §§pop();
                                                                                                                                    if(!(_loc25_ && param2))
                                                                                                                                    {
                                                                                                                                       this.§!<§(_loc9_,_loc4_);
                                                                                                                                       §§push(this.§-2§);
                                                                                                                                       if(_loc26_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop().x - §=u§ * 0.5 / this.§-2§.scale));
                                                                                                                                          if(_loc26_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             _loc10_ = §§pop();
                                                                                                                                             if(!_loc25_)
                                                                                                                                             {
                                                                                                                                                addr484:
                                                                                                                                                §§push(Number(this.§-2§.y - §'f§ * 0.5 / this.§-2§.scale));
                                                                                                                                                if(!(_loc25_ && this))
                                                                                                                                                {
                                                                                                                                                   _loc11_ = §§pop();
                                                                                                                                                   if(_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§-2§);
                                                                                                                                                      if(!(_loc25_ && param2))
                                                                                                                                                      {
                                                                                                                                                         _loc12_ = §§pop().x + §=u§ * 0.5 / this.§-2§.scale;
                                                                                                                                                         if(!_loc25_)
                                                                                                                                                         {
                                                                                                                                                            _loc13_ = this.§-2§.y + §'f§ * 0.5 / this.§-2§.scale;
                                                                                                                                                            addr540:
                                                                                                                                                            §§push(150 * §!E§.§#N§);
                                                                                                                                                            if(!_loc25_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               if(!_loc25_)
                                                                                                                                                               {
                                                                                                                                                                  _loc14_ = §§pop();
                                                                                                                                                                  if(!(_loc25_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(Math.min(_loc10_,_loc6_ - _loc14_)));
                                                                                                                                                                     if(!(_loc25_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        _loc15_ = §§pop();
                                                                                                                                                                        _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
                                                                                                                                                                        §§goto(addr586);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr926);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr807);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr586);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr796);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr662);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1182);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr969);
                                                                                                                                                }
                                                                                                                                                §§goto(addr796);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1054);
                                                                                                                                          }
                                                                                                                                          §§goto(addr783);
                                                                                                                                       }
                                                                                                                                       §§goto(addr484);
                                                                                                                                    }
                                                                                                                                    §§goto(addr662);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1041);
                                                                                                                              }
                                                                                                                              §§goto(addr979);
                                                                                                                           }
                                                                                                                           §§goto(addr540);
                                                                                                                        }
                                                                                                                        §§goto(addr686);
                                                                                                                     }
                                                                                                                     §§goto(addr432);
                                                                                                                  }
                                                                                                                  §§goto(addr437);
                                                                                                               }
                                                                                                               §§goto(addr796);
                                                                                                            }
                                                                                                            §§goto(addr540);
                                                                                                         }
                                                                                                         §§goto(addr1004);
                                                                                                      }
                                                                                                      §§goto(addr992);
                                                                                                   }
                                                                                                   §§goto(addr388);
                                                                                                }
                                                                                                §§goto(addr795);
                                                                                             }
                                                                                             §§goto(addr1160);
                                                                                          }
                                                                                          §§goto(addr432);
                                                                                       }
                                                                                       §§goto(addr394);
                                                                                    }
                                                                                    §§goto(addr1172);
                                                                                 }
                                                                                 §§goto(addr437);
                                                                              }
                                                                              §§goto(addr923);
                                                                           }
                                                                           §§goto(addr1024);
                                                                        }
                                                                        §§goto(addr337);
                                                                     }
                                                                     §§goto(addr340);
                                                                  }
                                                                  §§goto(addr1172);
                                                               }
                                                               §§goto(addr410);
                                                            }
                                                            addr586:
                                                            _loc17_ = Number(Math.max(_loc12_,_loc6_ + _loc14_));
                                                            if(_loc26_ || this)
                                                            {
                                                               §§push(Number(Math.max(_loc13_,_loc7_ + _loc14_)));
                                                               if(!(_loc25_ && this))
                                                               {
                                                                  _loc18_ = §§pop();
                                                                  _loc15_ = Number(Math.max(this.§,!E§,_loc15_));
                                                                  §§push(Number(Math.min(this.§,!I§,_loc17_)));
                                                                  if(_loc26_)
                                                                  {
                                                                     _loc17_ = §§pop();
                                                                     §§push(Number(Math.abs(§=u§ / (_loc17_ - _loc15_))));
                                                                     if(!_loc25_)
                                                                     {
                                                                        _loc19_ = §§pop();
                                                                        §§push(Number(Math.abs(§'f§ / (_loc18_ - _loc16_))));
                                                                        if(_loc26_ || _loc3_)
                                                                        {
                                                                           _loc20_ = §§pop();
                                                                           addr662:
                                                                           §§push(Number(Math.min(_loc19_,_loc20_)));
                                                                           if(_loc26_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc26_)
                                                                              {
                                                                                 _loc21_ = §§pop();
                                                                                 if(!_loc25_)
                                                                                 {
                                                                                    if(§§pop() > this.§-2§.scale)
                                                                                    {
                                                                                       if(_loc26_ || param2)
                                                                                       {
                                                                                          addr686:
                                                                                          §§push(this.§-2§);
                                                                                          if(!(_loc25_ && param2))
                                                                                          {
                                                                                             §§push(Number(§§pop().scale));
                                                                                             if(_loc26_)
                                                                                             {
                                                                                                _loc21_ = §§pop();
                                                                                                if(!_loc25_)
                                                                                                {
                                                                                                   addr702:
                                                                                                   §§push(_loc17_);
                                                                                                   if(!(_loc25_ && param2))
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc15_);
                                                                                                      §§push(0.5);
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc25_ && this))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc26_ || param2)
                                                                                                            {
                                                                                                               _loc22_ = §§pop();
                                                                                                               if(!_loc25_)
                                                                                                               {
                                                                                                                  §§push(_loc18_ + _loc16_);
                                                                                                                  if(!(_loc25_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(0.5);
                                                                                                                     if(_loc26_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr753:
                                                                                                                        _loc23_ = Number(§§pop() * §§pop());
                                                                                                                        _loc24_ = false;
                                                                                                                        if(_loc26_ || this)
                                                                                                                        {
                                                                                                                           §§push(_loc22_);
                                                                                                                           if(_loc26_)
                                                                                                                           {
                                                                                                                              addr1004:
                                                                                                                              §§push(§=u§);
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 addr772:
                                                                                                                                 §§push(§§pop() + §§pop() * 0.5 / _loc21_);
                                                                                                                              }
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(_loc26_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(this.§break§);
                                                                                                                                 if(_loc26_)
                                                                                                                                 {
                                                                                                                                    addr1016:
                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc25_ && param2))
                                                                                                                                       {
                                                                                                                                          addr1024:
                                                                                                                                          §§push(this.§break§);
                                                                                                                                          if(!(_loc25_ && param1))
                                                                                                                                          {
                                                                                                                                             addr1033:
                                                                                                                                             §§push(§=u§);
                                                                                                                                             if(!_loc25_)
                                                                                                                                             {
                                                                                                                                                addr1041:
                                                                                                                                                §§push(0.5);
                                                                                                                                                if(_loc26_)
                                                                                                                                                {
                                                                                                                                                   addr1040:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                }
                                                                                                                                                §§push(Number(§§pop() + §§pop() / §§pop()));
                                                                                                                                                if(!_loc25_)
                                                                                                                                                {
                                                                                                                                                   addr1046:
                                                                                                                                                   _loc23_ = §§pop();
                                                                                                                                                   if(!(_loc25_ && param2))
                                                                                                                                                   {
                                                                                                                                                      addr1054:
                                                                                                                                                      §§push(this);
                                                                                                                                                      §§push(this.§4!5§);
                                                                                                                                                      if(!(_loc25_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§4!5§);
                                                                                                                                                         if(!_loc25_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                            if(!(_loc25_ && param2))
                                                                                                                                                            {
                                                                                                                                                               addr1087:
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(!(_loc25_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  addr1085:
                                                                                                                                                                  §§push(§§pop() * _loc4_);
                                                                                                                                                               }
                                                                                                                                                               §§pop().§4!5§ = §§pop() - §§pop();
                                                                                                                                                               if(_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  addr1090:
                                                                                                                                                                  §§push(this);
                                                                                                                                                                  §§push(this.§<!$§);
                                                                                                                                                                  if(!(_loc25_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§<!$§);
                                                                                                                                                                     if(!_loc25_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                        if(!_loc25_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1117:
                                                                                                                                                                           addr1118:
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           if(!(_loc25_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().§<!$§ = §§pop() - §§pop();
                                                                                                                                                                           §+!-§ = this.§<!$§;
                                                                                                                                                                           §§push(this);
                                                                                                                                                                           §§push(this.§&L§);
                                                                                                                                                                           if(!_loc25_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§&L§);
                                                                                                                                                                              if(_loc26_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc23_);
                                                                                                                                                                                 if(!_loc25_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1151:
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    if(!(_loc25_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1149:
                                                                                                                                                                                       §§push(§§pop() * _loc4_);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().§&L§ = §§pop() - §§pop();
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    if(!(_loc25_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1160:
                                                                                                                                                                                       §§push(this.§,!I§);
                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1164);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1180);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1149);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1151);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1117);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1118);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1182);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1085);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1087);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1151);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1180);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1040);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1180);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1117);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1054);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1164);
                                                                                                                              }
                                                                                                                              §§goto(addr1046);
                                                                                                                           }
                                                                                                                           if(§§pop() > this.§,!I§)
                                                                                                                           {
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 addr783:
                                                                                                                                 §§push(_loc17_ = Number(this.§,!I§));
                                                                                                                                 if(!(_loc25_ && param2))
                                                                                                                                 {
                                                                                                                                    addr796:
                                                                                                                                    _loc15_ = Number(§§pop() - §=u§ / _loc21_);
                                                                                                                                    addr798:
                                                                                                                                    §§push(true);
                                                                                                                                    if(_loc26_ || param1)
                                                                                                                                    {
                                                                                                                                       _loc24_ = §§pop();
                                                                                                                                       addr807:
                                                                                                                                       §§push(_loc15_);
                                                                                                                                       if(_loc26_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§,!E§);
                                                                                                                                          if(!(_loc25_ && this))
                                                                                                                                          {
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                if(!(_loc25_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr827:
                                                                                                                                                   §§push(this.§,!E§);
                                                                                                                                                   if(_loc26_)
                                                                                                                                                   {
                                                                                                                                                      _loc15_ = Number(§§pop());
                                                                                                                                                      addr833:
                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                      if(_loc26_ || this)
                                                                                                                                                      {
                                                                                                                                                         addr842:
                                                                                                                                                         §§push(§=u§);
                                                                                                                                                         §§push(0.5);
                                                                                                                                                         if(!(_loc25_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr854:
                                                                                                                                                            §§push(§§pop() - §§pop() * §§pop() / _loc21_);
                                                                                                                                                            §§push(this.§,!E§);
                                                                                                                                                            if(!_loc25_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() < §§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§,!E§);
                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     addr864:
                                                                                                                                                                     §§push(_loc15_ = Number(§§pop()));
                                                                                                                                                                     if(!(_loc25_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        addr874:
                                                                                                                                                                        §§push(§=u§);
                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                        if(!_loc25_)
                                                                                                                                                                        {
                                                                                                                                                                           addr879:
                                                                                                                                                                           §§push(Number(§§pop() + §§pop() / §§pop()));
                                                                                                                                                                           if(_loc26_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              _loc17_ = §§pop();
                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(true);
                                                                                                                                                                                 if(!_loc25_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr893:
                                                                                                                                                                                    _loc24_ = §§pop();
                                                                                                                                                                                    if(!(_loc25_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc17_);
                                                                                                                                                                                       if(!(_loc25_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr909:
                                                                                                                                                                                          §§push(this.§,!I§);
                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§,!I§);
                                                                                                                                                                                                if(_loc26_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr923:
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr926:
                                                                                                                                                                                                      _loc17_ = §§pop();
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr929:
                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc26_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                                                                               if(!_loc25_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr941:
                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                  if(!_loc25_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     if(_loc26_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr952:
                                                                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr955:
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(!_loc25_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              if(!(_loc25_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr966:
                                                                                                                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                                                                                                                 if(!_loc25_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr969:
                                                                                                                                                                                                                                    §§push(Number(Math.abs(§=u§ / (_loc17_ - _loc15_))));
                                                                                                                                                                                                                                    if(!_loc25_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr979:
                                                                                                                                                                                                                                       _loc21_ = §§pop();
                                                                                                                                                                                                                                       addr980:
                                                                                                                                                                                                                                       §§push(_loc23_);
                                                                                                                                                                                                                                       if(!(_loc25_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr988);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1033);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1090);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr988:
                                                                                                                                                                                                                              §§push(§=u§);
                                                                                                                                                                                                                              if(!_loc25_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr992:
                                                                                                                                                                                                                                 §§push(§§pop() * 0.5);
                                                                                                                                                                                                                                 §§push(_loc21_);
                                                                                                                                                                                                                                 if(_loc26_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1001:
                                                                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1004);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1180);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1041);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1164:
                                                                                                                                                                                                                              §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                              if(!(_loc25_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1172:
                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    §§goto(addr1219);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1182:
                                                                                                                                                                                                                                 §§push(this.§-2§);
                                                                                                                                                                                                                                 §§push(§+!-§);
                                                                                                                                                                                                                                 if(!_loc25_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().scale = §§pop();
                                                                                                                                                                                                                                    if(!(_loc25_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1205:
                                                                                                                                                                                                                                       §§push(this.§-2§);
                                                                                                                                                                                                                                       if(!_loc25_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1218:
                                                                                                                                                                                                                                          §§push(this.§4!5§);
                                                                                                                                                                                                                                          if(!_loc25_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                                                                             §§push(this.§-2§);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                                                                          §§goto(addr1219);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(this.§&L§);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1219);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1218);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1219);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr966);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1041);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr966);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1180);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr966);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1151);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr980);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1180);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1041);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1180);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr929);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1016);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr952);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1117);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1172);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr969);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr941);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1001);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr923);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1041);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr929);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr955);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr992);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr864);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr952);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1205);
                                                                                                                                             }
                                                                                                                                             §§goto(addr833);
                                                                                                                                          }
                                                                                                                                          §§goto(addr842);
                                                                                                                                       }
                                                                                                                                       §§goto(addr909);
                                                                                                                                    }
                                                                                                                                    §§goto(addr893);
                                                                                                                                    addr793:
                                                                                                                                    addr792:
                                                                                                                                    addr795:
                                                                                                                                 }
                                                                                                                                 §§goto(addr854);
                                                                                                                              }
                                                                                                                              §§goto(addr827);
                                                                                                                           }
                                                                                                                           §§goto(addr833);
                                                                                                                        }
                                                                                                                        §§goto(addr798);
                                                                                                                     }
                                                                                                                     §§goto(addr793);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1054);
                                                                                                            }
                                                                                                            §§goto(addr952);
                                                                                                         }
                                                                                                         §§goto(addr792);
                                                                                                      }
                                                                                                      §§goto(addr772);
                                                                                                   }
                                                                                                   §§goto(addr879);
                                                                                                }
                                                                                                §§goto(addr798);
                                                                                             }
                                                                                             §§goto(addr923);
                                                                                          }
                                                                                          §§goto(addr1182);
                                                                                       }
                                                                                       §§goto(addr1024);
                                                                                    }
                                                                                    §§goto(addr702);
                                                                                 }
                                                                                 §§goto(addr753);
                                                                              }
                                                                              §§goto(addr874);
                                                                           }
                                                                           §§goto(addr753);
                                                                        }
                                                                        §§goto(addr1046);
                                                                     }
                                                                     §§goto(addr864);
                                                                  }
                                                                  §§goto(addr941);
                                                               }
                                                               §§goto(addr1180);
                                                            }
                                                            §§goto(addr1219);
                                                         }
                                                         §§goto(addr1224);
                                                      }
                                                   }
                                                   §§goto(addr207);
                                                }
                                                §§goto(addr203);
                                             }
                                             else
                                             {
                                                this.§"`§(param1,_loc4_);
                                             }
                                             addr1224:
                                             return;
                                          }
                                          §§goto(addr166);
                                       }
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr203);
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr175);
               }
               §§goto(addr122);
            }
            §§goto(addr119);
         }
         §§goto(addr92);
      }
      
      public function §2B§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§^c§ = param1;
            if(!_loc3_)
            {
               addr29:
               this.§64§ = param2;
            }
            return;
         }
         §§goto(addr29);
      }
      
      private function §4!,§(param1:§1s§, param2:§@!8§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1);
            §§push(§5?§);
            if(!(_loc4_ && param1))
            {
               §§push(param2.scale);
               if(!_loc4_)
               {
                  §§push(§5?§);
                  if(_loc5_ || this)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc5_)
                     {
                        addr50:
                        §§push(this.§]!=§);
                        if(!_loc4_)
                        {
                           addr54:
                           §§push(§§pop() * §§pop());
                           if(_loc5_)
                           {
                              addr59:
                              §§push(§§pop() * §^z§.§7$§());
                           }
                           §§pop().scale = §§pop() + §§pop();
                           if(!(_loc4_ && param1))
                           {
                              §§push(§=u§);
                              if(_loc5_)
                              {
                                 §§push(§§pop() / param1.scale);
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(this.§,!I§);
                                    if(_loc5_)
                                    {
                                       §§push(this.§,!E§);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc4_)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(_loc5_ || param2)
                                                {
                                                   addr116:
                                                   §§push(§=u§);
                                                   if(_loc5_)
                                                   {
                                                      addr119:
                                                      §§push(this.§,!I§);
                                                      if(_loc5_ || param1)
                                                      {
                                                         addr141:
                                                         §§push(§§pop() / (§§pop() - this.§,!E§));
                                                         if(_loc5_)
                                                         {
                                                            addr144:
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      §§goto(addr141);
                                                   }
                                                   _loc3_ = §§pop();
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr148);
                                                   }
                                                   §§goto(addr158);
                                                }
                                                §§goto(addr148);
                                             }
                                             §§goto(addr162);
                                          }
                                       }
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr144);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr116);
                        }
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr54);
               }
               §§goto(addr50);
            }
            §§goto(addr54);
         }
         addr148:
         param1.scale = _loc3_;
         if(_loc5_ || this)
         {
            addr158:
            §§push(true);
            if(!_loc4_)
            {
               return §§pop();
            }
         }
         else
         {
            addr162:
            §§push(false);
         }
         return §§pop();
      }
      
      private function §9S§(param1:§1s§, param2:§@!8§) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(this.§4!,§(param1,param2));
         if(!_loc8_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc9_)
         {
            param1.y = param2.y;
         }
         var _loc4_:Number = param1.y + §'f§ * 0.5 / param1.scale;
         §§push(§'f§);
         if(!_loc8_)
         {
            §§push(§§pop() * 0.25);
            if(_loc9_)
            {
               §§push(§§pop() / param1.scale);
               if(_loc9_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc5_:* = §§pop();
         if(!_loc8_)
         {
            §§push(_loc4_);
            if(_loc9_)
            {
               §§push(_loc5_);
               if(!_loc8_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc9_ || _loc3_)
                     {
                        param1.y += _loc5_ - _loc4_;
                        if(_loc9_ || _loc3_)
                        {
                        }
                        addr96:
                        §§push(param1.x - §=u§ * 0.5 / param1.scale);
                        if(_loc9_ || param1)
                        {
                           addr123:
                           var _loc6_:Number;
                           §§push(_loc6_ = §§pop());
                           if(!(_loc8_ && param1))
                           {
                              §§push(this.§,!E§);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() < §§pop());
                                 if(_loc9_ || param1)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc8_ && param1))
                                       {
                                          addr153:
                                          §§pop();
                                          if(_loc9_)
                                          {
                                             addr159:
                                             if(param1.§3!&§)
                                             {
                                                if(_loc9_ || param1)
                                                {
                                                   param1.x += this.§,!E§ - _loc6_;
                                                }
                                             }
                                          }
                                          var _loc7_:Number;
                                          §§push((_loc7_ = param1.x + §=u§ * 0.5 / param1.scale) > this.§,!I§);
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   addr217:
                                                   §§pop();
                                                   if(_loc9_ || this)
                                                   {
                                                      §§push(!param1.§3!&§);
                                                      if(_loc9_)
                                                      {
                                                         addr230:
                                                         if(§§pop())
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               param1.x += this.§,!I§ - _loc7_;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                   §§push(_loc3_);
                                                }
                                                addr243:
                                                return §§pop();
                                             }
                                             §§goto(addr230);
                                          }
                                          §§goto(addr217);
                                       }
                                    }
                                    §§goto(addr159);
                                 }
                              }
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr96);
                  }
                  param1.x = param2.x;
                  §§goto(addr96);
               }
            }
            §§goto(addr123);
         }
         §§goto(addr96);
      }
      
      private function §%M§(param1:§1s§, param2:§@!8§) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.scale - §5?§);
         if(!(_loc4_ && param1))
         {
            §§push(§^z§.§7$§());
            if(_loc3_ || param1)
            {
               §§push(param2.scale);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() - §5?§);
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() / §§pop());
         }
         return §§pop();
      }
      
      protected function §`J§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§9S§(this.§0[§,this.§^4§);
         }
         §§push(this.§%M§(this.§0[§,this.§^4§));
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc4_ || this)
         {
            this.§9S§(this.§`d§,this.§!t§);
         }
         §§push(this.§%M§(this.§`d§,this.§!t§));
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc1_))
         {
            this.§]!=§ = Math.min(_loc1_,_loc2_);
         }
      }
      
      public function §5[§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = NaN;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§33§.sprite)
            {
               if(!(_loc3_ && this))
               {
                  addr37:
                  §§push(§"h§.§+_§());
                  if(_loc4_ || this)
                  {
                     §§push(§§pop() / §"h§.§'!I§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§"h§.§0!$§);
                        if(!_loc3_)
                        {
                           addr76:
                           §§push(§§pop() - §§pop());
                           if(_loc4_)
                           {
                              addr73:
                              §§push(1);
                           }
                           _loc1_ = §§pop();
                           if(!_loc3_)
                           {
                              §§push(§§findproperty(§<H§));
                              §§push(this.§33§.sprite);
                              §§push(§!E§.§2C§);
                              if(!_loc3_)
                              {
                                 §§push(1 - §^z§.§%!8§);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() / 2);
                                    if(!_loc3_)
                                    {
                                       addr98:
                                       §§push(§§pop() * §§pop());
                                       §§push(§§pop() * §§pop());
                                    }
                                 }
                                 var _loc2_:* = §§pop();
                                 §§pop().x = §§pop();
                                 §§pop().§<H§ = _loc2_;
                                 if(!_loc3_)
                                 {
                                    addr106:
                                    §§push(§§findproperty(§#&§));
                                    §§push(this.§33§.sprite);
                                    §§push(_loc1_);
                                    if(_loc4_)
                                    {
                                       §§push(§!E§.§ &§);
                                       if(_loc4_)
                                       {
                                          §§push(1 - §^z§.§%!8§);
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc4_)
                                             {
                                                §§goto(addr143);
                                             }
                                             §§goto(addr146);
                                          }
                                          addr143:
                                          §§goto(addr141);
                                       }
                                       addr141:
                                       §§push(§§pop() * §-s§.§?!9§);
                                       if(!_loc3_)
                                       {
                                          addr146:
                                          §§push(§§pop() + §§pop());
                                          §§push(§§pop() + §§pop());
                                       }
                                       _loc2_ = §§pop();
                                       §§pop().y = §§pop();
                                       §§pop().§#&§ = _loc2_;
                                       return;
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr143);
                        }
                        §§push(Number(§§pop() >> §§pop()));
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr73);
               }
               §§goto(addr106);
            }
            §§goto(addr143);
         }
         §§goto(addr37);
      }
      
      public function §9H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§33§);
            if(!(_loc1_ && _loc2_))
            {
               §§push(§§pop().sprite);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        addr59:
                        §§push(this.§33§);
                        if(!_loc1_)
                        {
                           §§push(§§pop().sprite);
                           if(_loc2_)
                           {
                              §§push(§%!8§);
                              if(!(_loc1_ && _loc1_))
                              {
                                 §§pop().scaleX = §§pop();
                                 §§goto(addr87);
                              }
                              §§pop().scaleY = §§pop();
                           }
                        }
                        §§goto(addr85);
                     }
                  }
                  addr87:
                  if(!(_loc1_ && _loc1_))
                  {
                     addr85:
                     §§push(this.§33§.sprite);
                     §§push(§%!8§);
                  }
                  return;
               }
            }
            §§goto(addr85);
         }
         §§goto(addr59);
      }
      
      public function §]8§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§4!5§);
         if(!_loc3_)
         {
            §§push(§!E§.§#N§);
            if(!_loc3_)
            {
               §§push(§§pop() / §§pop());
               if(_loc4_ || _loc3_)
               {
                  addr35:
                  §§push(§§pop() + this.§^c§);
                  if(!(_loc3_ && this))
                  {
                     addr43:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc1_:* = §§pop();
               §§push(this.§&L§);
               if(_loc4_)
               {
                  §§push(§!E§.§#N§);
                  if(_loc4_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc4_)
                     {
                        addr58:
                        §§push(§§pop() + this.§64§);
                        if(!(_loc3_ && _loc3_))
                        {
                           addr66:
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(_loc4_)
                        {
                           §§push(this);
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              §§push(§!E§.§2C§);
                              if(!(_loc3_ && this))
                              {
                                 §§push(§§pop() / 2);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(§"h§.§'!I§);
                                    if(_loc4_)
                                    {
                                       addr107:
                                       §§push(§§pop() * §§pop());
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr104:
                                          §§push(§"h§.§],§);
                                       }
                                       §§pop().§,!&§ = §§pop() - §§pop();
                                       if(!_loc3_)
                                       {
                                          addr111:
                                          §§push(this);
                                          §§push(_loc2_);
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(§!E§.§ &§);
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§push(§§pop() / 2);
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      addr153:
                                                      §§push(§§pop() + §-s§.§3s§);
                                                   }
                                                   §§pop().§',§ = §§pop();
                                                   §§push(this.§33§);
                                                   if(_loc4_ || _loc1_)
                                                   {
                                                      §§push(§§pop().background);
                                                      if(_loc4_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               addr178:
                                                               this.§33§.background.§+C§(this.§,!&§,this.§',§);
                                                               if(!_loc3_)
                                                               {
                                                                  addr185:
                                                                  §§push(this.§33§);
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop().objects);
                                                                     if(_loc4_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr259:
                                                                           §§push(this.§33§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(§§pop().objects);
                                                                           }
                                                                           §§pop().slingshot.§+C§(this.§,!&§,this.§',§);
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              addr282:
                                                                              §§push(this.§33§.particles);
                                                                              if(!(_loc3_ && _loc1_))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr296:
                                                                                    this.§33§.particles.§+C§(this.§,!&§,this.§',§);
                                                                                 }
                                                                                 return;
                                                                              }
                                                                           }
                                                                           §§goto(addr296);
                                                                        }
                                                                        addr208:
                                                                        §§push(this.§33§.§=!D§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr214:
                                                                              §§push(this.§33§);
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 addr224:
                                                                                 §§pop().§=!D§.§+C§(this.§,!&§,this.§',§,§%!8§);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr232:
                                                                                    §§push(this.§33§.slingshot);
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             §§push(this.§33§);
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                §§goto(addr259);
                                                                                             }
                                                                                             §§goto(addr296);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr282);
                                                                                    }
                                                                                    §§goto(addr259);
                                                                                 }
                                                                                 §§goto(addr296);
                                                                              }
                                                                              §§goto(addr282);
                                                                           }
                                                                           §§goto(addr232);
                                                                        }
                                                                        §§goto(addr224);
                                                                     }
                                                                     §§pop().§+C§(this.§,!&§,this.§',§);
                                                                     §§goto(addr208);
                                                                  }
                                                                  §§goto(addr259);
                                                               }
                                                               §§goto(addr208);
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr282);
                                                }
                                             }
                                          }
                                          §§goto(addr153);
                                       }
                                       §§goto(addr214);
                                    }
                                    §§goto(addr107);
                                    §§push(§§pop() / §§pop());
                                 }
                                 §§goto(addr104);
                              }
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr66);
                  }
               }
               §§goto(addr58);
            }
            §§goto(addr35);
         }
         §§goto(addr43);
      }
      
      protected function §^@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§&k§(§7!F§);
         }
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§'v§ = -1;
            this.§^@§();
            §§push(this);
            §§push(this);
            §§push(this.§,a§ = param1);
            if(!_loc4_)
            {
               var _loc3_:*;
               §§push(_loc3_ = §§pop());
            }
            §§pop().§?Y§ = §§pop();
            §§pop().§2s§ = _loc3_;
            §§push(this);
            §§push(this);
            §§push(this.§#!8§ = param2);
            if(!_loc4_)
            {
               §§push(_loc3_ = §§pop());
            }
            §§pop().§;,§ = §§pop();
            §§pop().§ V§ = _loc3_;
            this.§54§ = 0;
            §§push(this.§-2§);
            if(!_loc4_)
            {
               §§push(this.§4!5§);
               if(_loc5_ || param2)
               {
                  §§pop().x = §§pop();
                  §§push(this.§-2§);
                  if(_loc5_ || param1)
                  {
                     §§goto(addr107);
                  }
                  §§push(§+!-§);
               }
               §§goto(addr107);
            }
            addr107:
            §§push(this.§&L§);
            if(!(_loc4_ && param1))
            {
               §§pop().y = §§pop();
               §§push(this.§-2§);
            }
            §§pop().scale = §§pop();
            if(!_loc4_)
            {
               addr110:
               this.§<!$§ = §+!-§;
               if(!(_loc4_ && this))
               {
                  if(Math.abs(this.§`d§.x - this.§0[§.x) > 0.001)
                  {
                     if(_loc4_)
                     {
                     }
                  }
                  §§goto(addr172);
               }
               §§push(this);
               §§push(this.§4!5§);
               if(_loc5_)
               {
                  §§push(§§pop() - this.§0[§.x);
                  if(_loc5_ || param2)
                  {
                     §§goto(addr159);
                  }
                  §§goto(addr169);
               }
               addr159:
               §§push(§§pop() / (this.§`d§.x - this.§0[§.x));
               if(_loc5_)
               {
                  addr169:
                  §§push(§§pop() * §>!I§);
               }
               §§pop().mCurrentCameraSliderLocation = §§pop();
               §§goto(addr172);
            }
            addr172:
            this.mDragging = true;
            return;
         }
         §§goto(addr110);
      }
      
      public function §,N§(param1:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = Number(this.mCurrentCameraSliderLocation);
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.§54§);
            if(!_loc4_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§54§ = §§pop();
         }
         §§push(this.§2s§);
         if(!(_loc4_ && param1))
         {
            §§push(§§pop() - this.§?Y§);
            if(_loc5_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.§ !J§);
         §§push(0);
         if(_loc5_ || _loc2_)
         {
            if(§§pop() > §§pop())
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     §§push(§!E§.§#N§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        §§push(§%!8§);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop() / §§pop());
                           if(_loc5_ || _loc3_)
                           {
                              §§push(this.§ !J§);
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr109:
                                 §§push(§§pop() / §§pop());
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(§§pop() * §>!I§);
                                    if(!_loc4_)
                                    {
                                       §§goto(addr121);
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr150);
                              }
                           }
                           §§goto(addr206);
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr206);
                  }
                  addr121:
                  §§push(Number(§§pop() - §§pop()));
                  if(!(_loc4_ && _loc2_))
                  {
                     _loc2_ = §§pop();
                     this.§6!B§ = false;
                     §§push(_loc2_);
                     if(_loc5_)
                     {
                        §§push(0);
                        if(!_loc4_)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§push(_loc2_);
                              if(!(_loc4_ && this))
                              {
                                 addr150:
                                 §§push(_loc2_);
                                 §§push(0.3);
                                 if(_loc5_)
                                 {
                                    addr154:
                                    §§push(§§pop() - §§pop() * §§pop());
                                    if(!(_loc4_ && this))
                                    {
                                       addr163:
                                       _loc2_ = Number(§§pop());
                                       §§goto(addr162);
                                    }
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr180);
                     }
                  }
                  addr162:
                  if(!_loc4_)
                  {
                     this.§6!B§ = true;
                     addr169:
                     §§push(_loc2_);
                     if(_loc5_)
                     {
                        addr172:
                        §§push(§>!I§);
                        if(_loc5_ || _loc3_)
                        {
                           addr180:
                           if(§§pop() > §§pop())
                           {
                              §§push(_loc2_);
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr206:
                                 _loc2_ = Number(§§pop() + (§>!I§ - _loc2_) * 0.3);
                                 if(_loc5_)
                                 {
                                    this.§6!B§ = true;
                                    if(_loc4_)
                                    {
                                    }
                                    §§goto(addr217);
                                 }
                              }
                              §§goto(addr206);
                           }
                           this.mCurrentCameraSliderLocation = _loc2_;
                           §§goto(addr217);
                        }
                     }
                     §§goto(addr206);
                  }
                  §§goto(addr217);
               }
               §§goto(addr163);
            }
            addr217:
            this.§?Y§ = this.§2s§;
            return;
         }
         §§goto(addr206);
      }
      
      protected function §?o§() : Boolean
      {
         return this.mCurrentAction == §7!F§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.mDragging)
            {
               if(!_loc3_)
               {
                  this.§2s§ = param1;
                  if(!(_loc3_ && this))
                  {
                     this.§ V§ = param2;
                  }
               }
            }
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         if(_loc5_)
         {
            §§push(this.mCurrentAction);
            if(_loc5_ || _loc3_)
            {
               §§push(§7!F§);
               if(!(_loc4_ && param1))
               {
                  if(§§pop() == §§pop())
                  {
                     this.§&k§(§,s§);
                     §§push(param1);
                     §§push(0);
                     if(_loc5_)
                     {
                        if(§§pop() > §§pop())
                        {
                           this.§2s§ = param1;
                           if(!(_loc4_ && _loc3_))
                           {
                              addr57:
                              §§push(Number(Math.abs(this.§2s§ - this.§,a§)));
                              if(!(_loc4_ && this))
                              {
                                 _loc3_ = §§pop();
                                 §§push(this.§54§);
                                 if(!_loc4_)
                                 {
                                    §§push(§`!3§);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(_loc5_ || param2)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   §§pop();
                                                   if(_loc5_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc5_)
                                                      {
                                                         §§push(§%0§);
                                                         if(!_loc4_)
                                                         {
                                                            addr108:
                                                            §§push(§§pop() >= §§pop());
                                                            if(_loc5_ || this)
                                                            {
                                                               addr116:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§pop();
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           addr146:
                                                                           §§push(§81§);
                                                                           if(_loc5_)
                                                                           {
                                                                              addr149:
                                                                              §§push(§§pop() * this.§54§);
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(§§pop() / 1000);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr159:
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       addr164:
                                                                                       addr162:
                                                                                       addr160:
                                                                                       if(this.§2s§ < this.§,a§)
                                                                                       {
                                                                                          this.§&k§(§;!%§);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          this.§&k§(§`A§);
                                                                                       }
                                                                                       §§push(this);
                                                                                       §§push(_loc3_);
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() / this.§54§);
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§pop() * 10);
                                                                                          }
                                                                                       }
                                                                                       §§pop().§'_§ = §§pop();
                                                                                       this.§6!B§ = false;
                                                                                       §§push(this.mCurrentCameraSliderLocation);
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          addr206:
                                                                                          §§push(0);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr209:
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   this.§6!B§ = true;
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr274:
                                                                                                      this.§'_§ = §>!I§ / (§>!I§ / 500);
                                                                                                      addr281:
                                                                                                      this.§6!B§ = true;
                                                                                                      §§goto(addr284);
                                                                                                   }
                                                                                                   addr284:
                                                                                                   this.mDragging = false;
                                                                                                   return;
                                                                                                }
                                                                                                addr271:
                                                                                                this.§4!6§(0);
                                                                                                §§goto(addr274);
                                                                                                §§goto(addr274);
                                                                                             }
                                                                                             addr219:
                                                                                             §§push(this.mCurrentCameraSliderLocation);
                                                                                             §§push(§>!I§);
                                                                                          }
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                this.§6!B§ = true;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr274);
                                                                                       }
                                                                                       §§goto(addr219);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr230:
                                                                                       if(this.§54§ < §<d§)
                                                                                       {
                                                                                          if(!(_loc4_ && param2))
                                                                                          {
                                                                                             addr238:
                                                                                             this.§42§();
                                                                                             this.§'_§ = §>!I§ / (§>!I§ / 500);
                                                                                             if(_loc5_ || param1)
                                                                                             {
                                                                                                this.§6!B§ = true;
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr281);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr274);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          this.§,N§(0);
                                                                                          §§goto(addr271);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr271);
                                                                                 }
                                                                              }
                                                                              §§goto(addr164);
                                                                           }
                                                                        }
                                                                        §§goto(addr230);
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr159);
                                                         }
                                                         §§goto(addr149);
                                                      }
                                                      §§goto(addr146);
                                                   }
                                                   §§goto(addr238);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr116);
                                    }
                                    §§goto(addr108);
                                 }
                                 §§goto(addr230);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr274);
                        }
                        §§goto(addr57);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr274);
               }
               §§goto(addr209);
            }
            §§goto(addr206);
         }
         §§goto(addr160);
      }
      
      public function §42§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.mCurrentAction);
         if(_loc1_)
         {
            §§push(§;!%§);
            if(_loc1_)
            {
               if(§§pop() == §§pop())
               {
                  this.§&k§(§`A§);
                  if(_loc2_ && _loc2_)
                  {
                     addr106:
                  }
               }
               else
               {
                  §§push(this.mCurrentAction);
                  if(!(_loc2_ && this))
                  {
                     addr54:
                     §§push(§`A§);
                     if(!_loc2_)
                     {
                        addr57:
                        if(§§pop() == §§pop())
                        {
                           this.§&k§(§;!%§);
                           §§goto(addr116);
                        }
                        else
                        {
                           §§push(this.mCurrentCameraSliderLocation);
                           if(_loc1_ || this)
                           {
                              addr71:
                              §§push(§>!I§);
                              if(_loc1_)
                              {
                                 §§push(2);
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(_loc1_)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             this.§&k§(§`A§);
                                          }
                                          §§goto(addr106);
                                       }
                                       else
                                       {
                                          addr111:
                                          §§push(this.mCurrentCameraSliderLocation);
                                          §§push(§>!I§ / 2);
                                       }
                                       §§goto(addr116);
                                    }
                                    if(§§pop() <= §§pop())
                                    {
                                       this.§&k§(§;!%§);
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
            §§goto(addr57);
         }
         §§goto(addr54);
      }
      
      public function §4!6§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'v§ = param1;
            if(!(_loc3_ && param1))
            {
               if(this.mCurrentCameraSliderLocation < §>!I§ / 2)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§&k§(§`A§);
                     if(_loc2_ || param1)
                     {
                        addr71:
                     }
                  }
                  §§goto(addr71);
               }
               else
               {
                  this.§&k§(§;!%§);
               }
               return;
            }
         }
         §§goto(addr71);
      }
      
      public function goToBirdView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§&k§(§`A§);
         }
      }
      
      public function goToCastleView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§&k§(§;!%§);
         }
      }
      
      public function §&k§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§-2§);
            if(_loc2_)
            {
               §§push(this.§4!5§);
               if(_loc2_ || _loc3_)
               {
                  §§pop().x = §§pop();
                  if(!_loc3_)
                  {
                     §§push(this.§-2§);
                     if(_loc2_)
                     {
                        addr53:
                        §§push(this.§&L§);
                        if(!(_loc3_ && param1))
                        {
                           §§goto(addr72);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr83);
               }
               addr72:
               §§pop().y = §§pop();
               if(!(_loc3_ && this))
               {
                  addr83:
                  this.§-2§.scale = §+!-§;
                  addr82:
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr94);
               }
               this.§<!$§ = §+!-§;
               if(!_loc3_)
               {
                  addr91:
                  this.mCurrentAction = param1;
                  §§goto(addr94);
               }
               addr94:
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr91);
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.mCurrentCameraSliderLocation);
            if(!(_loc2_ && param1))
            {
               §§push(§>!I§);
               if(!_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§push(true);
                        if(!(_loc2_ && _loc2_))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr80:
                        if(this.mCurrentAction == §;!%§)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(true);
                              if(_loc3_ || this)
                              {
                                 §§goto(addr99);
                              }
                           }
                           else
                           {
                              addr100:
                              §§push(false);
                           }
                           return §§pop();
                        }
                        §§goto(addr100);
                     }
                     addr99:
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      public function §8S§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.mCurrentCameraSliderLocation);
            if(!_loc2_)
            {
               if(§§pop() == 0)
               {
                  if(_loc3_)
                  {
                     §§push(true);
                     if(!(_loc2_ && this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr63:
                     addr65:
                     if(this.mCurrentAction == §`A§)
                     {
                        if(!(_loc2_ && param1))
                        {
                           §§push(true);
                           if(_loc3_)
                           {
                              return §§pop();
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr79);
                     }
                     §§push(false);
                  }
                  addr79:
                  return §§pop();
               }
               §§goto(addr63);
            }
            §§goto(addr65);
         }
         §§goto(addr63);
      }
      
      public function §`!9§(param1:§<!-§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^Q§ = param1;
            if(this.§^Q§ != null)
            {
               this.§]Y§ = new §<!-§();
               §§push(this.§]Y§);
               if(_loc3_ || _loc3_)
               {
                  §§push(this.§4!5§);
                  if(_loc3_ || this)
                  {
                     §§pop().x = §§pop();
                     if(_loc3_)
                     {
                        addr61:
                        §§push(this.§]Y§);
                        if(_loc3_)
                        {
                           §§push(this.§&L§);
                           if(!_loc2_)
                           {
                              §§pop().y = §§pop();
                              if(_loc3_)
                              {
                                 §§goto(addr85);
                              }
                              §§goto(addr88);
                           }
                           addr85:
                           this.§]Y§.scale = §+!-§;
                           §§goto(addr84);
                        }
                        addr84:
                        §§goto(addr82);
                     }
                     addr82:
                     if(!_loc3_)
                     {
                        addr94:
                        this.§&L§ = this.§]Y§.y;
                        §+!-§ = this.§]Y§.scale;
                        this.§]Y§ = null;
                     }
                     else
                     {
                        addr88:
                     }
                     return;
                  }
               }
               §§goto(addr85);
            }
            else
            {
               this.§4!5§ = this.§]Y§.x;
            }
            §§goto(addr94);
         }
         §§goto(addr61);
      }
      
      protected function §4^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.isOnCastleView())
            {
               if(_loc1_ || _loc1_)
               {
                  addr38:
                  this.goToCastleView();
                  if(_loc2_ && _loc1_)
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
         §§goto(addr38);
      }
      
      public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§]!=§);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(param1)
            {
               §§push(_loc3_);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(param2);
                  if(!_loc4_)
                  {
                     _loc3_ = Number(§§pop() + §§pop());
                     addr83:
                     §§push(Number(Math.max(this.§2!#§,Math.min(this.§7y§,_loc3_))));
                     if(!_loc4_)
                     {
                        _loc3_ = §§pop();
                        if(_loc5_)
                        {
                           §§goto(addr99);
                        }
                        §§goto(addr104);
                     }
                  }
                  §§goto(addr99);
               }
               else
               {
                  addr69:
                  §§push(Number(§§pop()));
                  if(!_loc4_)
                  {
                     addr82:
                     _loc3_ = §§pop();
                     §§goto(addr83);
                  }
               }
               §§goto(addr99);
            }
            else
            {
               §§push(_loc3_);
               if(_loc5_ || param2)
               {
                  §§push(param2);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr69);
                     §§push(§§pop() - §§pop());
                  }
                  addr99:
                  if(_loc3_ != this.§]!=§)
                  {
                     if(_loc5_)
                     {
                        addr104:
                        this.§]!=§ = _loc3_;
                     }
                     this.§4^§();
                  }
                  §§goto(addr109);
               }
            }
            §§goto(addr82);
         }
         addr109:
      }
      
      public function §1r§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§"Q§);
         if(!_loc2_)
         {
            §§push(this.§2!#§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop() - §§pop());
               if(_loc1_)
               {
                  addr42:
                  §§push(this.§7y§);
                  if(_loc1_ || this)
                  {
                     addr51:
                     §§push(§§pop() - this.§2!#§);
                  }
                  §§push(§§pop() / §§pop());
               }
               return §§pop();
            }
            §§goto(addr51);
         }
         §§goto(addr42);
      }
      
      public function §>2§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(Math.min(Math.max(param1,0),1) * (this.§7y§ - this.§2!#§));
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + this.§2!#§);
            }
            §§pop().§"Q§ = §§pop();
         }
      }
      
      public function §1!2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§]!=§ = Math.max(this.§]!=§ - 0.5,0.5);
         }
      }
      
      public function § ;§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         §§push(_loc1_);
         if(!(_loc3_ && _loc3_))
         {
            §§push(" mManualScale: ");
            if(!_loc3_)
            {
               §§push(§§pop() + this.§]!=§);
               if(_loc2_ || _loc3_)
               {
                  _loc1_ = §§pop() + §§pop();
                  §§push(_loc1_);
                  if(_loc2_ || this)
                  {
                     §§push(" mXcenterB2: ");
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_ = §§pop() + (§§pop() + this.§4!5§);
                        §§push(_loc1_);
                        if(!_loc3_)
                        {
                           §§push(" mYcenterB2: ");
                           §§push(this.§&L§);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(!_loc3_)
                              {
                                 _loc1_ = §§pop();
                                 §§push(_loc1_);
                                 §§push(" mXcenterB2target: ");
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() + this.§]!=§);
                                    if(!_loc3_)
                                    {
                                       _loc1_ = §§pop() + §§pop();
                                       §§push(_loc1_);
                                       if(!_loc3_)
                                       {
                                          §§push("\n mYcenterB2target: " + this.§]!=§);
                                          if(_loc2_)
                                          {
                                             _loc1_ = §§pop() + §§pop();
                                             if(_loc2_)
                                             {
                                                §§goto(addr111);
                                             }
                                             §§goto(addr268);
                                          }
                                          §§goto(addr740);
                                       }
                                       §§goto(addr291);
                                    }
                                    addr111:
                                    §§push(_loc1_);
                                    §§push(" mXcenterB2previous: ");
                                    §§push(this.§]!=§);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() + (§§pop() + §§pop()));
                                       if(_loc2_ || this)
                                       {
                                          _loc1_ = §§pop();
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             §§push(_loc1_);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(" mYcenterB2previous: ");
                                                §§push(this.§]!=§);
                                                if(_loc2_)
                                                {
                                                   §§goto(addr146);
                                                }
                                                §§goto(addr544);
                                             }
                                             §§goto(addr726);
                                          }
                                          §§goto(addr500);
                                       }
                                       §§goto(addr577);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr593);
                              }
                              addr146:
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(!_loc3_)
                              {
                                 _loc1_ = §§pop();
                                 §§push(_loc1_);
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    §§push(" mTimeNeededForCameraMovement: ");
                                    if(_loc2_)
                                    {
                                       addr165:
                                       _loc1_ = §§pop() + (§§pop() + this.§]!=§);
                                       §§push(_loc1_);
                                       if(_loc2_)
                                       {
                                          §§push(" mTimeUsedForCameraMovement: ");
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push(this.§]!=§);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop() + (§§pop() + §§pop()));
                                                if(_loc2_)
                                                {
                                                   _loc1_ = §§pop();
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      §§push(_loc1_);
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         §§push("\n mTimeNeededForScaleMovement: ");
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            §§push(this.§]!=§);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc2_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc2_ || _loc1_)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     §§push(_loc1_);
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        addr238:
                                                                        §§push(" mTimeUsedForScaleMovement: ");
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           §§push(this.§]!=§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(§§pop() + (§§pop() + §§pop()));
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 _loc1_ = §§pop();
                                                                                 if(_loc2_ || _loc1_)
                                                                                 {
                                                                                    addr268:
                                                                                    §§push(_loc1_);
                                                                                    §§push(" mTargetScale: ");
                                                                                    if(_loc2_ || this)
                                                                                    {
                                                                                       §§push(this.§]!=§);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr282:
                                                                                          §§push(§§pop() + (§§pop() + §§pop()));
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             addr291:
                                                                                             _loc1_ = §§pop();
                                                                                             if(!(_loc3_ && _loc1_))
                                                                                             {
                                                                                                addr299:
                                                                                                §§push(_loc1_);
                                                                                                §§push(" mTargetScalePrevious: ");
                                                                                                §§push(this.§]!=§);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                   if(!(_loc3_ && _loc1_))
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         _loc1_ = §§pop();
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            §§push(_loc1_);
                                                                                                            if(!(_loc3_ && _loc1_))
                                                                                                            {
                                                                                                               addr329:
                                                                                                               §§push(" mCastleCameraX: " + this.§]!=§);
                                                                                                               if(_loc2_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        _loc1_ = §§pop();
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           §§push(_loc1_);
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              §§push("\n mCastleCameraY: ");
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 §§push(this.§]!=§);
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    addr363:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!(_loc3_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!(_loc3_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             _loc1_ = §§pop();
                                                                                                                                             if(_loc2_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(_loc1_);
                                                                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(" mCastleCameraScale: ");
                                                                                                                                                   if(_loc2_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§]!=§);
                                                                                                                                                      if(!(_loc3_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         addr426:
                                                                                                                                                         §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr429:
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                  if(_loc2_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     addr443:
                                                                                                                                                                     §§push(" mBirdCameraX: ");
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§]!=§);
                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           addr450:
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc1_ = §§pop() + §§pop();
                                                                                                                                                                              §§push(_loc1_);
                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(" mBirdCameraY: ");
                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr464:
                                                                                                                                                                                    §§push(§§pop() + this.§]!=§);
                                                                                                                                                                                    if(_loc2_ || _loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr473:
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc1_ = §§pop();
                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc1_);
                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr482:
                                                                                                                                                                                                §§push(" mBirdCameraScale: ");
                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr488:
                                                                                                                                                                                                   §§push(§§pop() + (§§pop() + this.§]!=§));
                                                                                                                                                                                                   if(_loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                                                                      if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr500:
                                                                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr508:
                                                                                                                                                                                                            §§push("\n mScreenLeftScroll: ");
                                                                                                                                                                                                            §§push(this.§]!=§);
                                                                                                                                                                                                            if(_loc2_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                               if(_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc1_ = §§pop();
                                                                                                                                                                                                                     if(_loc2_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr540:
                                                                                                                                                                                                                        §§push(_loc1_);
                                                                                                                                                                                                                        §§push(" mScreenTopScroll: ");
                                                                                                                                                                                                                        §§push(this.§]!=§);
                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr544:
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                                                                                                                 addr552:
                                                                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                                                                 §§push(" mDragging: ");
                                                                                                                                                                                                                                 §§push(this.§]!=§);
                                                                                                                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc1_ = §§pop() + (§§pop() + §§pop());
                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr569:
                                                                                                                                                                                                                                       §§push(_loc1_);
                                                                                                                                                                                                                                       §§push(" mDraggingPointPreviousX: " + this.§]!=§);
                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr577:
                                                                                                                                                                                                                                          _loc1_ = §§pop() + §§pop();
                                                                                                                                                                                                                                          addr580:
                                                                                                                                                                                                                                          §§push(_loc1_ + (" mDraggingPointPreviousY: " + this.§]!=§));
                                                                                                                                                                                                                                          if(_loc2_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr593:
                                                                                                                                                                                                                                             _loc1_ = §§pop();
                                                                                                                                                                                                                                             addr601:
                                                                                                                                                                                                                                             _loc1_ += "\n mDraggingPointCurrentX: " + this.§]!=§;
                                                                                                                                                                                                                                             addr595:
                                                                                                                                                                                                                                             §§push(_loc1_);
                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr605:
                                                                                                                                                                                                                                                §§push(" mDraggingPointCurrentY: ");
                                                                                                                                                                                                                                                §§push(this.§]!=§);
                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr611:
                                                                                                                                                                                                                                                   §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                                   if(_loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr615:
                                                                                                                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                                                                                                                      if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr623:
                                                                                                                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                                                                                                                         if(!(_loc3_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr631:
                                                                                                                                                                                                                                                            §§push(" mDraggingPointOriginalX: ");
                                                                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§]!=§);
                                                                                                                                                                                                                                                               if(_loc2_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr643:
                                                                                                                                                                                                                                                                  §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr648:
                                                                                                                                                                                                                                                                     _loc1_ = §§pop();
                                                                                                                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(" mDraggingPointOriginalY: ");
                                                                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + this.§]!=§);
                                                                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr660:
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr669:
                                                                                                                                                                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                                                                                                                 §§push(" mDraggingTimer: ");
                                                                                                                                                                                                                                                                                 §§push(this.§]!=§);
                                                                                                                                                                                                                                                                                 if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr689:
                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                       if(_loc2_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr698:
                                                                                                                                                                                                                                                                                          _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                          §§push(_loc1_);
                                                                                                                                                                                                                                                                                          if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr710:
                                                                                                                                                                                                                                                                                             §§push(§§pop() + ("\n mCameraBorderLeft: " + this.§]!=§));
                                                                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr715:
                                                                                                                                                                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr726:
                                                                                                                                                                                                                                                                                                      §§push(" mCameraBorderRight: ");
                                                                                                                                                                                                                                                                                                      if(_loc2_ || this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr736:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + this.§]!=§);
                                                                                                                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr740:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                               addr744:
                                                                                                                                                                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                                                                                                                                                                               §§push(" mCameraBorderSky: ");
                                                                                                                                                                                                                                                                                                               §§push(this.§]!=§);
                                                                                                                                                                                                                                                                                                               if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr757:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                                                                                                  if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr779:
                                                                                                                                                                                                                                                                                                                        §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                        §§push(" mCameraBorderGround: ");
                                                                                                                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr784:
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + (§§pop() + this.§]!=§));
                                                                                                                                                                                                                                                                                                                           if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr794:
                                                                                                                                                                                                                                                                                                                              _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                              §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr806:
                                                                                                                                                                                                                                                                                                                                 _loc1_ = §§pop() + (" mPigsAreOnRight: " + this.§]!=§ + "\n ");
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr806);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr808);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr806);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr784);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr794);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr806);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr794);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr779);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr726);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr779);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr784);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr736);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr757);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr806);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr757);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr698);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr669);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr710);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr808);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr744);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr710);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr643);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr779);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr710);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr744);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr698);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr643);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr740);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr806);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr784);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr569);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr580);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr806);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr784);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr615);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr779);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr698);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr611);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr605);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr669);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr595);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr660);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr580);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr808);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr488);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr464);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr784);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr605);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr744);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr601);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr740);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr450);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr540);
                                                                                                                                                }
                                                                                                                                                §§goto(addr508);
                                                                                                                                             }
                                                                                                                                             §§goto(addr552);
                                                                                                                                          }
                                                                                                                                          §§goto(addr715);
                                                                                                                                       }
                                                                                                                                       §§goto(addr473);
                                                                                                                                    }
                                                                                                                                    §§goto(addr689);
                                                                                                                                 }
                                                                                                                                 §§goto(addr580);
                                                                                                                              }
                                                                                                                              §§goto(addr669);
                                                                                                                           }
                                                                                                                           §§goto(addr443);
                                                                                                                        }
                                                                                                                        §§goto(addr580);
                                                                                                                     }
                                                                                                                     §§goto(addr482);
                                                                                                                  }
                                                                                                                  §§goto(addr601);
                                                                                                               }
                                                                                                               §§goto(addr710);
                                                                                                            }
                                                                                                            §§goto(addr806);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr540);
                                                                                                   }
                                                                                                   §§goto(addr689);
                                                                                                }
                                                                                                §§goto(addr363);
                                                                                             }
                                                                                             §§goto(addr623);
                                                                                          }
                                                                                          §§goto(addr605);
                                                                                       }
                                                                                       §§goto(addr806);
                                                                                    }
                                                                                    §§goto(addr329);
                                                                                 }
                                                                                 §§goto(addr299);
                                                                              }
                                                                              §§goto(addr593);
                                                                           }
                                                                           §§goto(addr329);
                                                                        }
                                                                        §§goto(addr464);
                                                                     }
                                                                     §§goto(addr299);
                                                                  }
                                                                  §§goto(addr429);
                                                               }
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                         §§goto(addr784);
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr669);
                                                }
                                                §§goto(addr648);
                                             }
                                             §§goto(addr611);
                                          }
                                          §§goto(addr784);
                                       }
                                       §§goto(addr299);
                                    }
                                 }
                                 §§goto(addr744);
                              }
                              addr808:
                              return _loc1_;
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr552);
                     }
                     §§goto(addr710);
                  }
                  §§goto(addr631);
               }
               §§goto(addr426);
            }
            §§goto(addr488);
         }
         §§goto(addr669);
      }
   }
}
