package §+!!§
{
   import §,z§.§"_§;
   import §8!K§.§1!R§;
   import §8!K§.§5!0§;
   import §@L§.§?!'§;
   import com.angrybirds.§&!"§;
   import each.§!!'§;
   
   public class §5"+§
   {
      
      public static const §8!%§:Number = 1.25;
      
      public static const §[h§:Number = 0.15;
      
      public static const §8"#§:Number;
      
      public static const §<!V§:Number;
      
      public static const §8!c§:Number = 0.1;
      
      public static const §@!I§:int = 1500;
      
      public static const §<_§:int = 10;
      
      public static const §5^§:int = 15;
      
      public static const §+!2§:int = 300;
      
      public static const §-L§:int = 1000;
      
      public static const §<!6§:int = 10000;
      
      public static const §%!<§:int = 200.0;
      
      public static const §<!Y§:int = 0;
      
      public static const §-!+§:int = 1;
      
      public static const §"!W§:int = 2;
      
      public static const §&!$§:int = 3;
      
      public static const §8%§:int = 4;
      
      public static const §<2§:int = 5;
      
      public static const §4!Y§:String = "CASTLE";
      
      public static const §,!G§:String = "SLINGSHOT";
      
      protected static var §0!%§:Number;
      
      public static const §]C§:Number = 2000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §8!%§ = 1.25;
            while(true)
            {
               §[h§ = 0.15;
               loop1:
               while(true)
               {
                  §8"#§ = §&!"§.§8#§ * §?!'§.§'!i§;
                  addr259:
                  while(true)
                  {
                     §<!V§ = §&!"§.§'+§ * §?!'§.§'!i§;
                     continue loop1;
                  }
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §,!G§ = §1!R§.SLINGSHOT;
               §§goto(addr39);
            }
         }
         while(true)
         {
            §"!W§ = 2;
            §§goto(addr133);
         }
      }
      
      protected var §;m§:Number = 1.0;
      
      protected var §&@§:Number = 0.2;
      
      protected var §<!-§:Number;
      
      protected var §?=§:Number;
      
      protected var §]!Y§:Number;
      
      public var §<Y§:§?!'§;
      
      public var §`!Q§:Number;
      
      public var §3G§:Number;
      
      protected var §%"-§:§@!K§;
      
      protected var §7!O§:§@!K§;
      
      protected var §[!B§:Number;
      
      protected var §0e§:Number;
      
      protected var §&!0§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §<""§:Number;
      
      protected var §6]§:Number;
      
      protected var §<!#§:Number;
      
      protected var §%v§:Number;
      
      protected var §>!'§:Number;
      
      protected var §?;§:Number;
      
      protected var §5n§:§,!?§;
      
      protected var §&!d§:§,!?§;
      
      protected var §;!w§:Number = 0;
      
      protected var §%!7§:Number = 0;
      
      protected var §2"&§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §3"-§:Number = 0;
      
      public var §=?§:Boolean = true;
      
      public var §9!j§:Number = 0;
      
      public var §-"+§:Number = 0;
      
      public var §%4§:Number = 0;
      
      public var §-u§:Number = 0;
      
      public var §9!<§:Number = 0;
      
      public var § !'§:Number = 0;
      
      public var §!"§:Number = 0;
      
      public var §%!t§:Number = 0;
      
      public var §++§:Number = 0;
      
      private var §%!c§:§,!?§;
      
      public var §'z§:Number = 0;
      
      private var §7c§:Number = 0;
      
      private var §#!=§:Number = 0;
      
      private var §>§:§1!R§ = null;
      
      private var §0!v§:§1!R§ = null;
      
      public function §5"+§(param1:§?!'§, param2:§5!0§, param3:Number = 1.0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            this.§%!c§ = new §,!?§(0,0,1,false);
            loop0:
            while(true)
            {
               super();
               addr307:
               while(true)
               {
                  this.§?=§ = 0;
                  continue loop0;
               }
            }
         }
         §§goto(addr259);
      }
      
      public static function get §,H§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§&!"§.§,!C§);
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop() / §&!"§.§3H§);
            if(_loc2_ || _loc2_)
            {
               addr35:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            if(_loc2_ || _loc1_)
            {
               §§push(_loc1_);
               if(_loc2_ || _loc3_)
               {
                  if(§§pop() > 1)
                  {
                     if(_loc2_)
                     {
                        addr66:
                        §§push(Number(1));
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_ = §§pop();
                           addr76:
                           §§push(§0!%§);
                           if(!(_loc3_ && _loc1_))
                           {
                              addr84:
                              §§push(_loc1_);
                              if(!(_loc3_ && §5"+§))
                              {
                                 §§goto(addr107);
                              }
                              addr107:
                              §§push(§§pop() * §§pop());
                              if(!_loc3_)
                              {
                                 addr105:
                                 §§push(_loc1_);
                              }
                              return §§pop();
                              §§push(§§pop() * §§pop());
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr84);
                     }
                  }
                  §§goto(addr76);
               }
               §§goto(addr107);
            }
            §§goto(addr66);
         }
         §§goto(addr35);
      }
      
      public function get §7!g§() : Number
      {
         return this.§<!-§;
      }
      
      public function set §7!g§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§<!-§ = param1;
         }
      }
      
      public function §]>§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§8"#§);
         if(!_loc2_)
         {
            §§push(this.§%v§);
            if(!_loc2_)
            {
               §§push(§§pop() - this.§<!#§);
            }
            return §§pop() / §§pop();
         }
      }
      
      public function get §0[§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§&!"§.§,!C§);
         if(_loc2_)
         {
            §§push(§§pop() / §&!"§.§3H§);
            if(_loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(this.§;m§);
         if(_loc2_)
         {
            return §§pop() / _loc1_;
         }
      }
      
      public function get §80§() : Number
      {
         return this.§&@§;
      }
      
      public function get §=f§() : Number
      {
         return this.§[!B§;
      }
      
      public function get §98§() : Number
      {
         return this.§0e§;
      }
      
      public function get §&!;§() : Number
      {
         return this.§<!#§;
      }
      
      public function get § !3§() : Number
      {
         return this.§%v§;
      }
      
      public function get §^!>§() : Number
      {
         return this.§<""§;
      }
      
      public function get §#[§() : Number
      {
         return this.§6]§;
      }
      
      public function get § a§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§%v§);
         if(_loc2_ || _loc2_)
         {
            return §§pop() - this.§<!#§;
         }
      }
      
      protected function get §+!I§() : §@!K§
      {
         return this.§%"-§;
      }
      
      public function §6!v§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<!-§ = param1;
            while(true)
            {
               this.§`D§();
               while(_loc2_ || _loc2_)
               {
                  this.§-<§(this.mCurrentCameraSliderLocation,1);
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  return;
                  addr46:
               }
            }
         }
         §§goto(addr46);
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.mCurrentAction != §<2§)
            {
               while(true)
               {
                  this.goToCastleView();
                  loop1:
                  while(_loc2_)
                  {
                     this.§9!j§ = 2000;
                     do
                     {
                        if(_loc1_)
                        {
                           continue loop1;
                        }
                        if(!(_loc1_ && _loc2_))
                        {
                           continue;
                        }
                     }
                     while(this.§?!F§(), _loc1_ && _loc1_);
                     
                     return;
                  }
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mCurrentCameraSliderLocation = 0;
            loop0:
            while(true)
            {
               this.§?=§ = this.§7!O§.x;
               loop1:
               while(true)
               {
                  this.§]!Y§ = this.§7!O§.y;
                  while(true)
                  {
                     this.§=?§ = false;
                     addr58:
                     if(_loc3_ || this)
                     {
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              this.§`"$§(§<2§);
                              addr69:
                              if(!_loc2_)
                              {
                                 return;
                              }
                              loop4:
                              while(true)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr58);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(§<!6§ / 160000);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§pop().§3"-§ = §§pop();
                                       continue loop4;
                                    }
                                    addr74:
                                 }
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §97§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§%"-§.x);
         if(!_loc3_)
         {
            §§push(this.§7!O§.x);
            if(_loc2_)
            {
               addr43:
               §§push(§§pop() - §§pop());
               if(_loc2_ || _loc2_)
               {
                  §§push(1.6);
               }
               var _loc1_:* = Number(§§pop());
               if(!(_loc3_ && _loc3_))
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(§8"#§);
                     if(!(_loc3_ && this))
                     {
                        §§push(§§pop() * 1.2);
                        if(!(_loc3_ && this))
                        {
                           addr215:
                           if(§§pop() < §§pop())
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(§8"#§);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr224:
                                    §§push(1.2);
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc2_ || _loc3_)
                                       {
                                       }
                                       addr244:
                                       while(true)
                                       {
                                          _loc1_ = §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             addr184:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§7!O§.x);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() - _loc1_);
                                                }
                                                §§pop().§<!#§ = §§pop();
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§%"-§.x);
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§push(§§pop() + _loc1_);
                                                   }
                                                   §§pop().§%v§ = §§pop();
                                                   while(true)
                                                   {
                                                      this.§>!'§ = Math.min(this.§%"-§.y,this.§7!O§.y) - §<!V§;
                                                      addr167:
                                                      §§goto(addr91);
                                                   }
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      addr91:
                                                   }
                                                   continue;
                                                   while(true)
                                                   {
                                                      this.§?;§ = Math.max(this.§%"-§.y,this.§7!O§.y) + §<!V§;
                                                      continue loop5;
                                                   }
                                                   return;
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                       §§goto(addr224);
                                    }
                                    addr225:
                                 }
                                 while(true)
                                 {
                                    §§goto(addr244);
                                    continue loop2;
                                 }
                              }
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr225);
                     }
                     §§goto(addr215);
                  }
                  §§goto(addr244);
               }
               §§goto(addr167);
            }
            §§push(§§pop() / §§pop());
            if(_loc2_ || _loc3_)
            {
            }
         }
         §§goto(addr43);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§<Y§ = null;
         }
      }
      
      public function §@!f§(param1:§5!0§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:§1!R§ = null;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < param1.§^!U§)
         {
            _loc3_ = param1.§8!W§(_loc2_);
            if(!(_loc9_ && _loc3_))
            {
               §§push(_loc3_.id);
               if(_loc8_ || _loc2_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        if(!_loc9_)
                        {
                           while(true)
                           {
                              §§push(§§pop().toUpperCase());
                           }
                           addr340:
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
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§pop();
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(_loc3_.scale);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().toString() == "null");
                                                      addr293:
                                                      while(!_loc9_)
                                                      {
                                                         §§push(!§§pop());
                                                         while(!_loc9_)
                                                         {
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop9;
                                                      addr223:
                                                      if(!(_loc8_ || param1))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc9_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      _loc6_ = §§pop();
                                                      loop25:
                                                      while(!(_loc9_ && this))
                                                      {
                                                         §§push(this.calculateCameraScale(_loc3_));
                                                         if(_loc8_)
                                                         {
                                                            addr194:
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               addr202:
                                                               §§push(Number(§§pop()));
                                                               if(!_loc9_)
                                                               {
                                                                  if(_loc8_ || _loc2_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              while(_loc8_)
                                                                              {
                                                                                 continue loop1;
                                                                                 addr99:
                                                                                 §§push(_loc4_);
                                                                                 if(!(_loc8_ || _loc3_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(§4!Y§);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc9_ && _loc2_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                continue loop26;
                                                                                             }
                                                                                             this.§7!O§ = new §@!K§(_loc5_,_loc6_,_loc7_,true);
                                                                                          }
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§&!d§ = new §,!?§(_loc5_,_loc6_,_loc7_,true);
                                                                                             loop30:
                                                                                             while(!(_loc9_ && _loc3_))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc2_++;
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(_loc9_ && _loc2_)
                                                                                                      {
                                                                                                         continue loop30;
                                                                                                      }
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                      if(true)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr45);
                                                                                                      }
                                                                                                      continue loop30;
                                                                                                   }
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             continue loop10;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr99);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(!(_loc9_ && this))
                                                                                             {
                                                                                                §§goto(addr45);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr120:
                                                                                                loop32:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc9_ && _loc2_)
                                                                                                   {
                                                                                                      break loop26;
                                                                                                   }
                                                                                                   this.§5n§ = new §,!?§(_loc5_,_loc6_,_loc7_,false);
                                                                                                   while(_loc9_ && this)
                                                                                                   {
                                                                                                      continue loop32;
                                                                                                   }
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      loop22:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_.y);
                                                                                                         addr220:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr221:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §§goto(addr223);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     addr245:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc5_ = §§pop();
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr244:
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop11;
                                                                                                            §§goto(addr194);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr120:
                                                                                             }
                                                                                             §§goto(addr62);
                                                                                          }
                                                                                          §§goto(addr87);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§%"-§ = new §@!K§(_loc5_,_loc6_,_loc7_,false);
                                                                                       §§goto(addr120);
                                                                                    }
                                                                                    addr112:
                                                                                    addr157:
                                                                                 }
                                                                                 if(§§pop() != §§pop())
                                                                                 {
                                                                                    §!!'§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
                                                                                    §§goto(addr68);
                                                                                 }
                                                                                 §§goto(addr112);
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           addr276:
                                                                           while(_loc8_ || _loc2_)
                                                                           {
                                                                              this.§@p§(_loc3_);
                                                                              break loop26;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr120);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr303:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().toString() == "0");
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr255:
                                                                              if(_loc8_ || this)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    addr265:
                                                                                    §§push(!§§pop());
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr267:
                                                                                       if(!(_loc8_ || _loc2_))
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr296);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§goto(addr276);
                                                                                       }
                                                                                       addr241:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr244);
                                                                                       }
                                                                                       §§goto(addr267);
                                                                                    }
                                                                                    addr274:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr293);
                                                                                 }
                                                                                 §§goto(addr296);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr265);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           break loop25;
                                                                           §§goto(addr255);
                                                                        }
                                                                        addr250:
                                                                        addr303:
                                                                     }
                                                                     §§goto(addr241);
                                                                  }
                                                                  §§goto(addr245);
                                                               }
                                                               §§goto(addr221);
                                                            }
                                                            §§goto(addr220);
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr250);
                                                         §§goto(addr303);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc9_)
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                §§goto(addr303);
                                             }
                                             §§goto(addr274);
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
               §§goto(addr340);
            }
            §§goto(addr304);
         }
      }
      
      protected function calculateCameraScale(param1:§1!R§) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§<!V§);
         if(!_loc4_)
         {
            §§push(param1.bottom);
            if(_loc5_)
            {
               §§push(§§pop() - param1.top);
            }
            §§push(§§pop() / §§pop());
            if(!(_loc4_ && _loc3_))
            {
               addr35:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(§8"#§);
            if(!_loc4_)
            {
               §§push(param1.right);
               if(!_loc4_)
               {
                  §§push(§§pop() - param1.left);
               }
               §§push(§§pop() / §§pop());
               if(_loc5_ || this)
               {
                  addr65:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               if(!(_loc4_ && _loc2_))
               {
                  §§push(_loc3_);
                  if(_loc5_ || this)
                  {
                     if(§§pop() < _loc2_)
                     {
                        addr85:
                        §§push(_loc3_);
                        if(!(_loc4_ && _loc2_))
                        {
                           addr93:
                           §§push(Number(§§pop()));
                           if(!_loc5_)
                           {
                           }
                           §§goto(addr116);
                        }
                     }
                     else
                     {
                        §§push(_loc2_);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     addr116:
                     return §§pop();
                  }
                  §§goto(addr93);
               }
               §§goto(addr85);
            }
            §§goto(addr65);
         }
         §§goto(addr35);
      }
      
      public function §4T§(param1:§5!0§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§1!R§ = new §1!R§();
         if(!_loc8_)
         {
            _loc2_.id = §,!G§;
            loop0:
            while(true)
            {
               addr36:
               while(true)
               {
                  _loc2_.x = this.§7!O§.x;
                  continue loop0;
               }
            }
            addr46:
         }
         while(true)
         {
            _loc2_.y = this.§7!O§.y;
            if(_loc8_)
            {
               continue;
            }
            if(_loc9_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr46);
            }
            §§goto(addr36);
         }
         §§push(§8"#§);
         if(!_loc8_)
         {
            §§push(§§pop() / this.§7!O§.scale);
            if(_loc9_ || _loc3_)
            {
               §§push(§§pop() / 2);
               if(_loc9_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc3_:* = §§pop();
         §§push(§<!V§);
         if(!_loc8_)
         {
            §§push(§§pop() / this.§7!O§.scale);
            if(_loc9_)
            {
               §§push(§§pop() / 2);
               if(_loc9_ || _loc3_)
               {
                  addr90:
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            if(!(_loc8_ && _loc3_))
            {
               §§push(_loc2_);
               §§push(this.§7!O§.x);
               if(!_loc8_)
               {
                  §§push(§§pop() - _loc3_);
               }
               §§pop().left = §§pop();
            }
            while(true)
            {
               §§push(_loc2_);
               §§push(this.§7!O§.x);
               if(_loc9_)
               {
                  §§push(§§pop() + _loc3_);
               }
               §§pop().right = §§pop();
               loop4:
               while(!_loc8_)
               {
                  loop5:
                  do
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.y);
                     if(_loc9_)
                     {
                        §§push(§§pop() - _loc4_);
                     }
                     §§pop().top = §§pop();
                     while(_loc9_)
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(_loc9_ || _loc2_)
                        {
                           §§push(§§pop() + _loc4_);
                        }
                        §§pop().bottom = §§pop();
                        if(!(_loc8_ && param1))
                        {
                           continue loop5;
                        }
                     }
                     continue loop4;
                  }
                  while(false);
                  
                  var _loc5_:§1!R§;
                  (_loc5_ = new §1!R§()).id = §4!Y§;
                  if(!(_loc8_ && param1))
                  {
                     _loc5_.x = this.§%"-§.x;
                     if(!_loc8_)
                     {
                        _loc5_.y = this.§%"-§.y;
                     }
                  }
                  §§push(§8"#§);
                  if(!(_loc8_ && this))
                  {
                     §§push(§§pop() / this.§%"-§.scale);
                     if(_loc9_)
                     {
                        §§push(§§pop() / 2);
                        if(!_loc8_)
                        {
                           addr212:
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc6_:* = §§pop();
                     §§push(§<!V§);
                     if(!(_loc8_ && this))
                     {
                        §§push(§§pop() / this.§%"-§.scale);
                        if(_loc9_ || this)
                        {
                           §§push(§§pop() / 2);
                           if(!(_loc8_ && this))
                           {
                              addr242:
                              §§push(Number(§§pop()));
                           }
                           var _loc7_:* = §§pop();
                           if(_loc9_ || this)
                           {
                              §§push(_loc5_);
                              §§push(this.§%"-§.x);
                              if(_loc9_)
                              {
                                 §§push(§§pop() - _loc6_);
                              }
                              §§pop().left = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 §§push(this.§%"-§.x);
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    §§push(§§pop() + _loc6_);
                                 }
                                 §§pop().right = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    §§push(_loc5_.y);
                                    if(_loc9_ || param1)
                                    {
                                       §§push(§§pop() - _loc7_);
                                    }
                                    §§pop().top = §§pop();
                                    while(_loc9_ || param1)
                                    {
                                       §§push(_loc5_);
                                       §§push(_loc5_.y);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() + _loc7_);
                                       }
                                       §§pop().bottom = §§pop();
                                       while(!_loc8_)
                                       {
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              param1.§'!1§();
                              while(true)
                              {
                                 param1.§7!x§(_loc2_);
                                 for(; !(_loc8_ && _loc3_); param1.§7!x§(_loc5_),if(_loc9_ || this)
                                 {
                                    return;
                                 })
                                 {
                                    if(!_loc8_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr295);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr242);
                  }
                  §§goto(addr212);
               }
            }
         }
         §§goto(addr90);
      }
      
      public function §@p§(param1:§1!R§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1.scale);
         if(!(_loc8_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.x);
         if(_loc7_)
         {
            §§push(§&!"§.§8#§ * 0.5);
            if(_loc7_)
            {
               §§push(_loc2_);
               if(!(_loc8_ && this))
               {
                  addr51:
                  §§push(§§pop() / §§pop());
                  if(!_loc8_)
                  {
                     §§push(§?!'§.§'!i§);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc7_)
                  {
                     addr55:
                     var _loc3_:Number = §§pop();
                     §§push(param1.y);
                     if(!(_loc8_ && _loc2_))
                     {
                        §§push(§&!"§.§'+§ * 0.5);
                        if(_loc7_ || param1)
                        {
                           §§push(_loc2_);
                           if(_loc7_)
                           {
                              addr90:
                              §§push(§§pop() / §§pop());
                              if(!(_loc8_ && param1))
                              {
                                 §§push(§?!'§.§'!i§);
                              }
                              §§push(§§pop() - §§pop());
                              if(!_loc8_)
                              {
                                 addr93:
                                 §§push(Number(§§pop()));
                              }
                              var _loc4_:* = §§pop();
                              §§push(_loc3_);
                              if(_loc7_ || this)
                              {
                                 §§push(§&!"§.§8#§ / _loc2_);
                                 if(_loc7_ || _loc3_)
                                 {
                                    §§push(§§pop() * §?!'§.§'!i§);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc7_ || this)
                                 {
                                    addr135:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc5_:* = §§pop();
                                 §§push(_loc4_);
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    §§push(§&!"§.§'+§ / _loc2_);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() * §?!'§.§'!i§);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       addr162:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc6_:* = §§pop();
                                    if(_loc7_)
                                    {
                                       param1.left = _loc3_;
                                       while(true)
                                       {
                                          param1.top = _loc4_;
                                          loop1:
                                          for(; !_loc8_; if(!(_loc7_ || param1))
                                          {
                                             continue;
                                          },§§goto(addr184))
                                          {
                                             param1.right = _loc5_;
                                             while(true)
                                             {
                                                param1.bottom = _loc6_;
                                                loop3:
                                                while(_loc7_ || _loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      param1.scale = 0;
                                                      if(_loc7_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      continue loop3;
                                                   }
                                                   return;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr135);
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr55);
               }
               §§push(§§pop() * §§pop());
            }
            §§goto(addr51);
         }
         §§goto(addr55);
      }
      
      protected function §6!%§(param1:§@!K§, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = Number(this.mCurrentCameraSliderLocation);
         if(_loc4_ || param2)
         {
            §§push(_loc3_);
            if(!(_loc5_ && _loc3_))
            {
               §§push(param2);
               if(_loc4_)
               {
                  §§push(§§pop() * this.§3"-§);
               }
               §§push(§§pop() + §§pop());
               while(true)
               {
                  §§push(Number(§§pop()));
               }
               addr153:
            }
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
                     §§push(§<!6§);
                     loop4:
                     while(§§pop() < §§pop())
                     {
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           if(_loc5_ && _loc3_)
                           {
                              continue loop1;
                           }
                           §§push(0);
                           if(_loc5_)
                           {
                              continue;
                           }
                           if(§§pop() <= §§pop())
                           {
                              if(!_loc5_)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(0);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop3;
                                       }
                                       if(!_loc5_)
                                       {
                                          addr102:
                                          §§push(Number(§§pop()));
                                          if(_loc4_ || param1)
                                          {
                                             _loc3_ = §§pop();
                                             loop8:
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   this.§`"$§(§<!Y§);
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         break loop4;
                                                      }
                                                      addr57:
                                                      while(true)
                                                      {
                                                         this.mCurrentCameraSliderLocation = _loc3_;
                                                         if(_loc4_ || this)
                                                         {
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               return;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop9;
                                                         §§goto(addr57);
                                                      }
                                                   }
                                                }
                                                addr117:
                                                while(true)
                                                {
                                                   §§goto(addr32);
                                                }
                                             }
                                             addr110:
                                          }
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                          }
                                          addr124:
                                       }
                                       else
                                       {
                                          §§goto(addr153);
                                       }
                                    }
                                    §§goto(addr102);
                                 }
                                 while(!_loc5_)
                                 {
                                    this.§`"$§(§<!Y§);
                                    §§goto(addr117);
                                    §§goto(addr124);
                                 }
                                 continue loop2;
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr57);
                        }
                        §§goto(addr102);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr102);
         }
      }
      
      private function §=",§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = Number(this.mCurrentCameraSliderLocation);
         if(_loc6_ || _loc3_)
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               §§push(param1);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() * this.§3"-§);
               }
               §§push(§§pop() + §§pop());
               if(_loc6_ || this)
               {
                  §§push(Number(§§pop()));
                  if(_loc6_ || param1)
                  {
                     _loc2_ = §§pop();
                     addr59:
                     §§push(0.7);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
            }
            var _loc3_:* = §§pop();
            §§push(-§<!6§);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() * _loc3_);
               if(_loc6_)
               {
                  addr82:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               if(!(_loc5_ && _loc3_))
               {
                  §§push(_loc2_);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop() >= §<!6§);
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    §§push(_loc4_);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(_loc5_)
                                       {
                                          continue loop2;
                                       }
                                       if(!(_loc6_ || _loc3_))
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   addr203:
                                                   while(true)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         §§push(Number(§<!6§));
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc5_ && param1)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr217:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        addr217:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§3"-§);
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           §§push(-§§pop());
                                                                        }
                                                                        §§pop().§3"-§ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr96);
                                                                        }
                                                                        continue loop5;
                                                                        §§goto(addr217);
                                                                     }
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               continue loop14;
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                         §§goto(addr216);
                                                      }
                                                      §§goto(addr204);
                                                      continue loop14;
                                                   }
                                                }
                                             }
                                          }
                                          addr96:
                                          §§goto(addr133);
                                       }
                                    }
                                    §§goto(addr203);
                                 }
                                 §§goto(addr216);
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr199);
                     }
                  }
               }
               addr133:
               while(true)
               {
                  this.mCurrentCameraSliderLocation = _loc2_;
                  if(!(_loc5_ && param1))
                  {
                     break loop7;
                  }
                  continue loop7;
               }
               addr133:
               return;
            }
            §§goto(addr82);
         }
         §§goto(addr59);
      }
      
      protected function §7!I§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.mCurrentAction);
            loop0:
            while(true)
            {
               §§push(§<2§);
               addr164:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     break loop0;
                  }
                  §§push(this.mCurrentAction);
                  continue loop0;
               }
            }
            if(!(_loc3_ && this))
            {
               this.§=",§(param1);
            }
            §§goto(addr185);
         }
         §§goto(addr160);
      }
      
      public function §>"%§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.adjustManualScale(true,0);
            while(true)
            {
               if(!this.§>§)
               {
                  this.§`D§();
                  loop1:
                  while(true)
                  {
                     if(!(_loc2_ && this))
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              this.§7!I§(param1);
                              continue loop1;
                           }
                           addr128:
                        }
                        else
                        {
                           loop2:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 §§push(§§findproperty(§0!%§));
                                 §§push(§8"#§);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(this.§>§.right);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(§§pop() - this.§>§.left);
                                    }
                                    §§push(§§pop() / §§pop());
                                 }
                                 §§pop().§0!%§ = §§pop();
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§?=§ = this.§>§.x;
                                    continue loop2;
                                 }
                                 addr169:
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        addr49:
                        loop4:
                        while(true)
                        {
                           this.§?!F§();
                           do
                           {
                              §§push(this);
                              §§push(§&!"§.§,!C§);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() / §&!"§.§3H§);
                              }
                              §§pop().§&!0§ = §§pop();
                           }
                           while(!(_loc3_ || param1));
                           
                           if(!(_loc2_ && param1))
                           {
                              break;
                           }
                           loop6:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop1;
                              }
                              addr101:
                              while(true)
                              {
                                 continue loop6;
                              }
                           }
                           continue loop1;
                        }
                        return;
                     }
                  }
               }
               §§goto(addr169);
            }
         }
         §§goto(addr128);
      }
      
      private function §#!z§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            if(Math.abs(this.§5n§.x - this.§&!d§.x) < 0.01)
            {
               if(_loc6_ || param2)
               {
                  addr41:
                  §§push(0.5);
                  if(_loc6_ || param2)
                  {
                     §§push(Number(§§pop()));
                     if(_loc6_)
                     {
                        param1 = §§pop();
                        addr53:
                        §§push(Number(this.§&!d§.scale + (this.§5n§.scale - this.§&!d§.scale) * param1));
                     }
                  }
                  var _loc3_:* = §§pop();
                  var _loc4_:Number = this.§&!d§.x + (this.§5n§.x - this.§&!d§.x) * param1;
                  var _loc5_:Number = this.§&!d§.y + (this.§5n§.y - this.§&!d§.y) * param1;
                  if(!(_loc7_ && this))
                  {
                     §§push(this.§%!c§);
                     loop0:
                     while(true)
                     {
                        §§push(this.§%!c§);
                        loop1:
                        while(true)
                        {
                           §§push(§§pop().x - (this.§%!c§.x - _loc4_) * param2);
                           loop2:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(this.§%!c§);
                                 loop4:
                                 for(; !_loc7_; while(true)
                                 {
                                    §§push(this.§%!c§);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    §§goto(addr140);
                                 })
                                 {
                                    §§push(this.§%!c§);
                                    while(true)
                                    {
                                       §§push(§§pop().y - (this.§%!c§.y - _loc5_) * param2);
                                       §§push(this.§%!c§);
                                       addr140:
                                       continue loop2;
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          if(!(_loc7_ && param2))
                                          {
                                             §§push(§§pop().scale - (this.§%!c§.scale - _loc3_) * param2);
                                             if(!(_loc7_ && param1))
                                             {
                                                §§pop().scale = §§pop();
                                                while(!_loc7_)
                                                {
                                                   this.§^!2§(this.§%!c§);
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         return;
                                                         addr134:
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             continue loop2;
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr134);
               }
            }
            §§goto(addr53);
         }
         §§goto(addr41);
      }
      
      protected function §-<§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         if(!(_loc5_ && this))
         {
            §§push(this.§;!w§);
            if(!(_loc5_ && param1))
            {
               §§push(0);
               loop0:
               for(; §§pop() != §§pop(); §§push(§<!6§),if(_loc5_ && param2)
               {
                  continue;
               },§§push(§§pop() / §§pop()),if(_loc5_)
               {
               },§§goto(addr119))
               {
                  while(true)
                  {
                     if(!this.§=?§)
                     {
                        while(true)
                        {
                           §§push(Number(1));
                           addr157:
                           while(true)
                           {
                              param2 = §§pop();
                              addr158:
                              while(true)
                              {
                              }
                           }
                        }
                        addr155:
                     }
                     while(true)
                     {
                        §§push(param1);
                        if(_loc4_ || param1)
                        {
                           continue loop0;
                        }
                        addr119:
                        §§push(Number(§§pop()));
                        if(!_loc5_)
                        {
                           _loc3_ = §§pop();
                           loop4:
                           while(true)
                           {
                              if(!(_loc5_ && param1))
                              {
                                 this.§#!z§(_loc3_,param2);
                                 addr98:
                                 while(true)
                                 {
                                    this.§?=§ = this.§%!c§.x;
                                    continue loop4;
                                 }
                                 addr98:
                              }
                              else
                              {
                                 §§goto(addr155);
                              }
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr157);
                     }
                     continue loop0;
                  }
               }
               return;
            }
            §§goto(addr157);
         }
         §§goto(addr98);
      }
      
      private function §+w§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc25_:Boolean = false;
         var _loc26_:Boolean = true;
         var _loc4_:§"_§;
         var _loc5_:Number = (_loc4_ = this.§<Y§.levelObjects.activeObject).§2F§();
         var _loc6_:Number = _loc4_.§&!s§();
         var _loc7_:Number;
         §§push(_loc7_ = _loc4_.§^`§().GetLinearVelocity().x);
         if(_loc26_ || param1)
         {
            §§push(0);
            if(_loc26_)
            {
               §§push(§§pop() > §§pop());
               if(_loc26_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc26_)
                     {
                        addr60:
                        §§pop();
                        if(_loc26_)
                        {
                           §§push(this.§;!w§);
                           if(_loc26_)
                           {
                              §§push(0);
                              if(!_loc25_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!_loc25_)
                                 {
                                    addr133:
                                    if(!§§pop())
                                    {
                                       if(_loc26_ || param1)
                                       {
                                          §§push(param1);
                                          if(_loc26_)
                                          {
                                             addr144:
                                             §§push(param2);
                                             if(_loc26_ || param1)
                                             {
                                                §§push(_loc7_);
                                                if(!(_loc25_ && param2))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc25_ && this))
                                                   {
                                                      §§push(10);
                                                      if(_loc26_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc26_ || param1)
                                                         {
                                                            addr186:
                                                            §§push(§§pop() / this.§;!w§);
                                                            if(!_loc25_)
                                                            {
                                                               §§push(§<!6§);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc25_ && param2))
                                                            {
                                                               addr195:
                                                               §§push(Number(§§pop()));
                                                               loop0:
                                                               while(true)
                                                               {
                                                                  param1 = §§pop();
                                                                  addr196:
                                                                  while(true)
                                                                  {
                                                                     addr84:
                                                                     addr215:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1);
                                                                        if(_loc25_ && param2)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     var _loc8_:* = §§pop();
                                                                     if(!_loc25_)
                                                                     {
                                                                        this.§#!z§(_loc8_,param3);
                                                                     }
                                                                     §§push(§&!"§.§,!C§);
                                                                     if(!_loc25_)
                                                                     {
                                                                        §§push(§&!"§.§3H§);
                                                                        if(!(_loc25_ && param3))
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           if(_loc26_)
                                                                           {
                                                                              addr238:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           §§push(§§pop());
                                                                        }
                                                                        var _loc9_:* = §§pop();
                                                                        if(!_loc25_)
                                                                        {
                                                                           if(§§pop() > 1)
                                                                           {
                                                                              if(_loc26_)
                                                                              {
                                                                                 §§push(Number(1));
                                                                                 if(!(_loc25_ && param2))
                                                                                 {
                                                                                    addr256:
                                                                                    _loc9_ = §§pop();
                                                                                    addr257:
                                                                                    §§push(this.§%!c§.x - §8"#§ / _loc9_ * 0.5 / this.§%!c§.scale);
                                                                                    if(_loc26_ || param3)
                                                                                    {
                                                                                       addr277:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc10_:* = §§pop();
                                                                                    §§push(this.§%!c§.y - §<!V§ * 0.5 / this.§%!c§.scale);
                                                                                    if(_loc26_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc11_:* = §§pop();
                                                                                    var _loc12_:Number = this.§%!c§.x + §8"#§ / _loc9_ * 0.5 / this.§%!c§.scale;
                                                                                    var _loc13_:Number = this.§%!c§.y + §<!V§ * 0.5 / this.§%!c§.scale;
                                                                                    §§push(150 * §?!'§.§'!i§);
                                                                                    if(!_loc25_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc14_:* = §§pop();
                                                                                    var _loc15_:* = Number(Math.min(_loc10_,_loc5_ - _loc14_));
                                                                                    var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
                                                                                    var _loc17_:* = Number(Math.max(_loc12_,_loc5_ + _loc14_));
                                                                                    var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
                                                                                    if(_loc26_)
                                                                                    {
                                                                                       §§push(Number(Math.max(this.§<!#§,_loc15_)));
                                                                                       if(_loc26_ || param2)
                                                                                       {
                                                                                          _loc15_ = §§pop();
                                                                                          if(!_loc25_)
                                                                                          {
                                                                                             §§push(Number(Math.min(this.§%v§,_loc17_)));
                                                                                             if(_loc26_)
                                                                                             {
                                                                                                _loc17_ = §§pop();
                                                                                                addr389:
                                                                                                §§push(Number(Math.abs(§8"#§ / _loc9_ / (_loc17_ - _loc15_))));
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr389);
                                                                                       }
                                                                                       var _loc19_:* = §§pop();
                                                                                       var _loc20_:Number = Math.abs(§<!V§ / (_loc18_ - _loc16_));
                                                                                       var _loc21_:*;
                                                                                       §§push(_loc21_ = Number(Math.min(_loc19_,_loc20_)));
                                                                                       if(!_loc25_)
                                                                                       {
                                                                                          if(§§pop() > this.§%!c§.scale)
                                                                                          {
                                                                                             if(!(_loc25_ && param2))
                                                                                             {
                                                                                                §§push(Number(this.§%!c§.scale));
                                                                                                if(!(_loc25_ && param3))
                                                                                                {
                                                                                                   _loc21_ = §§pop();
                                                                                                }
                                                                                                addr444:
                                                                                                §§push(_loc15_);
                                                                                                if(_loc26_ || param3)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc25_)
                                                                                                   {
                                                                                                      addr456:
                                                                                                      §§push(§§pop() * 0.5);
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                         addr459:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc22_:* = §§pop();
                                                                                                      §§push(_loc18_);
                                                                                                      if(!(_loc25_ && param1))
                                                                                                      {
                                                                                                         §§push(_loc16_);
                                                                                                         if(_loc26_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc26_ || this)
                                                                                                            {
                                                                                                               addr486:
                                                                                                               §§push(§§pop() * 0.5);
                                                                                                               if(!_loc26_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr490:
                                                                                                               var _loc23_:* = §§pop();
                                                                                                               var _loc24_:* = false;
                                                                                                               if(_loc26_ || this)
                                                                                                               {
                                                                                                                  §§push(_loc22_);
                                                                                                                  loop3:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§8"#§);
                                                                                                                     loop4:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                        loop5:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           loop6:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(0.5);
                                                                                                                              loop7:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 loop8:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc21_);
                                                                                                                                    loop9:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                       loop10:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          loop11:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§%v§);
                                                                                                                                             loop12:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                {
                                                                                                                                                   loop13:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§%v§);
                                                                                                                                                      if(!(_loc25_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(!_loc25_)
                                                                                                                                                            {
                                                                                                                                                               _loc17_ = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§8"#§);
                                                                                                                                                                  addr1324:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                     addr1325:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr1323:
                                                                                                                                                            }
                                                                                                                                                            addr1326:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                               addr1327:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                  addr1328:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     addr1329:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr1181:
                                                                                                                                                            if(!(_loc26_ || param3))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§push(§8"#§);
                                                                                                                                                            if(!(_loc25_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                               if(_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc25_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop9;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                     loop33:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                        if(!(_loc25_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           loop34:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                              if(!_loc25_)
                                                                                                                                                                              {
                                                                                                                                                                                 while(_loc26_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                    if(!_loc25_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop4;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(!_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§<!#§);
                                                                                                                                                                                          loop99:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() >= §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                loop50:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc24_);
                                                                                                                                                                                                   addr1083:
                                                                                                                                                                                                   loop51:
                                                                                                                                                                                                   while(_loc26_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc25_ && param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                                                                               loop106:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc25_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop3;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  loop102:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§8"#§);
                                                                                                                                                                                                                     addr1251:
                                                                                                                                                                                                                     loop103:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                        addr1252:
                                                                                                                                                                                                                        loop35:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                           loop36:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                                                                              addr1254:
                                                                                                                                                                                                                              loop37:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                 loop38:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    loop39:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc26_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          loop40:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc17_ = §§pop();
                                                                                                                                                                                                                                             loop41:
                                                                                                                                                                                                                                             while(_loc26_ || param2)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(true);
                                                                                                                                                                                                                                                loop42:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc24_ = §§pop();
                                                                                                                                                                                                                                                   loop43:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                                                                                                                      loop44:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1142:
                                                                                                                                                                                                                                                            if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc26_ || param3)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.§%v§);
                                                                                                                                                                                                                                                                  continue loop34;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop11;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1275:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§<!#§);
                                                                                                                                                                                                                                                               addr1277:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(this.§<!#§);
                                                                                                                                                                                                                                                                        addr1280:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           break loop44;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1278:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1175:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1181);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1323);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1246:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc25_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1249:
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                 continue loop102;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1249:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1246:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1329);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop9;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1142);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                         loop53:
                                                                                                                                                                                                                                                         while(_loc26_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc21_ = §§pop();
                                                                                                                                                                                                                                                            loop54:
                                                                                                                                                                                                                                                            while(!(_loc25_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc23_);
                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc25_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§<!V§);
                                                                                                                                                                                                                                                                        loop56:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc25_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(0.5);
                                                                                                                                                                                                                                                                                 loop57:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop37;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc25_ && param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    loop58:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                       loop59:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.§>!'§);
                                                                                                                                                                                                                                                                                          loop60:
                                                                                                                                                                                                                                                                                          while(_loc26_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                loop61:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§>!'§);
                                                                                                                                                                                                                                                                                                   loop62:
                                                                                                                                                                                                                                                                                                   while(_loc26_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§<!V§);
                                                                                                                                                                                                                                                                                                      loop63:
                                                                                                                                                                                                                                                                                                      while(_loc26_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(0.5);
                                                                                                                                                                                                                                                                                                         loop64:
                                                                                                                                                                                                                                                                                                         for(; _loc26_ || param2; if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                                                                         },§§goto(addr881),§§push(§§pop() * §§pop()))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc25_ && param3)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop5;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            loop65:
                                                                                                                                                                                                                                                                                                            while(_loc26_ || this)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               loop95:
                                                                                                                                                                                                                                                                                                               while(_loc26_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  loop96:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc25_ && param3)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop106;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                                     loop97:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr848:
                                                                                                                                                                                                                                                                                                                        loop66:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc25_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§<!V§);
                                                                                                                                                                                                                                                                                                                                 if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    loop89:
                                                                                                                                                                                                                                                                                                                                    while(!(_loc25_ && this))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                       if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          loop92:
                                                                                                                                                                                                                                                                                                                                          while(!(_loc25_ && this))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(this.§?;§);
                                                                                                                                                                                                                                                                                                                                             loop93:
                                                                                                                                                                                                                                                                                                                                             while(!_loc25_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   loop72:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                                                                                                                                                                      §§push(this.§?=§);
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc25_ && param2))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(this.§?=§);
                                                                                                                                                                                                                                                                                                                                                         if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr838:
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(param3);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§pop().§?=§ = §§pop() - §§pop();
                                                                                                                                                                                                                                                                                                                                                               loop73:
                                                                                                                                                                                                                                                                                                                                                               for(; !(_loc25_ && param1); if(_loc25_ && param2)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                                                                                                                                                                               },§§push(this),§§push(this.§]!Y§),if(!(_loc25_ && this))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§]!Y§);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc25_ && this))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr729:
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr727:
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * param3);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§pop().§]!Y§ = §§pop() - §§pop();
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                                                                    addr666:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§push(this.§%v§);
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc25_ && param2)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop56;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop93;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc26_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop38;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop36;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop42;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          addr604:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                return;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             addr501:
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc26_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                continue loop54;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             addr626:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc25_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop61;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                continue loop97;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             continue loop97;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          addr590:
                                                                                                                                                                                                                                                                                                                                                                                          continue loop54;
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc25_ && this)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc25_ && this)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop51;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr604);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1277);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr567:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(this.§<!#§);
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc26_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop58;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       continue loop89;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr915);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 continue loop93;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr957:
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc25_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc25_ && param1)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop62;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc25_ && param2)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop72;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       continue loop40;
                                                                                                                                                                                                                                                                                                                                                                                       addr967:
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    continue loop59;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 continue loop95;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                              addr699:
                                                                                                                                                                                                                                                                                                                                                                              continue loop95;
                                                                                                                                                                                                                                                                                                                                                                              if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc25_ && param1)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop96;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr567);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr914);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr967);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr1127:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                 addr1130:
                                                                                                                                                                                                                                                                                                                                                                                 while(_loc26_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(Number(Math.abs(§8"#§ / _loc9_ / (_loc17_ - _loc15_))));
                                                                                                                                                                                                                                                                                                                                                                                    continue loop53;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(true);
                                                                                                                                                                                                                                                                                                                                                                                    break loop51;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr1130:
                                                                                                                                                                                                                                                                                                                                                                                 addr1331:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1168);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           loop88:
                                                                                                                                                                                                                                                                                                                                                                           while(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr551:
                                                                                                                                                                                                                                                                                                                                                                              §§push(this.§%!c§);
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr510:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(this.§]!Y§);
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc25_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr526:
                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr501);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr699);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr736);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr526);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr914);
                                                                                                                                                                                                                                                                                                                                                                                             addr697:
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr982);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§pop().scale = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr625:
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr626);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                       continue loop88;
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr510);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr543:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr543);
                                                                                                                                                                                                                                                                                                                                                                                       §§push(this.§?=§);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr624:
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr551);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr539:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr625);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr727);
                                                                                                                                                                                                                                                                                                                                                               },§§goto(addr729))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§'z§);
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc25_ && param2))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(this.§'z§);
                                                                                                                                                                                                                                                                                                                                                                     if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr780:
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr778:
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * param3);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§pop().§'z§ = §§pop() - §§pop();
                                                                                                                                                                                                                                                                                                                                                                           loop74:
                                                                                                                                                                                                                                                                                                                                                                           while(_loc26_ || param3)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr788:
                                                                                                                                                                                                                                                                                                                                                                              if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc25_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §0!%§ = this.§'z§;
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop73;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          continue loop74;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       continue loop73;
                                                                                                                                                                                                                                                                                                                                                                                       addr736:
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1278);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1175);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr1282:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(this.§%v§);
                                                                                                                                                                                                                                                                                                                                                                                    addr1168:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                       break loop95;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr788);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr1166:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 continue loop43;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr914:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(this.§?;§);
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§<!V§);
                                                                                                                                                                                                                                                                                                                                                                                    addr915:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop63;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc25_ && param2)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr926:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(0.5);
                                                                                                                                                                                                                                                                                                                                                                                          continue loop57;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1326);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    continue loop60;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr914:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(this.§<!#§);
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc25_ && param1)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop40;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       break loop66;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1246);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr1234:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1329);
                                                                                                                                                                                                                                                                                                                                                                           addr908:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr778);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr780);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue loop50;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr1170:
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr838);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr908);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc26_ || this)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc26_ || this)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                      break loop92;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop10;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop12;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(0.5);
                                                                                                                                                                                                                                                                                                                                             addr1125:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                break loop62;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr896:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr914);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop8;
                                                                                                                                                                                                                                                                                                                                    addr881:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(_loc25_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop65;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(0.5);
                                                                                                                                                                                                                                                                                                                                       if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop64;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop57;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1249);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1125);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1280);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr896);
                                                                                                                                                                                                                                                                                                                           continue loop97;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop39;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop102;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                                                  §§goto(addr1170);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1328);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1327);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1324);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr1127);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(_loc25_ && param3)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!(_loc26_ || param3))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop13;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr539);
                                                                                                                                                                                                                                                                                                   §§push(this.§%!c§);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr848);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop33;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc25_ && this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop42;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr590);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop35;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop99;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop103;
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc26_ || param3))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop56;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!(_loc26_ || param3))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop34;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr957);
                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                              §§goto(addr666);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop6;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop103;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop53;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1042);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc26_ || param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr624);
                                                                                                                                                                                                                                                                  §§push(this.§%!c§);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1130);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop41;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc15_ = §§pop();
                                                                                                                                                                                                                                                         §§goto(addr1282);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1286:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1275);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1264:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1330:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc15_ = §§pop();
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
                                                                                                                                                                                                            addr1098:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1130);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1331);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr983);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc24_ = §§pop();
                                                                                                                                                                                                      §§goto(addr1286);
                                                                                                                                                                                                      §§goto(addr1083);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1081:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1234);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1264);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1249);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop7;
                                                                                                                                                                                 addr1216:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1252);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1254);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1325);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1216);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1251);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1330);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1175);
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
                                                                                                               §§goto(addr1098);
                                                                                                            }
                                                                                                            §§goto(addr490);
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr486);
                                                                                                   }
                                                                                                   §§goto(addr459);
                                                                                                }
                                                                                                §§goto(addr456);
                                                                                             }
                                                                                          }
                                                                                          §§push(_loc17_);
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             §§goto(addr444);
                                                                                          }
                                                                                          §§goto(addr456);
                                                                                       }
                                                                                       §§goto(addr444);
                                                                                    }
                                                                                    §§goto(addr389);
                                                                                 }
                                                                                 §§goto(addr277);
                                                                              }
                                                                           }
                                                                           §§goto(addr257);
                                                                        }
                                                                        §§goto(addr256);
                                                                     }
                                                                     §§goto(addr238);
                                                                  }
                                                               }
                                                               addr195:
                                                            }
                                                            §§goto(addr195);
                                                         }
                                                      }
                                                      §§goto(addr186);
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                             }
                                             §§goto(addr186);
                                          }
                                          §§goto(addr195);
                                       }
                                       §§goto(addr196);
                                    }
                                    §§goto(addr84);
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr215);
                        }
                        §§goto(addr196);
                     }
                  }
                  §§goto(addr133);
               }
               §§goto(addr60);
            }
            §§goto(addr103);
         }
         §§goto(addr144);
      }
      
      protected function §?^§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param2);
         if(!_loc6_)
         {
            §§push(§§pop() / 1000);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc6_ && this))
         {
            §§push(3.5);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc6_)
               {
                  addr40:
                  §§push(Number(§§pop()));
                  §§push(Number(§§pop()));
               }
               §§goto(addr40);
            }
            var _loc4_:* = §§pop();
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop() > 1)
               {
                  if(!(_loc6_ && this))
                  {
                     §§push(1);
                     if(_loc5_)
                     {
                        addr62:
                        _loc4_ = Number(§§pop());
                        if(_loc5_)
                        {
                           addr193:
                           §§push(this.mCurrentCameraSliderLocation);
                           loop0:
                           while(true)
                           {
                              §§push(0);
                              loop1:
                              while(true)
                              {
                                 §§push(§§pop() <= §§pop());
                                 if(!(_loc6_ && param1))
                                 {
                                    if(!§§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§pop();
                                          addr217:
                                          loop5:
                                          while(true)
                                          {
                                             §§push(this.mCurrentCameraSliderLocation);
                                             addr174:
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   break loop5;
                                                }
                                                §§push(§§pop() >= §<!6§);
                                                if(_loc6_ && param1)
                                                {
                                                   continue loop10;
                                                }
                                             }
                                             continue loop10;
                                          }
                                          continue loop0;
                                       }
                                       addr216:
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             this.§=?§ = true;
                                             addr190:
                                             while(_loc5_)
                                             {
                                             }
                                             §§goto(addr217);
                                          }
                                          addr187:
                                       }
                                       while(true)
                                       {
                                          §§push(this.mCurrentAction);
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(§&!$§);
                                             if(!_loc5_)
                                             {
                                                continue loop2;
                                             }
                                             if(_loc6_ && param1)
                                             {
                                                continue loop1;
                                             }
                                             if(§§pop() != §§pop())
                                             {
                                                this.§-<§(param1,_loc4_);
                                                if(!(_loc6_ && param1))
                                                {
                                                   if(_loc6_ && _loc3_)
                                                   {
                                                      this.§++§ = §-L§;
                                                      addr170:
                                                      if(!(_loc5_ || this))
                                                      {
                                                         while(true)
                                                         {
                                                            this.§`"$§(§-!+§);
                                                            §§goto(addr170);
                                                            §§goto(addr170);
                                                         }
                                                         addr167:
                                                      }
                                                      addr70:
                                                   }
                                                   return;
                                                }
                                                loop7:
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         if(_loc6_ && _loc3_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               while(this.§<Y§.levelObjects.activeObject)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               §§goto(addr167);
                                                               addr162:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr187);
                                                            }
                                                         }
                                                         addr160:
                                                      }
                                                      §§goto(addr70);
                                                   }
                                                }
                                                §§goto(addr190);
                                                §§goto(addr170);
                                             }
                                             §§goto(addr160);
                                          }
                                          break;
                                       }
                                       §§goto(addr174);
                                    }
                                 }
                                 §§goto(addr216);
                              }
                           }
                           addr195:
                        }
                        §§goto(addr217);
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr162);
               }
               §§goto(addr193);
            }
            §§goto(addr62);
         }
         §§goto(addr40);
      }
      
      public function §9!!§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§7c§ = param1;
            do
            {
               this.§#!=§ = param2;
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      protected function §=!=§(param1:§,!?§, param2:§@!K§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         §§push(§&!"§.§,!C§);
         if(_loc5_ || param2)
         {
            §§push(§§pop() / §&!"§.§3H§);
            if(_loc5_ || _loc3_)
            {
               addr37:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc5_ || param1)
            {
               §§push(_loc3_);
               if(!(_loc6_ && param1))
               {
                  if(§§pop() > 1)
                  {
                     while(true)
                     {
                        §§push(Number(1));
                        addr244:
                        addr213:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr245:
                           while(true)
                           {
                           }
                        }
                        §§pop().scale = §§pop();
                        if(!(_loc5_ || param1))
                        {
                           continue;
                        }
                        §§push(§8"#§);
                        if(!(_loc6_ && param2))
                        {
                           §§push(§§pop() / param1.scale);
                           if(!(_loc6_ && this))
                           {
                              if(_loc5_ || this)
                              {
                                 §§push(this.§%v§);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(this.§<!#§);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc6_)
                                       {
                                          §§push(_loc3_);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc6_ && param1))
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   loop2:
                                                   do
                                                   {
                                                      §§push(§8"#§);
                                                      if(_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§%v§);
                                                            if(_loc5_)
                                                            {
                                                               §§push(this.§<!#§);
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  addr161:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr164:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                        }
                                                                        addr164:
                                                                     }
                                                                     addr166:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           addr175:
                                                                           §§push(Number(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              while(!(_loc6_ && this))
                                                                              {
                                                                                 param1.scale = _loc4_;
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                              }
                                                                              §§goto(addr245);
                                                                           }
                                                                           addr175:
                                                                        }
                                                                        §§goto(addr175);
                                                                     }
                                                                  }
                                                                  addr161:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr166);
                                                               }
                                                            }
                                                            §§goto(addr166);
                                                         }
                                                         addr148:
                                                      }
                                                      §§goto(addr175);
                                                   }
                                                   while(_loc6_);
                                                   
                                                   addr61:
                                                   return true;
                                                   addr80:
                                                }
                                                §§push(false);
                                                if(!(_loc6_ && param1))
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr61);
                                             }
                                             §§goto(addr164);
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr161);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr244);
                           }
                        }
                        §§goto(addr148);
                     }
                  }
                  while(true)
                  {
                     §§push(param1);
                     §§push(§[h§);
                     if(_loc5_)
                     {
                        §§push(param2.scale);
                        if(!_loc6_)
                        {
                           §§push(§[h§);
                           if(_loc5_ || _loc3_)
                           {
                              addr212:
                              §§push(§§pop() - §§pop());
                              if(_loc5_ || param2)
                              {
                                 §§push(this.§7!g§);
                              }
                              §§goto(addr213);
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§goto(addr212);
                     }
                     §§goto(addr213);
                     §§goto(addr245);
                  }
                  §§goto(addr61);
               }
               §§goto(addr244);
            }
            §§goto(addr80);
         }
         §§goto(addr37);
      }
      
      private function §?1§(param1:§,!?§, param2:§@!K§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§=!=§(param1,param2));
         if(!_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            param1.y = param2.y;
            while(true)
            {
               param1.x = param2.x;
               while(!_loc4_)
               {
                  this.§^!2§(param1);
                  if(!_loc4_)
                  {
                     return _loc3_;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      private function §^!2§(param1:§,!?§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§&!"§.§,!C§);
         if(!_loc5_)
         {
            §§push(§§pop() / §&!"§.§3H§);
            if(_loc6_ || _loc3_)
            {
               addr31:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(_loc6_)
            {
               §§push(_loc2_);
               if(!(_loc5_ && _loc2_))
               {
                  if(§§pop() > 1)
                  {
                     if(!_loc5_)
                     {
                        §§push(Number(1));
                        if(_loc6_)
                        {
                           _loc2_ = §§pop();
                           addr52:
                           §§push(param1.x - §8"#§ / _loc2_ * 0.5 / param1.scale);
                           if(!_loc5_)
                           {
                              addr75:
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc3_:* = §§pop();
                        if(!_loc5_)
                        {
                           §§push(_loc3_);
                           if(_loc6_)
                           {
                              §§push(this.§<!#§);
                              if(_loc6_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       param1.x += this.§<!#§ - _loc3_;
                                       addr103:
                                       §§push(Number(param1.x + §8"#§ / _loc2_ * 0.5 / param1.scale));
                                       §§push(Number(param1.x + §8"#§ / _loc2_ * 0.5 / param1.scale));
                                    }
                                 }
                                 §§goto(addr103);
                              }
                              var _loc4_:* = §§pop();
                              if(§§pop() > this.§%v§)
                              {
                                 if(_loc6_)
                                 {
                                    param1.x += this.§%v§ - _loc4_;
                                 }
                              }
                              return;
                           }
                        }
                        §§goto(addr103);
                     }
                  }
                  §§goto(addr52);
               }
               §§goto(addr75);
            }
            §§goto(addr52);
         }
         §§goto(addr31);
      }
      
      private function §=!o§(param1:§,!?§, param2:§@!K§) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.scale - §[h§);
         if(!(_loc3_ && this))
         {
            §§push(param2.scale);
            if(_loc4_)
            {
               §§push(§§pop() - §[h§);
            }
            return §§pop() / §§pop();
         }
      }
      
      protected function §`D§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            this.§?1§(this.§&!d§,this.§7!O§);
         }
         §§push(this.§=!o§(this.§&!d§,this.§7!O§));
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || this)
         {
            this.§?1§(this.§5n§,this.§%"-§);
         }
         §§push(this.§=!o§(this.§5n§,this.§%"-§));
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.§<!-§ = Math.min(_loc1_,_loc2_);
         }
      }
      
      public function §?!F§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(this.§?=§);
         if(_loc8_)
         {
            §§push(§?!'§.§'!i§);
            if(!_loc7_)
            {
               addr38:
               §§push(§§pop() / §§pop());
               if(_loc8_)
               {
                  §§push(this.§7c§);
               }
               var _loc1_:Number = §§pop();
               §§push(this.§]!Y§);
               if(!_loc7_)
               {
                  §§push(§?!'§.§'!i§);
                  if(_loc8_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc7_ && _loc2_))
                     {
                        addr58:
                        §§push(§§pop() + this.§#!=§);
                        if(!(_loc7_ && _loc1_))
                        {
                           addr66:
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc2_:* = §§pop();
                     §§push(§&!"§.§,!C§);
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     §§push(§&!"§.§3H§);
                     if(!_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     §§push(§?!'§.§]2§);
                     if(_loc8_)
                     {
                        §§push(§§pop() * _loc3_);
                        if(!(_loc7_ && this))
                        {
                           addr98:
                           §§push(§§pop() / Math.max(_loc3_,_loc4_));
                           if(_loc8_)
                           {
                              addr105:
                              §§push(Number(§§pop()));
                           }
                           var _loc5_:* = §§pop();
                           §§push(§?!'§.§4?§);
                           if(_loc8_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           if(_loc8_ || _loc1_)
                           {
                              §§push(this);
                              §§push(_loc1_);
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(_loc5_);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    §§push(§§pop() / 2);
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§pop().§[!B§ = §§pop();
                              loop0:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc7_ && _loc1_))
                                 {
                                    if(§§pop() < _loc4_)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc8_)
                                          {
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             addr321:
                                          }
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             addr323:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr218:
                                          if(!(_loc8_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          if(!_loc8_)
                                          {
                                             continue loop0;
                                          }
                                          this.§<Y§.setScreenOffset(this.§[!B§,this.§0e§,§,H§);
                                          addr227:
                                          if(_loc8_ || _loc2_)
                                          {
                                             addr141:
                                             if(!_loc8_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§[!B§);
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§§pop() / 2);
                                                         if(_loc8_ || _loc1_)
                                                         {
                                                            §§push(_loc5_);
                                                            if(!(_loc7_ && this))
                                                            {
                                                               §§push(§§pop() / 2);
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() / §,H§);
                                                               }
                                                            }
                                                            §§push(§§pop() - §§pop());
                                                         }
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().§[!B§ = §§pop();
                                                   loop5:
                                                   for(; !_loc7_; while(true)
                                                   {
                                                      if(_loc7_ && this)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§goto(addr218);
                                                      §§goto(addr227);
                                                   },continue loop0)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§0e§);
                                                      if(!(_loc7_ && _loc1_))
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§pop() / 2);
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               §§push(_loc6_);
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§§pop() / 2);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(§,H§);
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr209:
                                                                              §§push(_loc3_);
                                                                              if(!(_loc7_ && _loc2_))
                                                                              {
                                                                                 §§push(_loc4_);
                                                                              }
                                                                              §§pop().§0e§ = §§pop() + §§pop() / §§pop();
                                                                              continue;
                                                                           }
                                                                        }
                                                                        §§goto(addr209);
                                                                     }
                                                                     §§push(§§pop() / §§pop());
                                                                  }
                                                               }
                                                               §§goto(addr209);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                   §§goto(addr323);
                                                   §§goto(addr141);
                                                }
                                                addr306:
                                             }
                                             return;
                                             addr143:
                                          }
                                          §§goto(addr211);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(_loc2_);
                                       if(!(_loc7_ && _loc1_))
                                       {
                                          §§push(_loc6_);
                                          if(_loc8_)
                                          {
                                             addr305:
                                             §§push(§§pop() / 2);
                                             if(!_loc7_)
                                             {
                                                addr293:
                                                §§push(_loc3_);
                                                if(_loc8_ || _loc3_)
                                                {
                                                   §§push(§§pop() / _loc4_);
                                                }
                                                §§push(§§pop() / §§pop());
                                             }
                                             §§pop().§0e§ = §§pop() - §§pop();
                                             §§goto(addr306);
                                          }
                                          §§goto(addr293);
                                       }
                                       §§goto(addr305);
                                       §§goto(addr323);
                                    }
                                 }
                                 §§goto(addr321);
                              }
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr58);
               }
               §§goto(addr66);
            }
            §§push(§§pop() + §§pop());
            if(_loc7_ && this)
            {
            }
         }
         §§goto(addr38);
      }
      
      protected function §0!l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§`"$§(§8%§);
         }
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§++§ = -1;
            if(!(_loc4_ && this))
            {
               this.§0!l§();
               if(!_loc4_)
               {
                  §§push(this);
                  §§push(this);
                  §§push(this.§%4§ = param1);
                  if(!_loc4_)
                  {
                     var _loc3_:*;
                     §§push(_loc3_ = §§pop());
                  }
                  §§pop().§!"§ = §§pop();
                  §§pop().§9!<§ = _loc3_;
                  if(!_loc4_)
                  {
                     §§push(this);
                     §§push(this);
                     §§push(this.§-u§ = param2);
                     if(!(_loc4_ && param1))
                     {
                        §§push(_loc3_ = §§pop());
                     }
                     §§pop().§%!t§ = §§pop();
                     §§pop().§ !'§ = _loc3_;
                     if(_loc5_ || _loc3_)
                     {
                        this.§-"+§ = 0;
                        loop11:
                        while(true)
                        {
                           §§push(this.§%!c§);
                           loop5:
                           while(true)
                           {
                              §§push(this.§?=§);
                              loop3:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 loop2:
                                 while(true)
                                 {
                                    if(_loc4_ && _loc3_)
                                    {
                                       continue loop11;
                                    }
                                    §§push(this.§%!c§);
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop5;
                                       }
                                       addr193:
                                       §§push(this.§]!Y§);
                                       loop1:
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop3;
                                          }
                                          §§pop().y = §§pop();
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                break loop1;
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr193);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr81:
                     }
                     while(true)
                     {
                        §§push(this.§%!c§);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(§0!%§);
                           if(_loc5_)
                           {
                              §§pop().scale = §§pop();
                              addr187:
                              while(true)
                              {
                                 this.§'z§ = §0!%§;
                                 §§goto(addr172);
                              }
                              addr187:
                           }
                           §§goto(addr195);
                        }
                        §§goto(addr191);
                     }
                  }
                  §§goto(addr187);
               }
               addr172:
               loop6:
               while(true)
               {
                  if(Math.abs(this.§5n§.x - this.§&!d§.x) > 0.001)
                  {
                     if(_loc5_)
                     {
                        if(_loc4_)
                        {
                           continue loop10;
                        }
                        §§push(this);
                        §§push(this.§?=§);
                        if(_loc5_ || param1)
                        {
                           §§push(§§pop() - this.§&!d§.x);
                           if(!_loc4_)
                           {
                              §§push(§§pop() / (this.§5n§.x - this.§&!d§.x));
                              if(_loc5_)
                              {
                                 addr157:
                                 §§push(§§pop() * §<!6§);
                              }
                              §§pop().mCurrentCameraSliderLocation = §§pop();
                              loop7:
                              while(!(_loc4_ && param1))
                              {
                                 while(true)
                                 {
                                    this.mDragging = true;
                                    if(_loc5_ || this)
                                    {
                                       break;
                                    }
                                    continue loop7;
                                 }
                                 if(!(_loc4_ && param1))
                                 {
                                    break loop6;
                                 }
                                 §§goto(addr198);
                              }
                              continue;
                              addr160:
                           }
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr86);
               }
               return;
            }
            §§goto(addr187);
         }
         §§goto(addr81);
      }
      
      public function §]!=§(param1:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = Number(this.mCurrentCameraSliderLocation);
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.§-"+§);
            if(!_loc4_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§-"+§ = §§pop();
         }
         §§push(this.§9!<§);
         if(_loc5_ || param1)
         {
            §§push(§§pop() - this.§!"§);
            if(!_loc4_)
            {
               addr45:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!(_loc4_ && _loc2_))
            {
               §§push(this.§;!w§);
               loop0:
               while(true)
               {
                  §§push(0);
                  loop1:
                  while(true)
                  {
                     if(§§pop() > §§pop())
                     {
                        while(true)
                        {
                           §§push(_loc2_);
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc5_ || this)
                              {
                                 §§push(§?!'§.§'!i§);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr203:
                                    if(_loc4_ && this)
                                    {
                                       continue;
                                    }
                                    addr211:
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc5_)
                                       {
                                          while(_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(Number(§§pop()));
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   loop26:
                                                   while(true)
                                                   {
                                                      this.§=?§ = true;
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ || this))
                                                         {
                                                            continue loop26;
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_ || this)
                                                            {
                                                               while(true)
                                                               {
                                                                  this.mCurrentCameraSliderLocation = _loc2_;
                                                                  addr87:
                                                                  §§goto(addr59);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               this.§=?§ = true;
                                                               §§goto(addr234);
                                                            }
                                                         }
                                                         §§goto(addr138);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr310);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr262);
                                          }
                                       }
                                       §§goto(addr228);
                                    }
                                    §§goto(addr256);
                                 }
                              }
                              §§goto(addr285);
                           }
                        }
                     }
                     addr59:
                     while(true)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        addr268:
                        loop31:
                        while(true)
                        {
                           §§push(_loc2_);
                           loop32:
                           while(true)
                           {
                              §§push(0);
                              loop33:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    addr239:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       addr240:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(_loc2_);
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(0.3);
                                                   while(true)
                                                   {
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  break loop27;
                                                               }
                                                               addr287:
                                                               while(true)
                                                               {
                                                                  §§push(this.§;!w§);
                                                                  addr289:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() * §<!6§);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               addr310:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr311:
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     addr312:
                                                                     while(true)
                                                                     {
                                                                        this.§=?§ = false;
                                                                        continue loop31;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                         addr256:
                                                      }
                                                      else
                                                      {
                                                         addr286:
                                                         while(true)
                                                         {
                                                         }
                                                         addr286:
                                                      }
                                                      §§goto(addr287);
                                                      addr188:
                                                      §§push(0.3);
                                                      if(_loc4_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§goto(addr203);
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                   addr285:
                                                }
                                                §§goto(addr286);
                                             }
                                          }
                                          §§goto(addr311);
                                       }
                                    }
                                    addr239:
                                 }
                                 loop22:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc5_ || _loc3_))
                                    {
                                       continue loop27;
                                    }
                                    if(!_loc4_)
                                    {
                                       §§push(§<!6§);
                                       if(!(_loc4_ && param1))
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             while(true)
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc4_ && param1)
                                                   {
                                                      continue loop27;
                                                   }
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§push(§<!6§);
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop33;
                                                            }
                                                            if(!(_loc5_ || _loc3_))
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§push(§§pop() - _loc2_);
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr188);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr245);
                                                               }
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                         continue loop33;
                                                         addr173:
                                                      }
                                                      continue loop32;
                                                   }
                                                   §§goto(addr240);
                                                   §§goto(addr311);
                                                }
                                                addr234:
                                                while(true)
                                                {
                                                   continue loop22;
                                                }
                                             }
                                             continue loop32;
                                             addr138:
                                          }
                                          continue loop29;
                                       }
                                       §§goto(addr173);
                                    }
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                 }
                                 §§goto(addr239);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        this.§!"§ = this.§9!<§;
                        if(!(_loc4_ && _loc2_))
                        {
                           if(!_loc5_)
                           {
                              continue loop28;
                           }
                           if(!_loc4_)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 break;
                              }
                              §§goto(addr312);
                           }
                           §§goto(addr239);
                        }
                        else
                        {
                           §§goto(addr87);
                        }
                     }
                     return;
                  }
               }
            }
            §§goto(addr312);
         }
         §§goto(addr45);
      }
      
      protected function §4!4§() : Boolean
      {
         return this.mCurrentAction == §8%§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(this.mDragging)
            {
               do
               {
                  this.§9!<§ = param1;
                  do
                  {
                     this.§ !'§ = param2;
                  }
                  while(_loc3_ && param2);
                  
               }
               while(!(_loc4_ || param1));
               
               addr71:
            }
            return;
         }
         §§goto(addr71);
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
               §§push(§8%§);
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§`"$§(§<!Y§);
                        while(true)
                        {
                           §§push(param1);
                           loop4:
                           while(true)
                           {
                              §§push(0);
                              addr382:
                              while(true)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§9!<§ = param1;
                                       addr386:
                                       while(!_loc4_)
                                       {
                                       }
                                       continue loop2;
                                    }
                                    addr383:
                                 }
                                 while(true)
                                 {
                                    §§push(Number(Math.abs(this.§9!<§ - this.§%4§)));
                                    loop9:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr378:
                                       while(true)
                                       {
                                          §§push(this.§-"+§);
                                          addr351:
                                          while(!_loc4_)
                                          {
                                             continue loop4;
                                          }
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
         §§goto(addr145);
      }
      
      public function §=e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mCurrentAction);
            loop0:
            while(true)
            {
               §§push(§-!+§);
               loop1:
               while(§§pop() != §§pop())
               {
                  §§push(this.mCurrentAction);
                  while(true)
                  {
                     §§push(§"!W§);
                     addr131:
                     while(_loc1_)
                     {
                        if(§§pop() == §§pop())
                        {
                           addr134:
                           this.§`"$§(§-!+§);
                           addr137:
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr19);
                           }
                           break loop1;
                        }
                        §§push(this.mCurrentCameraSliderLocation);
                        continue loop0;
                     }
                     continue loop1;
                     addr35:
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     addr42:
                     §§push(§<!6§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(2);
                        if(!_loc2_)
                        {
                           §§push(§§pop() / §§pop());
                           if(_loc2_)
                           {
                              while(§§pop() < §§pop())
                              {
                                 §§push(this.mCurrentCameraSliderLocation);
                                 if(_loc2_ && _loc1_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr35);
                              }
                              addr121:
                              this.§`"$§(§"!W§);
                              addr19:
                              return;
                              addr124:
                              addr120:
                           }
                           if(§§pop() <= §§pop())
                           {
                              if(_loc1_ || this)
                              {
                                 if(_loc1_)
                                 {
                                    this.§`"$§(§-!+§);
                                    addr69:
                                    if(_loc1_)
                                    {
                                       if(_loc1_ || _loc1_)
                                       {
                                          if(_loc1_ || _loc1_)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§goto(addr19);
                                             }
                                             else
                                             {
                                                §§goto(addr19);
                                                addr162:
                                             }
                                             §§goto(addr19);
                                          }
                                          else
                                          {
                                             §§goto(addr137);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr121);
                                       }
                                       §§goto(addr19);
                                    }
                                    §§goto(addr124);
                                 }
                                 else
                                 {
                                    §§goto(addr134);
                                 }
                              }
                              §§goto(addr69);
                           }
                           §§goto(addr19);
                        }
                        while(true)
                        {
                           §§goto(addr120);
                        }
                        addr119:
                     }
                     while(_loc1_ || _loc1_)
                     {
                        §§goto(addr119);
                        §§push(2);
                        §§goto(addr42);
                     }
                     §§goto(addr131);
                  }
               }
            }
         }
         this.§`"$§(§"!W§);
         §§goto(addr162);
      }
      
      public function §&i§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§++§ = param1;
            while(true)
            {
               if(this.mCurrentCameraSliderLocation >= §<!6§ / 2)
               {
                  this.§`"$§(§-!+§);
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr25);
                  }
               }
               if(_loc2_ && param1)
               {
                  break;
               }
               if(_loc3_)
               {
                  addr79:
                  this.§`"$§(§"!W§);
                  break;
               }
            }
            addr25:
            return;
         }
         §§goto(addr79);
      }
      
      public function goToBirdView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§`"$§(§"!W§);
         }
      }
      
      public function goToCastleView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§`"$§(§-!+§);
         }
      }
      
      public function §`"$§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§%!c§);
            loop0:
            while(true)
            {
               §§push(this.§?=§);
               loop1:
               while(true)
               {
                  §§pop().x = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this.§%!c§);
                     addr87:
                     loop3:
                     while(!_loc2_)
                     {
                        §§push(this.§]!Y§);
                        while(true)
                        {
                           §§pop().y = §§pop();
                           §§push(§0!%§);
                           addr67:
                           continue loop3;
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           if(!(_loc3_ || param1))
                           {
                              continue loop1;
                           }
                           §§pop().scale = §§pop();
                           while(true)
                           {
                              this.§'z§ = §0!%§;
                              while(_loc3_ || _loc3_)
                              {
                                 this.mCurrentAction = param1;
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          return;
                                          addr39:
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§%!c§);
            if(!_loc2_)
            {
               §§goto(addr67);
            }
            §§goto(addr87);
         }
         §§goto(addr39);
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.mCurrentCameraSliderLocation);
            loop0:
            while(true)
            {
               §§push(§<!6§);
               addr74:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr76);
      }
      
      public function §-!8§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.mCurrentCameraSliderLocation);
            loop0:
            while(§§pop() != 0)
            {
               loop1:
               while(true)
               {
                  §§push(this.mCurrentAction);
                  if(_loc2_)
                  {
                     if(§§pop() == §"!W§)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr56);
                        }
                        if(_loc2_ || _loc3_)
                        {
                           if(_loc2_ || param1)
                           {
                              break;
                           }
                           break loop0;
                        }
                        addr90:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     break;
                  }
                  continue loop0;
               }
               §§push(false);
               if(_loc2_)
               {
                  return §§pop();
               }
               addr56:
               §§push(true);
               if(_loc2_)
               {
                  return §§pop();
               }
               addr89:
               return §§pop();
            }
            §§goto(addr89);
            §§push(true);
         }
         §§goto(addr90);
      }
      
      public function §&I§(param1:§1!R§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§>§ = param1;
            loop0:
            while(true)
            {
               if(this.§>§ != null)
               {
                  addr182:
                  while(true)
                  {
                     this.§0!v§ = new §1!R§();
                     addr186:
                     while(true)
                     {
                        §§push(this.§0!v§);
                        addr163:
                        while(true)
                        {
                           §§push(this.§?=§);
                           addr165:
                           while(true)
                           {
                              §§pop().x = §§pop();
                           }
                        }
                     }
                  }
                  addr182:
               }
               else
               {
                  this.§?=§ = this.§0!v§.x;
                  loop1:
                  for(; !(_loc3_ && _loc2_); while(!(_loc3_ && this))
                  {
                     this.§0!v§ = null;
                     if(!(_loc2_ || _loc3_))
                     {
                        continue;
                     }
                     §§goto(addr39);
                  })
                  {
                     if(!(_loc3_ && param1))
                     {
                        this.§]!Y§ = this.§0!v§.y;
                        while(_loc2_ || this)
                        {
                           §0!%§ = this.§0!v§.scale;
                           continue loop1;
                           if(_loc3_ && _loc2_)
                           {
                              continue;
                           }
                           if(!_loc3_)
                           {
                              break loop0;
                           }
                           §§goto(addr186);
                        }
                        while(!(_loc2_ || _loc3_))
                        {
                           continue loop0;
                           §§pop().scale = §§pop();
                        }
                        §§goto(addr24);
                     }
                     §§goto(addr182);
                  }
               }
               while(true)
               {
                  §§push(this.§0!v§);
                  addr149:
                  while(true)
                  {
                     §§push(this.§]!Y§);
                     addr151:
                     while(true)
                     {
                        §§pop().y = §§pop();
                        continue loop0;
                     }
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr182);
      }
      
      protected function §7!?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(!this.isOnCastleView())
            {
               this.goToBirdView();
               if(_loc1_)
               {
                  if(!(_loc1_ || this))
                  {
                     addr66:
                     this.goToCastleView();
                     addr68:
                  }
                  return;
               }
               §§goto(addr68);
            }
         }
         §§goto(addr66);
      }
      
      public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§<!-§);
         if(!(_loc5_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            if(!param1)
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  §§push(param2);
                  loop0:
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        §§push(§§pop() - §§pop());
                        loop1:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr114:
                           loop9:
                           while(true)
                           {
                              if(!(_loc5_ && this))
                              {
                                 _loc3_ = §§pop();
                                 loop12:
                                 while(true)
                                 {
                                    addr82:
                                    loop6:
                                    while(true)
                                    {
                                       §§push(Number(Math.max(this.§80§,Math.min(this.§0[§,_loc3_))));
                                       loop7:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop9;
                                          }
                                          if(!_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                _loc3_ = §§pop();
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§push(this.§<!-§);
                                                            if(!_loc5_)
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr74:
                                                                  if(_loc5_ && param2)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop7;
                                                   }
                                                   addr135:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                   }
                                                }
                                                continue loop12;
                                             }
                                             while(true)
                                             {
                                                §§push(param2);
                                                addr137:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr138:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             break loop6;
                                          }
                                       }
                                       continue loop9;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr82);
                                    }
                                 }
                                 addr132:
                              }
                              §§goto(addr138);
                           }
                        }
                     }
                     §§goto(addr137);
                  }
               }
               §§goto(addr114);
            }
            §§goto(addr135);
         }
         §§goto(addr132);
      }
      
      public function §!!<§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§7!g§);
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§80§);
            if(_loc1_ || this)
            {
               §§push(§§pop() - §§pop());
               if(!(_loc2_ && _loc2_))
               {
                  addr52:
                  §§push(this.§0[§);
                  if(_loc1_ || this)
                  {
                     addr74:
                     §§push(§§pop() / (§§pop() - this.§80§));
                  }
                  §§goto(addr74);
               }
               return §§pop();
            }
            §§goto(addr74);
         }
         §§goto(addr52);
      }
      
      public function §0! §(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(Math.min(Math.max(param1,0),1) * (this.§0[§ - this.§80§));
            if(_loc2_)
            {
               §§push(§§pop() + this.§80§);
            }
            §§pop().§7!g§ = §§pop();
         }
      }
      
      public function § 4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§<!-§ = Math.max(this.§<!-§ - 0.5,0.5);
         }
      }
      
      public function §6!0§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = "";
         if(_loc3_ || this)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(" mManualScale: " + this.§7!g§);
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
                              §§push(" mXcenterB2: " + this.§?=§);
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
                                             §§push(" mYcenterB2: " + this.§]!Y§);
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
                                                            §§push(" mXcenterB2target: " + this.§7!g§);
                                                            while(true)
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
                                                                     while(_loc3_ || this)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push("\n mYcenterB2target: " + this.§7!g§);
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
                                                                                          §§push(" mXcenterB2previous: " + this.§7!g§);
                                                                                          loop26:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             loop27:
                                                                                             while(!_loc2_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                loop28:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc1_ = §§pop();
                                                                                                   loop29:
                                                                                                   while(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(_loc1_);
                                                                                                      loop30:
                                                                                                      for(; !(_loc2_ && _loc1_); while(!(_loc2_ && _loc1_))
                                                                                                      {
                                                                                                         _loc1_ = §§pop();
                                                                                                         §§goto(addr927);
                                                                                                         §§goto(addr888);
                                                                                                      })
                                                                                                      {
                                                                                                         §§push(" mYcenterB2previous: " + this.§7!g§);
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
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(" mTimeNeededForCameraMovement: " + this.§7!g§);
                                                                                                                        loop36:
                                                                                                                        while(true)
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
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc1_);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(" mTimeUsedForCameraMovement: " + this.§7!g§);
                                                                                                                                       addr989:
                                                                                                                                       addr784:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          addr990:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             continue loop25;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       if(!(_loc3_ || _loc1_))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§push(" mBirdCameraY: " + this.§7!g§);
                                                                                                                                       loop86:
                                                                                                                                       while(!(_loc2_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          loop87:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop());
                                                                                                                                                loop88:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc1_ = §§pop();
                                                                                                                                                   loop89:
                                                                                                                                                   while(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop9;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc1_);
                                                                                                                                                      while(!(_loc2_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(" mBirdCameraScale: " + this.§7!g§);
                                                                                                                                                         while(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               while(!(_loc2_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  continue loop0;
                                                                                                                                                               }
                                                                                                                                                               continue loop37;
                                                                                                                                                               addr761:
                                                                                                                                                            }
                                                                                                                                                            continue loop36;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr989);
                                                                                                                                                      }
                                                                                                                                                      loop55:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(" mTargetScale: " + this.§7!g§);
                                                                                                                                                         loop56:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            loop57:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               loop58:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc1_ = §§pop();
                                                                                                                                                                  loop59:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(" mTargetScalePrevious: " + this.§7!g§);
                                                                                                                                                                        addr910:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        addr509:
                                                                                                                                                                        if(!(_loc2_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(" mDraggingPointCurrentY: " + this.§7!g§);
                                                                                                                                                                           loop126:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc3_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc2_ && _loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    loop127:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       loop128:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc1_ = §§pop();
                                                                                                                                                                                          loop129:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc3_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc1_);
                                                                                                                                                                                                loop130:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(" mDraggingPointOriginalX: " + this.§7!g§);
                                                                                                                                                                                                   loop131:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr455:
                                                                                                                                                                                                         if(_loc3_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            loop132:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               loop133:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc3_ || _loc1_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop58;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        _loc1_ = §§pop();
                                                                                                                                                                                                                        loop134:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc2_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr483:
                                                                                                                                                                                                                              if(_loc2_ && _loc1_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                                                                 loop136:
                                                                                                                                                                                                                                 while(!_loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop25;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(" mDraggingPointOriginalY: " + this.§7!g§);
                                                                                                                                                                                                                                    while(_loc3_ || _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          continue loop127;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop1;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    loop111:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       loop112:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop87;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                          loop113:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc1_ = §§pop();
                                                                                                                                                                                                                                             loop114:
                                                                                                                                                                                                                                             while(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc1_);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(" mDraggingPointPreviousY: " + this.§7!g§);
                                                                                                                                                                                                                                                   addr618:
                                                                                                                                                                                                                                                   loop116:
                                                                                                                                                                                                                                                   while(!_loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      loop117:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc3_ || _loc1_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop112;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                         loop118:
                                                                                                                                                                                                                                                         while(_loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                                                                                                                            loop119:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                                                                                                                               loop120:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push("\n mDraggingPointCurrentX: " + this.§7!g§);
                                                                                                                                                                                                                                                                  addr565:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr572:
                                                                                                                                                                                                                                                                        if(!(_loc2_ && this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           loop122:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc3_ || _loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop57;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr711);
                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                    continue loop122;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop27;
                                                                                                                                                                                                                                                                                 addr706:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc3_ || _loc1_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                    loop123:
                                                                                                                                                                                                                                                                                    while(_loc3_ || _loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(_loc1_);
                                                                                                                                                                                                                                                                                                continue loop120;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr777:
                                                                                                                                                                                                                                                                                             addr927:
                                                                                                                                                                                                                                                                                             while(_loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc1_);
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                      addr728:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push("\n mScreenLeftScroll: " + this.§7!g§);
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc2_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                            continue loop15;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr756);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop26;
                                                                                                                                                                                                                                                                                                   loop161:
                                                                                                                                                                                                                                                                                                   while(_loc3_ || this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push("mCameraBorderBottom: " + this.§7!g§);
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc3_ || _loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr147:
                                                                                                                                                                                                                                                                                                            if(!(_loc2_ && _loc1_))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop126;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            loop142:
                                                                                                                                                                                                                                                                                                            for(; _loc3_ || _loc1_; §§goto(addr147))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc2_ && _loc2_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr383:
                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                     addr383:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                                                                  while(!(_loc2_ && _loc1_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                              while(_loc3_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr301:
                                                                                                                                                                                                                                                                                                                                       if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr308:
                                                                                                                                                                                                                                                                                                                                          if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr315:
                                                                                                                                                                                                                                                                                                                                             if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr326:
                                                                                                                                                                                                                                                                                                                                                §§push("\n mCameraBorderLeft: " + this.§7!g§);
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                   addr327:
                                                                                                                                                                                                                                                                                                                                                   addr669:
                                                                                                                                                                                                                                                                                                                                                   while(_loc3_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                      while(_loc3_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                               continue loop119;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            continue loop113;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop118;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop130;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                      addr670:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop5;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop88;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop5;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr326:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push("\n mCastleCameraY: " + this.§7!g§);
                                                                                                                                                                                                                                                                                                                                                   addr853:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                      addr854:
                                                                                                                                                                                                                                                                                                                                                      addr949:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr856:
                                                                                                                                                                                                                                                                                                                                                            if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr864:
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                  addr865:
                                                                                                                                                                                                                                                                                                                                                                  while(_loc3_ || this)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                                     break loop123;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop59;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr864:
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr911:
                                                                                                                                                                                                                                                                                                                                                         while(_loc3_ || this)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                            continue loop30;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop17;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      while(_loc3_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                         continue loop10;
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr856);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop7;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr315);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr849:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(" mBirdCameraX: " + this.§7!g§);
                                                                                                                                                                                                                                                                                                                                             break loop86;
                                                                                                                                                                                                                                                                                                                                             §§goto(addr308);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr816:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop136;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                    addr825:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                       addr782:
                                                                                                                                                                                                                                                                                                                                       while(!_loc2_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§goto(addr784);
                                                                                                                                                                                                                                                                                                                                          if(_loc2_ && this)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr509);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr864);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr301);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop134;
                                                                                                                                                                                                                                                                                                                              addr402:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop13;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop33;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop123;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop120;
                                                                                                                                                                                                                                                                                                                  addr176:
                                                                                                                                                                                                                                                                                                                  if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop117;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                                                                           loop164:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                    while(!_loc2_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                       continue loop164;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    loop160:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                continue loop161;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr1006:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                continue loop28;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop55;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr965:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr280:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc2_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop119;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(_loc2_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                while(_loc3_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop114;
                                                                                                                                                                                                                                                                                                                                                addr439:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push("mCameraBorderTop: " + this.§7!g§);
                                                                                                                                                                                                                                                                                                                                                addr208:
                                                                                                                                                                                                                                                                                                                                                while(!_loc2_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                   loop158:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop132;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(_loc3_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                         loop159:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                               continue loop160;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr349:
                                                                                                                                                                                                                                                                                                                                                            while(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr356:
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc2_ && _loc1_))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(" mDraggingTimer: " + this.§7!g§);
                                                                                                                                                                                                                                                                                                                                                                  continue loop142;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr662:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(" mDragging: " + this.§7!g§);
                                                                                                                                                                                                                                                                                                                                                                  addr666:
                                                                                                                                                                                                                                                                                                                                                                  while(_loc3_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop56;
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr356);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               continue loop159;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            continue loop128;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop38;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr327);
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr669);
                                                                                                                                                                                                                                                                                                                                                      addr169:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc3_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop158;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr176);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop117;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop127;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop111;
                                                                                                                                                                                                                                                                                                                                                addr101:
                                                                                                                                                                                                                                                                                                                                                if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop133;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop55;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                if(_loc3_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop129;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr126:
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                         if(_loc2_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue loop161;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr101);
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr126);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            continue loop133;
                                                                                                                                                                                                                                                                                                                                                            addr99:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop164;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr38);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr865);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr402);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr199);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr349);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(_loc3_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr662);
                                                                                                                                                                                                                                                                                                                                             §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr825);
                                                                                                                                                                                                                                                                                                                                          addr280:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr199:
                                                                                                                                                                                                                                                                                                                                    continue loop89;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr438:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr439);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§goto(addr383);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop8;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(_loc3_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr824);
                                                                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop2;
                                                                                                                                                                                                                                                                                                                        addr821:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr761);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr733);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr990);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop21;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr245);
                                                                                                                                                                                                                                                                                                         §§goto(addr326);
                                                                                                                                                                                                                                                                                                         §§push(" mPigsAreOnRight: " + this.§7!g§);
                                                                                                                                                                                                                                                                                                         if(!_loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + "\n ");
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(_loc3_ || _loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc3_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               if(!_loc2_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr99);
                                                                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr169);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr728);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr208);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop126;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop20;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc1_);
                                                                                                                                                                                                                                                                                                break loop136;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc1_);
                                                                                                                                                                                                                                                                                                addr683:
                                                                                                                                                                                                                                                                                                while(_loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push("mScreenOffsetYl: " + this.§7!g§);
                                                                                                                                                                                                                                                                                                   break loop116;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop0;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr742:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop134;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop24;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc2_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc2_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(" mCastleCameraScale: " + this.§7!g§);
                                                                                                                                                                                                                                                                                             break loop131;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop10;
                                                                                                                                                                                                                                                                                       §§goto(addr597);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr597:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                       break loop114;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr981:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr854);
                                                                                                                                                                                                                                                                              §§goto(addr864);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                              break loop133;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr666);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(!_loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr949);
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     §§goto(addr572);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop31;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                                                                                                                            addr839:
                                                                                                                                                                                                                                                            addr896:
                                                                                                                                                                                                                                                            while(_loc3_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr816);
                                                                                                                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(_loc3_ || _loc1_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr849);
                                                                                                                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                                                                                                                               §§goto(addr839);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop34;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop32;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc3_ || _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop86;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!_loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc2_ && _loc1_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr706);
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr910);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop11;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr940);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr980:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr981);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr415:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(_loc3_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr886);
                                                                                                                                                                                                                                    §§push(" mCastleCameraX: " + this.§7!g§);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop3;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr605);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr637);
                                                                                                                                                                                                                           §§goto(addr483);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr683);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr888:
                                                                                                                                                                                                               while(_loc3_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc1_ = §§pop();
                                                                                                                                                                                                                  §§goto(addr896);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop30;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr565);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      addr837:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr838);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr455);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr839);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop29;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    addr979:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr980);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr618);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop6;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr745:
                                                                                                                                                   }
                                                                                                                                                   continue loop14;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr837);
                                                                                                                                             }
                                                                                                                                             §§goto(addr911);
                                                                                                                                          }
                                                                                                                                          continue loop22;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr821);
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
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   continue loop19;
                                                                                                }
                                                                                             }
                                                                                             continue loop12;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop4;
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
         §§goto(addr490);
      }
      
      public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
