package §@!!§
{
   import §!+§.§>G§;
   import §+!"§.§5!<§;
   import §5H§.§[k§;
   import §6J§.§&!;§;
   import §6J§.§]<§;
   import §?b§.§7!,§;
   import §?b§.§9H§;
   
   public class §=_§
   {
      
      public static const §+!,§:Number = 1.25;
      
      public static const §5!0§:Number = 0.15;
      
      public static const §^J§:Number;
      
      public static const §6!?§:Number;
      
      public static const §"o§:Number = 0.1;
      
      public static const §6W§:int = 1500;
      
      public static const §;$§:int = 10;
      
      public static const §<D§:int = 15;
      
      public static const §'!-§:int = 300;
      
      public static const §2h§:int = 1000;
      
      public static const §"C§:int = 10000;
      
      public static const §9y§:int = 200.0;
      
      public static const §@<§:int = 0;
      
      public static const §;!@§:int = 1;
      
      public static const §;p§:int = 2;
      
      public static const §7Y§:int = 3;
      
      public static const §56§:int = 4;
      
      public static const §1!#§:int = 5;
      
      public static const §43§:String = "CASTLE";
      
      public static const §0!D§:String = "SLINGSHOT";
      
      protected static var §5K§:Number;
      
      public static var §[!#§:Number;
      
      public static var §<9§:Number;
      
      public static const §;b§:Number = 2000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §5!0§ = 0.15;
            if(!_loc2_)
            {
               addr31:
               §^J§ = §[k§.§>§ * §7!,§.§ '§;
               §6!?§ = §[k§.§%i§ * §7!,§.§ '§;
               if(!_loc2_)
               {
                  §"o§ = 0.1;
                  §6W§ = 1500;
                  if(_loc1_)
                  {
                     §;$§ = 10;
                     §<D§ = 15;
                     if(!(_loc2_ && §=_§))
                     {
                        §'!-§ = 300;
                        if(!_loc2_)
                        {
                           §2h§ = 1000;
                           if(!_loc2_)
                           {
                              §"C§ = 10000;
                              if(!_loc2_)
                              {
                                 addr93:
                                 §9y§ = §"C§ / 50;
                                 addr98:
                                 §@<§ = 0;
                              }
                              §;!@§ = 1;
                              if(!_loc2_)
                              {
                                 addr106:
                                 §;p§ = 2;
                                 if(_loc1_)
                                 {
                                    addr121:
                                    §7Y§ = 3;
                                    if(_loc1_)
                                    {
                                       addr126:
                                       §56§ = 4;
                                       §1!#§ = 5;
                                       §43§ = "CASTLE";
                                    }
                                    §0!D§ = "SLINGSHOT";
                                    if(_loc1_ || §=_§)
                                    {
                                       §;b§ = 2000;
                                    }
                                 }
                              }
                              return;
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr106);
               }
               §§goto(addr126);
            }
            §§goto(addr93);
         }
         §§goto(addr31);
      }
      
      private var §6y§:Number = 1.0;
      
      private var §&u§:Number = 0.2;
      
      protected var §import§:Number;
      
      protected var §-!'§:Number;
      
      protected var §!A§:Number;
      
      public var §4!%§:§7!,§;
      
      public var §4!?§:Number;
      
      public var §3!§:Number;
      
      private var §%a§:§;!F§;
      
      private var §6!B§:§;!F§;
      
      public var §3!3§:Number;
      
      public var §@A§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §&,§:Number;
      
      public var §`V§:Number;
      
      public var §7!E§:Number;
      
      public var §<1§:Number;
      
      private var §6!$§:Number;
      
      private var §[o§:§0Q§;
      
      private var §%L§:§0Q§;
      
      protected var §6t§:Number = 0;
      
      protected var §`!!§:Number = 0;
      
      protected var §0!@§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var § for§:Number = 0;
      
      public var §;!?§:Boolean = true;
      
      public var §^j§:Number = 0;
      
      public var §=!#§:Number = 0;
      
      public var §[y§:Number = 0;
      
      public var §0>§:Number = 0;
      
      public var §!X§:Number = 0;
      
      public var §`e§:Number = 0;
      
      public var §^a§:Number = 0;
      
      public var §`!?§:Number = 0;
      
      public var § T§:Number = 0;
      
      private var §?p§:§0Q§;
      
      public var §3!4§:Number = 0;
      
      private var §0;§:Number = 0;
      
      private var §=X§:Number = 0;
      
      private var §=T§:§]<§ = null;
      
      private var §]>§:§]<§ = null;
      
      public function §=_§(param1:§7!,§, param2:§&!;§, param3:Number = 1.0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§?p§ = new §0Q§(0,0,1,false);
            super();
            if(_loc4_)
            {
               this.§-!'§ = 0;
               if(!_loc5_)
               {
                  this.§!A§ = 0;
                  if(!(_loc5_ && param1))
                  {
                     this.§4!%§ = param1;
                     §=_§.§5K§ = 1;
                     if(_loc4_)
                     {
                        this.§6y§ = Math.max(1,Math.min(2,param3));
                        this.§import§ = this.§6y§;
                        if(!_loc5_)
                        {
                           this.§do§(param2);
                           §§push(Boolean(this.§%a§));
                           if(_loc4_ || param3)
                           {
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    addr85:
                                    §§pop();
                                    §§push(Boolean(this.§6!B§));
                                 }
                              }
                              if(§§pop())
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    addr107:
                                    this.§6m§();
                                    if(_loc4_ || param1)
                                    {
                                       §§push(this);
                                       §§push(this.§%a§.x);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() - this.§6!B§.x);
                                       }
                                       §§pop().§6t§ = §§pop();
                                       addr127:
                                       §§push(this);
                                       §§push(this.§%a§.y);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() - this.§6!B§.y);
                                       }
                                       §§pop().§`!!§ = §§pop();
                                    }
                                    §§push(this);
                                    §§push(this.§%a§.scale);
                                    if(!(_loc5_ && param3))
                                    {
                                       §§push(§§pop() - this.§6!B§.scale);
                                    }
                                    §§pop().§0!@§ = §§pop();
                                    §§goto(addr154);
                                 }
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr85);
                        }
                        addr154:
                        this.§-!'§ = this.§%a§.x;
                        if(_loc4_)
                        {
                           this.§!A§ = this.§%a§.y;
                           if(_loc4_)
                           {
                              addr168:
                              §§push(§§findproperty(§5K§));
                              §§push(this.§%a§.scale);
                              if(_loc4_)
                              {
                                 §§push(§§pop() * this.§import§);
                              }
                              §§pop().§5K§ = §§pop();
                              if(!(_loc5_ && this))
                              {
                                 addr195:
                                 this.mCurrentCameraSliderLocation = §"C§;
                                 if(_loc4_ || param2)
                                 {
                                 }
                                 §§goto(addr213);
                              }
                           }
                           this.§;!?§ = true;
                           this.§ for§ = §"C§ / 500;
                        }
                        addr213:
                        return;
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr107);
               }
               §§goto(addr127);
            }
            §§goto(addr85);
         }
         §§goto(addr168);
      }
      
      private static function §[!-§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§[k§.§3!5§);
         if(!(_loc3_ && §=_§))
         {
            §§push(§§pop() / §[k§.§@$§);
            if(!_loc3_)
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            if(!(_loc3_ && _loc3_))
            {
               §§push(_loc1_);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop() > 1)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(1);
                        if(!_loc3_)
                        {
                           §§goto(addr84);
                        }
                     }
                     else
                     {
                        addr85:
                        §§push(1);
                     }
                     return §§pop();
                  }
                  §§goto(addr85);
               }
               addr84:
               return §§pop() / Math.pow(_loc1_,0.7);
            }
            §§goto(addr85);
         }
         §§goto(addr40);
      }
      
      public static function get §&!?§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§5K§);
         if(_loc2_ || _loc1_)
         {
            §§push(§§pop() * §[!-§());
         }
         return §§pop();
      }
      
      public function get §-!D§() : Number
      {
         return this.§import§;
      }
      
      public function set §-!D§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§import§ = param1;
         }
      }
      
      public function get §@2§() : Number
      {
         return this.§6!$§;
      }
      
      public function §'!8§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§^J§);
         if(!(_loc1_ && this))
         {
            §§push(this.§`V§);
            if(!_loc1_)
            {
               §§push(§§pop() - this.§&,§);
            }
            §§push(§§pop() / §§pop());
         }
         return §§pop();
      }
      
      public function get §?!$§() : Number
      {
         return this.§6y§;
      }
      
      public function get §'!@§() : Number
      {
         return this.§&u§;
      }
      
      public function §%!3§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§import§ = param1;
            if(_loc3_ || this)
            {
               addr39:
               this.§<!H§();
               if(!(_loc2_ && this))
               {
                  this.§^w§(this.mCurrentCameraSliderLocation,1);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.mCurrentAction == §1!#§)
            {
               if(_loc1_)
               {
                  return;
               }
            }
            this.goToCastleView();
            if(!(_loc2_ && _loc2_))
            {
               this.§^j§ = 2000;
               if(!(_loc2_ && this))
               {
                  this.§>$§();
                  if(_loc1_ || _loc2_)
                  {
                  }
                  §§goto(addr82);
               }
               this.§84§();
            }
            §§goto(addr82);
         }
         addr82:
         this.§<M§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.mCurrentCameraSliderLocation = 0;
            if(_loc3_)
            {
               this.§-!'§ = this.§6!B§.x;
               addr54:
               this.§!A§ = this.§6!B§.y;
               this.§;!?§ = false;
               §§push(this);
               §§push(§"C§ / 160000);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop() * param1);
               }
               §§pop().§ for§ = §§pop();
               if(!_loc2_)
               {
                  this.§=!1§(§1!#§);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function §6m§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this);
            §§push(this.§6!B§.x);
            if(_loc3_ || _loc1_)
            {
               §§push(§^J§);
               if(_loc3_)
               {
                  §§push(§§pop() / this.§6!B§.scale);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop() / 2);
                  }
               }
               §§push(§§pop() - §§pop());
            }
            §§pop().§&,§ = §§pop();
            if(_loc3_)
            {
               addr55:
               §§push(this);
               §§push(this.§%a§.x);
               if(_loc3_)
               {
                  §§push(§^J§);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() / this.§%a§.scale);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(§§pop() / 2);
                     }
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§`V§ = §§pop();
               if(_loc3_ || _loc2_)
               {
                  addr101:
                  §§push(this);
                  §§push(this.§4!%§.§+4§.§6o§);
                  if(_loc3_ || this)
                  {
                     §§push(20 * §7!,§.§14§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop() * §7!,§.§ '§);
                     }
                     §§push(§§pop() - §§pop());
                  }
                  §§pop().§7!E§ = §§pop();
                  if(_loc3_)
                  {
                     §§push(this);
                     §§push(this.§4!%§.§+4§.§6o§);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() + 4);
                     }
                     §§pop().§<1§ = §§pop();
                  }
               }
               §§push(§^J§);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(this.§`V§);
                  if(!_loc2_)
                  {
                     §§push(§§pop() - this.§&,§);
                  }
                  §§push(§§pop() / §§pop());
                  if(_loc3_)
                  {
                     addr164:
                     §§push(Number(§§pop()));
                  }
                  var _loc1_:* = §§pop();
                  if(!_loc2_)
                  {
                     §§push(this);
                     §§push(this.§<1§);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§6!?§);
                        if(_loc3_)
                        {
                           §§push(0.8);
                           if(_loc3_)
                           {
                              §§goto(addr204);
                           }
                           §§push(§§pop() / §§pop());
                        }
                        addr204:
                        §§goto(addr205);
                     }
                     addr205:
                     §§push(§§pop() * §§pop());
                     if(!(_loc2_ && this))
                     {
                        §§push(_loc1_);
                     }
                     §§pop().§6!$§ = §§pop() - §§pop();
                     return;
                  }
                  §§goto(addr204);
               }
               §§goto(addr164);
            }
            §§goto(addr101);
         }
         §§goto(addr55);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§4!%§ = null;
         }
      }
      
      public function §do§(param1:§&!;§) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc3_:§]<§ = null;
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§&!@§)
         {
            _loc3_ = param1.§5!1§(_loc2_);
            if(!(_loc14_ && this))
            {
               §§push(_loc3_.id);
               if(!(_loc14_ && _loc2_))
               {
                  §§push(§§pop());
                  if(!_loc14_)
                  {
                     §§push(§§pop());
                     if(_loc15_ || this)
                     {
                        _loc4_ = §§pop();
                        if(!(_loc14_ && param1))
                        {
                           addr85:
                           §§push(§§pop().toUpperCase());
                           if(_loc15_)
                           {
                              _loc4_ = §§pop();
                              §§push(_loc3_.scale);
                              if(!(_loc14_ && _loc3_))
                              {
                                 §§push(§§pop().toString() == "");
                                 if(_loc15_ || this)
                                 {
                                    §§push(!§§pop());
                                    if(_loc15_)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc14_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             §§pop();
                                             addr128:
                                             §§push(_loc3_.scale.toString() != "null");
                                             §§push(_loc3_.scale.toString() != "null");
                                          }
                                          §§goto(addr128);
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc15_)
                                          {
                                             §§pop();
                                             if(!(_loc14_ && _loc2_))
                                             {
                                                §§push(_loc3_.scale);
                                                if(!(_loc14_ && this))
                                                {
                                                   §§push(§§pop().toString() == "0");
                                                   if(_loc15_ || _loc2_)
                                                   {
                                                      addr160:
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            this.§=6§(_loc3_);
                                                            addr166:
                                                            _loc5_ = _loc3_.left;
                                                            §§push(_loc3_.right);
                                                            if(_loc15_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               §§push(_loc3_.top);
                                                               if(_loc15_ || this)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc15_ || this)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(_loc3_.bottom);
                                                                        if(_loc15_)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           if(_loc15_)
                                                                           {
                                                                              _loc9_ = _loc3_.x;
                                                                              if(_loc15_ || param1)
                                                                              {
                                                                                 §§push(_loc3_.y);
                                                                                 if(_loc15_ || param1)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!(_loc14_ && this))
                                                                                    {
                                                                                       addr242:
                                                                                       _loc10_ = §§pop();
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr245:
                                                                                       §§push(§6!?§);
                                                                                       §§push(_loc8_);
                                                                                       if(!(_loc14_ && _loc2_))
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                addr261:
                                                                                                _loc11_ = §§pop() / §§pop();
                                                                                                addr263:
                                                                                                §§push(§^J§);
                                                                                                §§push(_loc6_);
                                                                                                if(!(_loc14_ && _loc2_))
                                                                                                {
                                                                                                   addr272:
                                                                                                   §§push(§§pop() - _loc5_);
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         addr279:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            addr282:
                                                                                                            §§push(§§pop());
                                                                                                            if(!(_loc14_ && _loc3_))
                                                                                                            {
                                                                                                               addr290:
                                                                                                               _loc12_ = §§pop();
                                                                                                               if(_loc15_ || _loc2_)
                                                                                                               {
                                                                                                                  addr299:
                                                                                                                  addr298:
                                                                                                                  if(§§pop() < _loc11_)
                                                                                                                  {
                                                                                                                     addr302:
                                                                                                                     §§push(Number(_loc12_));
                                                                                                                     if(!(_loc14_ && this))
                                                                                                                     {
                                                                                                                        addr315:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr310:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        §§goto(addr315);
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  _loc13_ = §§pop();
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(_loc15_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(§0!D§);
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        if(§§pop() == §§pop())
                                                                                                                        {
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              this.§6!B§ = new §;!F§(_loc9_,_loc10_,_loc13_,true);
                                                                                                                              if(_loc15_ || this)
                                                                                                                              {
                                                                                                                                 addr346:
                                                                                                                                 this.§%L§ = new §0Q§(_loc9_,_loc10_,_loc13_,true);
                                                                                                                                 addr401:
                                                                                                                                 _loc2_++;
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              addr380:
                                                                                                                              this.§[o§ = new §0Q§(_loc9_,_loc10_,_loc13_,false);
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§goto(addr401);
                                                                                                                           }
                                                                                                                           addr390:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr357:
                                                                                                                           if(_loc4_ == §43§)
                                                                                                                           {
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 this.§%a§ = new §;!F§(_loc9_,_loc10_,_loc13_,false);
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr380);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr390);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §5!<§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
                                                                                                                              if(!(_loc15_ || param1))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr401);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr357);
                                                                                                               }
                                                                                                               §§goto(addr302);
                                                                                                            }
                                                                                                            §§goto(addr299);
                                                                                                         }
                                                                                                         §§goto(addr298);
                                                                                                      }
                                                                                                      §§goto(addr310);
                                                                                                   }
                                                                                                   §§goto(addr290);
                                                                                                }
                                                                                                §§goto(addr299);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr272);
                                                                                    }
                                                                                    §§goto(addr282);
                                                                                 }
                                                                                 §§goto(addr279);
                                                                              }
                                                                              §§goto(addr299);
                                                                           }
                                                                           §§goto(addr263);
                                                                        }
                                                                        §§goto(addr242);
                                                                     }
                                                                  }
                                                                  §§goto(addr245);
                                                               }
                                                               §§goto(addr282);
                                                            }
                                                         }
                                                         §§goto(addr261);
                                                      }
                                                      §§goto(addr166);
                                                   }
                                                   §§goto(addr160);
                                                }
                                                §§goto(addr315);
                                             }
                                             §§goto(addr380);
                                          }
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr128);
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr279);
                           }
                        }
                     }
                     §§goto(addr357);
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr346);
         }
      }
      
      public function §[s§(param1:§&!;§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§]<§ = new §]<§();
         if(!(_loc8_ && param1))
         {
            _loc2_.id = §0!D§;
            if(!(_loc8_ && _loc3_))
            {
               _loc2_.x = this.§6!B§.x;
               if(!(_loc8_ && _loc2_))
               {
                  addr50:
                  _loc2_.y = this.§6!B§.y;
               }
               §§push(§^J§);
               if(_loc9_)
               {
                  §§push(§§pop() / this.§6!B§.scale);
                  if(_loc9_)
                  {
                     §§push(§§pop() / 2);
                     if(!_loc8_)
                     {
                        addr68:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc3_:* = §§pop();
                  §§push(§6!?§);
                  if(_loc9_ || this)
                  {
                     §§push(§§pop() / this.§6!B§.scale);
                     if(!(_loc8_ && this))
                     {
                        §§push(§§pop() / 2);
                        if(_loc9_)
                        {
                           addr93:
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc4_:* = §§pop();
                     if(_loc9_ || _loc2_)
                     {
                        §§push(_loc2_);
                        §§push(this.§6!B§.x);
                        if(_loc9_ || param1)
                        {
                           §§push(§§pop() - _loc3_);
                        }
                        §§pop().left = §§pop();
                        if(_loc9_)
                        {
                           §§push(_loc2_);
                           §§push(this.§6!B§.x);
                           if(!(_loc8_ && _loc3_))
                           {
                              §§push(§§pop() + _loc3_);
                           }
                           §§pop().right = §§pop();
                           if(!(_loc8_ && this))
                           {
                              §§push(_loc2_);
                              §§push(_loc2_.y);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() - _loc4_);
                              }
                              §§pop().top = §§pop();
                              if(!_loc8_)
                              {
                                 addr159:
                                 §§push(_loc2_);
                                 §§push(_loc2_.y);
                                 if(_loc9_ || param1)
                                 {
                                    §§push(§§pop() + _loc4_);
                                 }
                                 §§pop().bottom = §§pop();
                              }
                           }
                           §§goto(addr159);
                        }
                        var _loc5_:§]<§;
                        (_loc5_ = new §]<§()).id = §43§;
                        if(_loc9_)
                        {
                           _loc5_.x = this.§%a§.x;
                           if(!_loc8_)
                           {
                              addr188:
                              _loc5_.y = this.§%a§.y;
                           }
                           §§push(§^J§);
                           if(_loc9_ || _loc3_)
                           {
                              §§push(§§pop() / this.§%a§.scale);
                              if(_loc9_ || param1)
                              {
                                 addr212:
                                 §§push(§§pop() / 2);
                                 if(_loc9_ || _loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc6_:* = §§pop();
                              §§push(§6!?§);
                              if(_loc9_)
                              {
                                 §§push(§§pop() / this.§%a§.scale);
                                 if(_loc9_ || _loc2_)
                                 {
                                    §§push(§§pop() / 2);
                                    if(_loc9_ || _loc3_)
                                    {
                                       addr246:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    if(_loc9_)
                                    {
                                       §§push(_loc5_);
                                       §§push(this.§%a§.x);
                                       if(_loc9_ || _loc2_)
                                       {
                                          §§push(§§pop() - _loc6_);
                                       }
                                       §§pop().left = §§pop();
                                    }
                                    §§push(_loc5_);
                                    §§push(this.§%a§.x);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() + _loc6_);
                                    }
                                    §§pop().right = §§pop();
                                    §§push(_loc5_);
                                    §§push(_loc5_.y);
                                    if(_loc9_ || _loc2_)
                                    {
                                       §§push(§§pop() - _loc7_);
                                    }
                                    §§pop().top = §§pop();
                                    §§push(_loc5_);
                                    §§push(_loc5_.y);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() + _loc7_);
                                    }
                                    §§pop().bottom = §§pop();
                                    param1.§,t§();
                                    param1.§<!1§(_loc2_);
                                    param1.§<!1§(_loc5_);
                                    return;
                                 }
                              }
                              §§goto(addr246);
                           }
                           §§goto(addr212);
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr93);
               }
               §§goto(addr68);
            }
         }
         §§goto(addr50);
      }
      
      public function §=6§(param1:§]<§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1.scale);
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.x);
         if(_loc8_)
         {
            §§push(§[k§.§>§ * 0.5);
            if(!_loc7_)
            {
               §§push(_loc2_);
               if(_loc8_)
               {
                  addr42:
                  §§push(§§pop() / §§pop());
                  if(_loc8_)
                  {
                     §§push(§7!,§.§ '§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc7_ && this))
                  {
                     addr51:
                     var _loc3_:Number = §§pop();
                     §§push(param1.y);
                     if(_loc8_)
                     {
                        §§push(§[k§.§%i§ * 0.5);
                        if(!_loc7_)
                        {
                           §§push(_loc2_);
                           if(!(_loc7_ && _loc2_))
                           {
                              addr91:
                              §§push(§§pop() / §§pop());
                              if(!(_loc7_ && this))
                              {
                                 §§push(§7!,§.§ '§);
                              }
                              §§push(§§pop() - §§pop());
                              if(_loc8_)
                              {
                                 addr95:
                                 var _loc4_:Number = §§pop();
                                 §§push(_loc3_);
                                 if(_loc8_)
                                 {
                                    §§push(§[k§.§>§ / _loc2_);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() * §7!,§.§ '§);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc5_:* = §§pop();
                                 §§push(_loc4_);
                                 if(!_loc7_)
                                 {
                                    §§push(§[k§.§%i§ / _loc2_);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() * §7!,§.§ '§);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc8_)
                                    {
                                       addr133:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc6_:* = §§pop();
                                    if(_loc8_)
                                    {
                                       param1.left = _loc3_;
                                       if(_loc8_ || param1)
                                       {
                                          param1.top = _loc4_;
                                          if(!_loc7_)
                                          {
                                             param1.right = _loc5_;
                                             if(_loc8_ || param1)
                                             {
                                                §§goto(addr172);
                                             }
                                          }
                                       }
                                       §§goto(addr177);
                                    }
                                    addr172:
                                    param1.bottom = _loc6_;
                                    if(_loc8_)
                                    {
                                       addr177:
                                       param1.scale = 0;
                                    }
                                    return;
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr95);
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr51);
               }
               §§push(§§pop() * §§pop());
            }
            §§goto(addr42);
         }
         §§goto(addr51);
      }
      
      protected function §+!G§(param1:§;!F§, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = Number(this.mCurrentCameraSliderLocation);
         if(!_loc5_)
         {
            §§push(_loc3_);
            if(!(_loc5_ && param2))
            {
               §§push(param2);
               if(!_loc5_)
               {
                  §§push(§§pop() * this.§ for§);
               }
               _loc3_ = Number(§§pop() + §§pop());
               §§push(_loc3_);
               if(_loc4_ || param2)
               {
                  §§push(§"C§);
                  if(_loc4_ || param1)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!(_loc5_ && param2))
                        {
                           §§push(Number(§"C§));
                           if(!_loc5_)
                           {
                              _loc3_ = §§pop();
                              if(_loc4_ || this)
                              {
                                 §§goto(addr85);
                              }
                           }
                           else
                           {
                              addr114:
                              if(§§pop() <= 0)
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(0);
                                    if(_loc4_ || param1)
                                    {
                                       addr127:
                                       _loc3_ = Number(§§pop());
                                       §§goto(addr128);
                                    }
                                    §§goto(addr127);
                                 }
                                 §§goto(addr128);
                              }
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr128);
                     }
                     else
                     {
                        §§push(_loc3_);
                        if(!(_loc5_ && this))
                        {
                           §§goto(addr114);
                        }
                        §§goto(addr127);
                     }
                  }
                  §§goto(addr114);
               }
               §§goto(addr127);
            }
            §§goto(addr114);
         }
         addr85:
         this.§=!1§(§@<§);
         if(_loc4_ || this)
         {
            addr133:
            this.mCurrentCameraSliderLocation = _loc3_;
         }
         else
         {
            addr128:
            this.§=!1§(§@<§);
            if(_loc4_)
            {
               §§goto(addr133);
            }
         }
      }
      
      private function §6b§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(this.mCurrentCameraSliderLocation);
         if(!_loc6_)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               §§push(param1);
               if(_loc5_)
               {
                  §§push(§§pop() * this.§ for§);
               }
               §§push(§§pop() + §§pop());
               if(_loc5_ || _loc3_)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc6_ && param1))
                  {
                     _loc2_ = §§pop();
                     addr48:
                     §§push(0.7);
                     if(_loc5_ || param1)
                     {
                     }
                     addr57:
                     var _loc3_:* = §§pop();
                     §§push(-§"C§);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() * _loc3_);
                        if(_loc5_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc4_:* = §§pop();
                     §§push(_loc2_);
                     if(!_loc6_)
                     {
                        §§push(§§pop() >= §"C§);
                        if(_loc5_)
                        {
                           if(!§§pop())
                           {
                              if(!_loc6_)
                              {
                                 addr94:
                                 §§pop();
                                 §§push(_loc2_);
                                 if(_loc5_)
                                 {
                                    §§push(_loc4_);
                                    if(_loc5_ || this)
                                    {
                                       addr107:
                                       if(§§pop() < §§pop())
                                       {
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                addr124:
                                                if(§§pop() < _loc4_)
                                                {
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      §§push(_loc4_);
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            addr158:
                                                            _loc2_ = §§pop();
                                                            if(_loc5_)
                                                            {
                                                               addr161:
                                                            }
                                                            §§goto(addr172);
                                                         }
                                                         else
                                                         {
                                                            addr164:
                                                            _loc2_ = §§pop();
                                                         }
                                                         §§push(this);
                                                         §§push(this.§ for§);
                                                         if(_loc5_)
                                                         {
                                                            §§push(-§§pop());
                                                         }
                                                         §§pop().§ for§ = §§pop();
                                                         addr172:
                                                         this.mCurrentCameraSliderLocation = _loc2_;
                                                         return;
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   §§goto(addr161);
                                                }
                                                else
                                                {
                                                   §§push(Number(§"C§));
                                                }
                                             }
                                             §§goto(addr164);
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr158);
                              }
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr124);
                  }
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr57);
         }
         §§goto(addr48);
      }
      
      protected function §8!&§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.mCurrentAction);
            if(!_loc3_)
            {
               §§push(§1!#§);
               if(_loc2_ || _loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        this.§6b§(param1);
                        addr46:
                     }
                  }
                  else
                  {
                     §§push(this.mCurrentAction);
                     if(_loc2_ || param1)
                     {
                        §§push(§;!@§);
                        if(_loc2_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc3_)
                              {
                                 this.§+!G§(this.§%a§,param1);
                              }
                              else
                              {
                                 addr128:
                                 this.§;!?§ = true;
                                 if(_loc3_)
                                 {
                                 }
                              }
                              §§goto(addr143);
                           }
                           else
                           {
                              §§push(this.mCurrentAction);
                              if(_loc2_ || _loc3_)
                              {
                                 addr87:
                                 §§push(§;p§);
                                 if(!_loc3_)
                                 {
                                    addr90:
                                    if(§§pop() == §§pop())
                                    {
                                       §§push(this);
                                       §§push(this.§6!B§);
                                       §§push(param1);
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().§+!G§(§§pop(),§§pop());
                                       §§goto(addr143);
                                    }
                                    else
                                    {
                                       §§push(this.mCurrentAction);
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr124:
                                          §§push(§7Y§);
                                          if(!_loc3_)
                                          {
                                             addr127:
                                             if(§§pop() == §§pop())
                                             {
                                                §§goto(addr128);
                                             }
                                             else
                                             {
                                                §§push(this.mCurrentAction);
                                             }
                                             §§goto(addr143);
                                          }
                                          §§goto(addr137);
                                       }
                                       addr137:
                                       if(§§pop() == §§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             this.§]!?§(param1);
                                          }
                                          §§goto(addr143);
                                       }
                                       addr143:
                                       return;
                                       §§push(§56§);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr124);
                           }
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr143);
               }
               §§goto(addr90);
            }
            §§goto(addr87);
         }
         §§goto(addr46);
      }
      
      public function §6e§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§=T§)
            {
               if(_loc2_)
               {
                  this.§-!'§ = this.§=T§.x;
               }
               this.§!A§ = this.§=T§.y;
               §§push(§§findproperty(§5K§));
               §§push(§^J§);
               if(!_loc3_)
               {
                  §§push(this.§=T§.right);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - this.§=T§.left);
                  }
                  §§push(§§pop() / §§pop());
               }
               §§pop().§5K§ = §§pop();
               if(_loc2_)
               {
                  addr90:
                  this.§>$§();
               }
               this.§84§();
               if(_loc2_ || this)
               {
                  this.§<M§();
               }
               return;
            }
            this.§<!H§();
            if(_loc2_)
            {
               addr75:
               this.§8!&§(param1);
               if(_loc2_ || _loc3_)
               {
                  this.§6O§(this.mCurrentCameraSliderLocation,param1);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr75);
      }
      
      private function §]^§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Number = this.§%L§.scale + (this.§[o§.scale - this.§%L§.scale) * param1;
         var _loc4_:Number = this.§%L§.x + (this.§[o§.x - this.§%L§.x) * param1;
         var _loc5_:Number = this.§%L§.y + (this.§[o§.y - this.§%L§.y) * param1;
         if(!(_loc6_ && this))
         {
            §§push(this.§?p§);
            if(_loc7_)
            {
               §§push(this.§?p§);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop().x - (this.§?p§.x - _loc4_) * param2);
                  if(_loc7_)
                  {
                     §§pop().x = §§pop();
                     if(!(_loc6_ && param1))
                     {
                        §§push(this.§?p§);
                        if(_loc7_)
                        {
                           §§push(this.§?p§);
                           if(_loc7_ || param2)
                           {
                              addr124:
                              §§push(§§pop().y - (this.§?p§.y - _loc5_) * param2);
                              if(!(_loc6_ && this))
                              {
                                 §§pop().y = §§pop();
                                 §§goto(addr167);
                              }
                              §§goto(addr166);
                           }
                           addr166:
                           §§pop().scale = §§pop();
                           addr167:
                           if(_loc7_)
                           {
                              addr155:
                              §§push(this.§?p§);
                              §§push(this.§?p§);
                           }
                           return;
                           §§push(§§pop().scale - (this.§?p§.scale - _loc3_) * param2);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr167);
                  }
                  §§goto(addr166);
               }
               §§goto(addr124);
            }
         }
         §§goto(addr155);
      }
      
      protected function §^w§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         §§push(this.§6t§);
         if(!(_loc5_ && _loc3_))
         {
            §§push(0);
            if(_loc4_ || this)
            {
               if(§§pop() != §§pop())
               {
                  if(!(_loc5_ && param2))
                  {
                     if(!this.§;!?§)
                     {
                        §§push(Number(1));
                        if(_loc4_ || param2)
                        {
                           param2 = §§pop();
                           addr66:
                           §§push(param1);
                           if(!_loc5_)
                           {
                              addr70:
                              addr69:
                              §§push(§§pop() / §"C§);
                              if(_loc4_ || param1)
                              {
                              }
                              §§goto(addr89);
                           }
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr101);
               }
               addr89:
               _loc3_ = §§pop();
               this.§]^§(_loc3_,param2);
               this.§-!'§ = this.§?p§.x;
               if(!_loc5_)
               {
                  addr101:
                  this.§!A§ = this.§?p§.y;
               }
               §5K§ = this.§?p§.scale;
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr69);
      }
      
      public function §6O§(param1:Number, param2:Number) : void
      {
         var _loc25_:Boolean = true;
         var _loc26_:Boolean = false;
         var _loc5_:§>G§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = false;
         §§push(param2);
         if(_loc25_)
         {
            §§push(§§pop() / 1000);
            if(!_loc26_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!_loc26_)
         {
            §§push(3.5);
            if(_loc25_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc26_ && param2))
               {
                  addr80:
                  §§push(Number(§§pop()));
               }
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            if(!(_loc26_ && param1))
            {
               if(§§pop() > 1)
               {
                  if(_loc25_ || param2)
                  {
                     §§push(1);
                     if(_loc25_)
                     {
                        addr103:
                        _loc4_ = Number(§§pop());
                        if(!(_loc26_ && _loc3_))
                        {
                           addr111:
                           §§push(this.mCurrentCameraSliderLocation);
                           if(_loc25_ || param2)
                           {
                              §§push(0);
                              if(!(_loc26_ && param2))
                              {
                                 §§push(§§pop() <= §§pop());
                                 if(_loc25_ || param2)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc26_ && this))
                                       {
                                          addr145:
                                          §§pop();
                                          if(!_loc26_)
                                          {
                                             §§push(this.mCurrentCameraSliderLocation);
                                             if(_loc25_)
                                             {
                                                §§push(§"C§);
                                                if(!(_loc26_ && this))
                                                {
                                                   addr161:
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(_loc25_)
                                                      {
                                                         this.§;!?§ = true;
                                                         if(!(_loc26_ && param1))
                                                         {
                                                            addr174:
                                                            if(this.mCurrentAction == §7Y§)
                                                            {
                                                               if(_loc25_)
                                                               {
                                                                  addr180:
                                                                  §§push(this.§4!%§);
                                                                  if(!(_loc26_ && param2))
                                                                  {
                                                                     §§push(§§pop().activeObject);
                                                                     if(_loc25_ || param1)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(_loc25_ || this)
                                                                           {
                                                                              §§goto(addr205);
                                                                           }
                                                                           §§goto(addr210);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr224:
                                                                           §§push((_loc5_ = this.§4!%§.activeObject).§`t§());
                                                                           if(_loc25_)
                                                                           {
                                                                              §§push(§§pop().GetPosition());
                                                                              if(!(_loc26_ && this))
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(_loc5_.§'V§)
                                                                                 {
                                                                                    if(_loc25_)
                                                                                    {
                                                                                       addr255:
                                                                                       §§push(Number(§§pop() + _loc5_.§'V§ * §7!,§.§ '§));
                                                                                       if(!_loc26_)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          §§push(_loc5_.§`t§());
                                                                                          if(_loc25_ || param1)
                                                                                          {
                                                                                             addr270:
                                                                                             §§push(§§pop().GetPosition().y);
                                                                                             if(_loc5_.§&!F§)
                                                                                             {
                                                                                                §§push(_loc5_.§&!F§);
                                                                                                §§push(§7!,§.§ '§);
                                                                                                if(_loc25_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc26_ && param2))
                                                                                                   {
                                                                                                      addr294:
                                                                                                      §§push(Number(§§pop() + §§pop()));
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         _loc7_ = §§pop();
                                                                                                         addr301:
                                                                                                         §§push(Number(_loc5_.§`t§().GetLinearVelocity().x));
                                                                                                         §§push(Number(_loc5_.§`t§().GetLinearVelocity().x));
                                                                                                         if(_loc25_)
                                                                                                         {
                                                                                                            _loc8_ = §§pop();
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(_loc25_ || param2)
                                                                                                               {
                                                                                                                  addr318:
                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                  if(_loc25_ || this)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc25_ || param1)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              §§push(this.§6t§);
                                                                                                                              §§push(0);
                                                                                                                              if(_loc25_ || param2)
                                                                                                                              {
                                                                                                                                 addr349:
                                                                                                                                 §§push(§§pop() != §§pop());
                                                                                                                                 if(!_loc26_)
                                                                                                                                 {
                                                                                                                                    addr352:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       §§push(param1);
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       if(_loc25_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          if(!(_loc26_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             §§push(10);
                                                                                                                                             if(!(_loc26_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc26_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§6t§);
                                                                                                                                                   if(_loc25_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         addr390:
                                                                                                                                                         param1 = §§pop() + §§pop() * §"C§;
                                                                                                                                                         if(_loc25_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr401:
                                                                                                                                                            §§push(param1);
                                                                                                                                                            §§push(§"C§);
                                                                                                                                                            if(_loc25_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() >= §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc25_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§"C§);
                                                                                                                                                                     if(_loc25_)
                                                                                                                                                                     {
                                                                                                                                                                        param1 = §§pop();
                                                                                                                                                                        if(!(_loc26_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           addr425:
                                                                                                                                                                           this.mCurrentCameraSliderLocation = param1;
                                                                                                                                                                           if(_loc25_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr437:
                                                                                                                                                                              §§push(param1 / §"C§);
                                                                                                                                                                              if(_loc25_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc9_ = §§pop();
                                                                                                                                                                                 if(_loc25_)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§]^§(_loc9_,_loc4_);
                                                                                                                                                                                    §§push(this.§?p§);
                                                                                                                                                                                    if(!(_loc26_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc10_ = §§pop().x - §^J§ * 0.5 / this.§?p§.scale;
                                                                                                                                                                                       if(!(_loc26_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§?p§);
                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr484:
                                                                                                                                                                                             §§push(§§pop().y - §6!?§ * 0.5 / this.§?p§.scale);
                                                                                                                                                                                             if(_loc25_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc11_ = §§pop();
                                                                                                                                                                                                if(_loc25_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr506:
                                                                                                                                                                                                   _loc12_ = this.§?p§.x + §^J§ * 0.5 / this.§?p§.scale;
                                                                                                                                                                                                   if(_loc25_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc13_ = this.§?p§.y + §6!?§ * 0.5 / this.§?p§.scale;
                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr540:
                                                                                                                                                                                                         §§push(150 * §7!,§.§ '§);
                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            if(_loc25_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc14_ = §§pop();
                                                                                                                                                                                                               §§push(Number(Math.min(_loc10_,_loc6_ - _loc14_)));
                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc15_ = §§pop();
                                                                                                                                                                                                                  if(_loc25_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(Math.min(_loc11_,_loc7_ - _loc14_)));
                                                                                                                                                                                                                     if(_loc25_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc16_ = §§pop();
                                                                                                                                                                                                                        if(!(_loc26_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc17_ = Number(Math.max(_loc12_,_loc6_ + _loc14_));
                                                                                                                                                                                                                           §§push(Number(Math.max(_loc13_,_loc7_ + _loc14_)));
                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc18_ = §§pop();
                                                                                                                                                                                                                              §§push(Number(Math.max(this.§&,§,_loc15_)));
                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr619:
                                                                                                                                                                                                                                 _loc15_ = §§pop();
                                                                                                                                                                                                                                 §§push(Number(Math.min(this.§`V§,_loc17_)));
                                                                                                                                                                                                                                 if(_loc25_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc17_ = §§pop();
                                                                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr631:
                                                                                                                                                                                                                                       _loc19_ = Math.abs(§^J§ / (_loc17_ - _loc15_));
                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc20_ = Math.abs(§6!?§ / (_loc18_ - _loc16_));
                                                                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Number(Math.min(_loc19_,_loc20_)));
                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr661:
                                                                                                                                                                                                                                                if((_loc21_ = §§pop()) > this.§?p§.scale)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr666:
                                                                                                                                                                                                                                                   _loc21_ = Number(this.§?p§.scale);
                                                                                                                                                                                                                                                   addr671:
                                                                                                                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                   if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc22_ = Number(§§pop() * 0.5);
                                                                                                                                                                                                                                                         addr692:
                                                                                                                                                                                                                                                         §§push(_loc18_ + _loc16_);
                                                                                                                                                                                                                                                         if(_loc25_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr702:
                                                                                                                                                                                                                                                            §§push(0.5);
                                                                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr706:
                                                                                                                                                                                                                                                               §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                                                                                                               if(_loc25_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr709:
                                                                                                                                                                                                                                                                  _loc23_ = §§pop();
                                                                                                                                                                                                                                                                  _loc24_ = false;
                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr714:
                                                                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                                                                     §§push(§^J§);
                                                                                                                                                                                                                                                                     if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr724:
                                                                                                                                                                                                                                                                        §§push(§§pop() * 0.5);
                                                                                                                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                                                                                                                        if(!(_loc26_ && this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              if(!(_loc26_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr744:
                                                                                                                                                                                                                                                                                 §§push(this.§`V§);
                                                                                                                                                                                                                                                                                 if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr754:
                                                                                                                                                                                                                                                                                       §§push(this.§`V§);
                                                                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr759:
                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                          if(_loc25_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§^J§ / _loc21_);
                                                                                                                                                                                                                                                                                                if(_loc25_ || param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr775:
                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                   if(_loc25_ || param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr784:
                                                                                                                                                                                                                                                                                                      _loc15_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                      addr783:
                                                                                                                                                                                                                                                                                                      if(_loc25_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(true);
                                                                                                                                                                                                                                                                                                         if(_loc25_ || param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                                                                                                                                                                            §§push(this.§&,§);
                                                                                                                                                                                                                                                                                                            if(_loc25_ || param2)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr812:
                                                                                                                                                                                                                                                                                                                     _loc15_ = Number(this.§&,§);
                                                                                                                                                                                                                                                                                                                     addr813:
                                                                                                                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                     §§push(§^J§);
                                                                                                                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr821:
                                                                                                                                                                                                                                                                                                                        if(§§pop() - §§pop() * 0.5 / _loc21_ < this.§&,§)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr825:
                                                                                                                                                                                                                                                                                                                           §§push(Number(this.§&,§));
                                                                                                                                                                                                                                                                                                                           if(_loc25_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                                                 §§push(§^J§);
                                                                                                                                                                                                                                                                                                                                 §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                 if(_loc25_ || param2)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                    if(_loc25_ || this)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                          if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr862:
                                                                                                                                                                                                                                                                                                                                             _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                                                                             §§push(true);
                                                                                                                                                                                                                                                                                                                                             if(_loc25_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr866:
                                                                                                                                                                                                                                                                                                                                                _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(§§pop() > this.§`V§)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr873:
                                                                                                                                                                                                                                                                                                                                                      §§push(this.§`V§);
                                                                                                                                                                                                                                                                                                                                                      if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr877:
                                                                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr893:
                                                                                                                                                                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr896:
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc17_ + _loc15_);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc25_ || param2)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr905:
                                                                                                                                                                                                                                                                                                                                                                     §§push(0.5);
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr908:
                                                                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                                                                                                                                                                                                                        if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr912:
                                                                                                                                                                                                                                                                                                                                                                           _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                           if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(Number(Math.abs(§^J§ / (_loc17_ - _loc15_))));
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 _loc21_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr933:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr937:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§^J§ * 0.5);
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr941:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr945:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.§7!E§);
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr955:
                                                                                                                                                                                                                                                                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(this.§7!E§);
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc25_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr965:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§^J§);
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr968:
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * 0.5 / _loc21_);
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc25_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr981:
                                                                                                                                                                                                                                                                                                                                                                                                            _loc23_ = Number(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                            addr979:
                                                                                                                                                                                                                                                                                                                                                                                                            addr980:
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc26_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() >= this.§`V§);
                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1103:
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1164:
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc25_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1120:
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc6_ <= this.§&,§);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr210);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1124:
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§?p§);
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§5K§);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§pop().scale = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc25_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1152:
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(this.§?p§);
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(this.§-!'§);
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1158:
                                                                                                                                                                                                                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1159:
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§?p§);
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§!A§);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1164);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1159);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1158);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1164);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1120);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr979);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr981);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                                                                                                                                                                                                                §§push(this.§-!'§);
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(this.§-!'§);
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr1012:
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc26_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr1010:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * _loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§pop().§-!'§ = §§pop() - §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr1015:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(this.§3!4§);
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc25_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(this.§3!4§);
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc25_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1047:
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§pop().§3!4§ = §§pop() - §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                     §5K§ = this.§3!4§;
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc25_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1060:
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(this);
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(this.§!A§);
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§!A§);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1083:
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1081:
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * _loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§pop().§!A§ = §§pop() - §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr981);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1081);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1083);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1158);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1047);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1124);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1010);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1012);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr968);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr981);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1015);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr965);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr981);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr980);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr937);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr912);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr933);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1120);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr896);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr937);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr893);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr905);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr893);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1120);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr862);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr955);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr968);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr941);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr877);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr893);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr945);
                                                                                                                                                                                                                                                                                                                     addr809:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr873);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr813);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr908);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr866);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr981);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr821);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr937);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr981);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr862);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr813);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr821);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr759);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr968);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr908);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr813);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr812);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr821);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr812);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr862);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr981);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr671);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr709);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr666);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr896);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr702);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr706);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr905);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr631);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr812);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr714);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr744);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr759);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr783);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr825);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1060);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1120);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr821);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr506);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1152);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr484);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr692);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr666);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr809);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr631);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr540);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr425);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr437);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr754);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1120);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr724);
                                                                                                                                                }
                                                                                                                                                §§goto(addr775);
                                                                                                                                             }
                                                                                                                                             §§goto(addr390);
                                                                                                                                          }
                                                                                                                                          §§goto(addr968);
                                                                                                                                       }
                                                                                                                                       §§goto(addr661);
                                                                                                                                    }
                                                                                                                                    §§goto(addr401);
                                                                                                                                 }
                                                                                                                                 §§goto(addr893);
                                                                                                                              }
                                                                                                                              §§goto(addr437);
                                                                                                                           }
                                                                                                                           §§goto(addr866);
                                                                                                                        }
                                                                                                                        §§goto(addr352);
                                                                                                                     }
                                                                                                                     §§goto(addr1103);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr349);
                                                                                                            }
                                                                                                            §§goto(addr666);
                                                                                                         }
                                                                                                         §§goto(addr896);
                                                                                                      }
                                                                                                      §§goto(addr702);
                                                                                                   }
                                                                                                   §§goto(addr775);
                                                                                                }
                                                                                                §§goto(addr945);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(_loc25_)
                                                                                                {
                                                                                                   §§goto(addr294);
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr318);
                                                                                          }
                                                                                          §§goto(addr301);
                                                                                       }
                                                                                       §§goto(addr784);
                                                                                    }
                                                                                    §§goto(addr619);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!_loc26_)
                                                                                    {
                                                                                       §§goto(addr255);
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr349);
                                                                              }
                                                                              §§goto(addr270);
                                                                           }
                                                                           §§goto(addr301);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr224);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               this.§^w§(param1,_loc4_);
                                                            }
                                                            §§goto(addr210);
                                                         }
                                                      }
                                                      addr205:
                                                      this.§=!1§(§;!@§);
                                                      if(_loc25_)
                                                      {
                                                         addr210:
                                                         this.§ T§ = §2h§;
                                                         if(_loc25_ || param1)
                                                         {
                                                         }
                                                         §§goto(addr1169);
                                                      }
                                                      addr1169:
                                                      return;
                                                   }
                                                }
                                             }
                                             §§goto(addr174);
                                          }
                                          §§goto(addr180);
                                       }
                                    }
                                    §§goto(addr161);
                                 }
                                 §§goto(addr145);
                              }
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr210);
                     }
                  }
                  §§goto(addr174);
               }
               §§goto(addr111);
            }
            §§goto(addr103);
         }
         §§goto(addr80);
      }
      
      public function §?F§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§0;§ = param1;
            if(_loc3_)
            {
               this.§=X§ = param2;
            }
         }
      }
      
      private function §%k§(param1:§0Q§, param2:§;!F§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         if(_loc4_)
         {
            §§push(param1);
            §§push(§5!0§);
            if(_loc4_)
            {
               §§push(param2.scale);
               if(_loc4_ || _loc3_)
               {
                  §§push(§5!0§);
                  if(_loc4_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc5_)
                     {
                        §§push(this.§import§);
                        if(!_loc5_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc4_ || _loc3_)
                           {
                              addr53:
                              §§push(§§pop() * §=_§.§[!-§());
                           }
                        }
                        §§goto(addr53);
                     }
                     addr55:
                     §§pop().scale = §§pop() + §§pop();
                     if(!_loc5_)
                     {
                        addr58:
                        §§push(§^J§);
                        if(!_loc5_)
                        {
                           §§push(§§pop() / param1.scale);
                           if(_loc4_ || this)
                           {
                              §§push(this.§`V§);
                              if(_loc4_ || this)
                              {
                                 §§push(this.§&,§);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc4_)
                                    {
                                       addr97:
                                       if(§§pop() > §§pop())
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             addr105:
                                             §§push(§^J§);
                                             if(_loc4_ || this)
                                             {
                                                §§push(this.§`V§);
                                                if(!_loc5_)
                                                {
                                                   addr117:
                                                   §§push(§§pop() - this.§&,§);
                                                }
                                                §§push(§§pop() / §§pop());
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   addr138:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             _loc3_ = §§pop();
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                param1.scale = _loc3_;
                                                if(!_loc5_)
                                                {
                                                   §§push(true);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      return §§pop();
                                                   }
                                                }
                                                else
                                                {
                                                   addr161:
                                                   §§push(false);
                                                }
                                                return §§pop();
                                             }
                                          }
                                       }
                                       §§goto(addr161);
                                    }
                                 }
                                 §§goto(addr117);
                              }
                              §§goto(addr97);
                           }
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr105);
                  }
               }
               §§goto(addr53);
            }
            §§goto(addr55);
         }
         §§goto(addr58);
      }
      
      private function §-j§(param1:§0Q§, param2:§;!F§) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(this.§%k§(param1,param2));
         if(!(_loc9_ && param1))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc9_)
         {
            param1.y = param2.y;
         }
         var _loc4_:Number = param1.y + §6!?§ * 0.5 / param1.scale;
         §§push(§6!?§);
         if(_loc8_)
         {
            §§push(§§pop() * 0.25);
            if(!(_loc9_ && _loc3_))
            {
               addr58:
               §§push(§§pop() / param1.scale);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(_loc8_)
            {
               §§push(_loc4_);
               if(!_loc9_)
               {
                  §§push(_loc5_);
                  if(!(_loc9_ && this))
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!(_loc9_ && this))
                        {
                           param1.y += _loc5_ - _loc4_;
                           if(_loc8_)
                           {
                              addr96:
                              param1.x = param2.x;
                           }
                        }
                        §§push(param1.x - §^J§ * 0.5 / param1.scale);
                        if(_loc8_)
                        {
                           addr121:
                           §§push(Number(§§pop()));
                        }
                        §§push(§§pop());
                     }
                     §§goto(addr96);
                  }
                  var _loc6_:* = §§pop();
                  if(!(_loc9_ && this))
                  {
                     §§push(this.§&,§);
                     if(_loc8_ || this)
                     {
                        §§push(§§pop() < §§pop());
                        if(_loc8_ || _loc3_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc9_ && _loc3_))
                              {
                                 addr157:
                                 §§pop();
                                 if(!_loc9_)
                                 {
                                    addr163:
                                    if(param1.§=!G§)
                                    {
                                       if(_loc8_ || this)
                                       {
                                          param1.x += this.§&,§ - _loc6_;
                                       }
                                    }
                                 }
                                 var _loc7_:Number;
                                 §§push((_loc7_ = param1.x + §^J§ * 0.5 / param1.scale) > this.§`V§);
                                 if(!(_loc9_ && param2))
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc9_ && param2))
                                       {
                                          §§pop();
                                          if(_loc8_)
                                          {
                                             §§push(!param1.§=!G§);
                                             if(!_loc9_)
                                             {
                                                addr229:
                                                if(§§pop())
                                                {
                                                   if(_loc8_ || this)
                                                   {
                                                      addr237:
                                                      param1.x += this.§`V§ - _loc7_;
                                                   }
                                                }
                                             }
                                             §§goto(addr247);
                                          }
                                          §§goto(addr237);
                                       }
                                       addr247:
                                       return _loc3_;
                                    }
                                 }
                                 §§goto(addr229);
                              }
                           }
                           §§goto(addr163);
                        }
                     }
                  }
                  §§goto(addr157);
               }
               §§goto(addr121);
            }
            §§goto(addr96);
         }
         §§goto(addr58);
      }
      
      private function §if §(param1:§0Q§, param2:§;!F§) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.scale - §5!0§);
         if(!(_loc3_ && this))
         {
            §§push(§=_§.§[!-§());
            if(!_loc3_)
            {
               §§push(param2.scale);
               if(!(_loc3_ && param2))
               {
                  §§push(§§pop() - §5!0§);
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() / §§pop());
         }
         return §§pop();
      }
      
      protected function §<!H§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§-j§(this.§%L§,this.§6!B§);
         }
         §§push(this.§if §(this.§%L§,this.§6!B§));
         if(!(_loc3_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc4_)
         {
            this.§-j§(this.§[o§,this.§%a§);
         }
         §§push(this.§if §(this.§[o§,this.§%a§));
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            this.§import§ = Math.min(_loc1_,_loc2_);
         }
      }
      
      public function §>$§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = NaN;
         if(_loc3_ || _loc3_)
         {
            if(this.§4!%§.sprite)
            {
               if(!_loc4_)
               {
                  §§push(§[k§.§`&§());
                  if(_loc3_)
                  {
                     §§push(§§pop() / §[k§.§3!5§);
                     if(!_loc4_)
                     {
                        §§push(§[k§.§%i§);
                        if(_loc3_ || _loc2_)
                        {
                           addr55:
                           §§push(§§pop() - §§pop());
                           if(!_loc4_)
                           {
                              addr52:
                              §§push(1);
                           }
                           _loc1_ = §§pop();
                           if(_loc3_)
                           {
                              §§push(§§findproperty(§[!#§));
                              §§push(this.§4!%§.sprite);
                              §§push(§7!,§.§[>§);
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(1 - §=_§.§&!?§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(§§pop() / 2);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       addr101:
                                       §§push(§§pop() * §§pop());
                                       §§push(§§pop() * §§pop());
                                    }
                                    var _loc2_:* = §§pop();
                                    §§pop().x = §§pop();
                                    §§pop().§[!#§ = _loc2_;
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr115:
                                       §§push(§§findproperty(§<9§));
                                       §§push(this.§4!%§.sprite);
                                       §§push(_loc1_);
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          §§push(§7!,§.§14§);
                                          if(!_loc4_)
                                          {
                                             §§push(1 - §=_§.§&!?§);
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc4_)
                                                {
                                                   addr157:
                                                   §§push(§§pop() * §9H§.§%2§);
                                                   if(!_loc3_)
                                                   {
                                                   }
                                                   §§goto(addr162);
                                                }
                                                addr161:
                                                addr162:
                                                _loc2_ = §§pop();
                                                §§pop().y = §§pop();
                                                §§pop().§<9§ = _loc2_;
                                                return;
                                                §§push(§§pop() + §§pop());
                                                §§push(§§pop() + §§pop());
                                             }
                                          }
                                          §§goto(addr157);
                                       }
                                       §§goto(addr161);
                                    }
                                    §§goto(addr157);
                                 }
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr115);
                        }
                        §§push(Number(§§pop() >> §§pop()));
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr52);
               }
            }
            §§goto(addr157);
         }
         §§goto(addr115);
      }
      
      public function §<M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§4!%§);
            if(!(_loc1_ && this))
            {
               §§push(§§pop().sprite);
               if(_loc2_ || this)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§push(this.§4!%§);
                        if(_loc2_ || this)
                        {
                           addr68:
                           §§push(§§pop().sprite);
                           if(_loc2_ || this)
                           {
                              §§push(§&!?§);
                              if(_loc2_ || this)
                              {
                                 §§pop().scaleX = §§pop();
                                 §§goto(addr97);
                              }
                              §§pop().scaleY = §§pop();
                              §§goto(addr97);
                           }
                        }
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr97);
               }
               §§goto(addr95);
            }
            §§goto(addr68);
         }
         addr97:
         if(_loc2_ || _loc1_)
         {
            addr95:
            §§push(this.§4!%§.sprite);
            §§push(§&!?§);
         }
      }
      
      public function §84§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§-!'§);
         if(_loc4_ || _loc1_)
         {
            §§push(§7!,§.§ '§);
            if(!_loc3_)
            {
               §§push(§§pop() / §§pop());
               if(_loc4_ || _loc2_)
               {
                  addr40:
                  §§push(§§pop() + this.§0;§);
                  if(_loc4_)
                  {
                     addr43:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc1_:* = §§pop();
               §§push(this.§!A§);
               if(_loc4_ || this)
               {
                  §§push(§7!,§.§ '§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc3_)
                     {
                        addr63:
                        §§push(§§pop() + this.§=X§);
                        if(_loc4_ || _loc1_)
                        {
                           addr71:
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc2_:* = §§pop();
                     if(_loc4_)
                     {
                        §§push(this);
                        §§push(_loc1_);
                        if(_loc4_)
                        {
                           §§push(§7!,§.§[>§);
                           if(!(_loc3_ && this))
                           {
                              §§push(§§pop() / 2);
                              if(!(_loc3_ && this))
                              {
                                 §§push(§[k§.§3!5§);
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr112:
                                    §§push(§§pop() * §§pop());
                                    if(_loc4_)
                                    {
                                       §§push(§[k§.§9U§);
                                    }
                                    §§pop().§3!3§ = §§pop() - §§pop();
                                    if(_loc4_)
                                    {
                                       §§push(this);
                                       §§push(_loc2_);
                                       if(!_loc3_)
                                       {
                                          §§push(§7!,§.§14§);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§push(§§pop() / 2);
                                             if(_loc4_)
                                             {
                                                addr154:
                                                §§push(§§pop() - §§pop());
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§push(§9H§.§#!=§);
                                                }
                                                §§pop().§@A§ = §§pop();
                                                if(!(_loc3_ && this))
                                                {
                                                   addr162:
                                                   §§push(this.§4!%§.background);
                                                   if(_loc4_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr171:
                                                         this.§4!%§.background.§-b§(this.§3!3§,this.§@A§);
                                                         if(!_loc4_)
                                                         {
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      §§push(this.§4!%§.objects);
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               addr196:
                                                               §§push(this.§4!%§);
                                                               if(!_loc3_)
                                                               {
                                                                  addr201:
                                                                  §§pop().objects.§-b§(this.§3!3§,this.§@A§);
                                                                  addr206:
                                                                  §§push(this.§4!%§);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(§§pop().§^<§);
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§push(this.§4!%§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr219:
                                                                              §§pop().§^<§.§-b§(this.§3!3§,this.§@A§,§&!?§);
                                                                           }
                                                                           §§pop().slingshot.§-b§(this.§3!3§,this.§@A§);
                                                                           §§goto(addr244);
                                                                        }
                                                                        §§push(this.§4!%§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(§§pop().slingshot);
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(this.§4!%§);
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       §§goto(addr244);
                                                                                    }
                                                                                    §§goto(addr269);
                                                                                 }
                                                                                 §§goto(addr280);
                                                                              }
                                                                              §§goto(addr267);
                                                                           }
                                                                           §§goto(addr244);
                                                                        }
                                                                        §§goto(addr280);
                                                                     }
                                                                     §§goto(addr219);
                                                                  }
                                                                  §§goto(addr244);
                                                               }
                                                               addr244:
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  addr269:
                                                                  addr267:
                                                                  §§push(this.§4!%§.particles);
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                     }
                                                                     §§goto(addr288);
                                                                  }
                                                                  §§pop().§-b§(this.§3!3§,this.§@A§);
                                                               }
                                                               §§goto(addr288);
                                                            }
                                                            addr288:
                                                            if(_loc4_)
                                                            {
                                                               addr280:
                                                               §§push(this.§4!%§.particles);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                }
                                                §§goto(addr171);
                                             }
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr196);
                                 }
                                 §§push(§§pop() / §§pop());
                              }
                           }
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr63);
               }
               §§goto(addr71);
            }
            §§goto(addr40);
         }
         §§goto(addr43);
      }
      
      protected function §!S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§=!1§(§56§);
         }
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         this.§ T§ = -1;
         if(!_loc5_)
         {
            this.§!S§();
            §§push(this);
            §§push(this);
            §§push(this.§[y§ = param1);
            if(_loc4_ || _loc3_)
            {
               var _loc3_:*;
               §§push(_loc3_ = §§pop());
            }
            §§pop().§^a§ = §§pop();
            §§pop().§!X§ = _loc3_;
            if(_loc4_ || param2)
            {
               §§push(this);
               §§push(this);
               §§push(this.§0>§ = param2);
               if(!_loc5_)
               {
                  §§push(_loc3_ = §§pop());
               }
               §§pop().§`!?§ = §§pop();
               §§pop().§`e§ = _loc3_;
               addr69:
               this.§=!#§ = 0;
               if(!(_loc5_ && param1))
               {
                  addr89:
                  §§push(this.§?p§);
                  if(_loc4_)
                  {
                     §§push(this.§-!'§);
                     if(_loc4_)
                     {
                        §§pop().x = §§pop();
                        §§push(this.§?p§);
                        if(_loc4_ || param2)
                        {
                           §§push(this.§!A§);
                           if(_loc4_)
                           {
                              addr111:
                              §§pop().y = §§pop();
                              addr114:
                              §§push(this.§?p§);
                              §§push(§5K§);
                           }
                           §§pop().scale = §§pop();
                           this.§3!4§ = §5K§;
                           addr119:
                           if(Math.abs(this.§[o§.x - this.§%L§.x) > 0.001)
                           {
                              §§push(this);
                              §§push(this.§-!'§);
                              if(_loc4_)
                              {
                                 §§push(§§pop() - this.§%L§.x);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() / (this.§[o§.x - this.§%L§.x));
                                    if(!_loc4_)
                                    {
                                    }
                                    §§goto(addr163);
                                 }
                                 §§push(§§pop() * §"C§);
                              }
                              addr163:
                              §§pop().mCurrentCameraSliderLocation = §§pop();
                              if(!(_loc5_ && this))
                              {
                                 addr171:
                                 this.mDragging = true;
                              }
                              return;
                           }
                           §§goto(addr171);
                        }
                        §§goto(addr114);
                     }
                  }
                  §§goto(addr111);
               }
               §§goto(addr119);
            }
            §§goto(addr89);
         }
         §§goto(addr69);
      }
      
      public function §]!?§(param1:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = Number(this.mCurrentCameraSliderLocation);
         if(!_loc5_)
         {
            §§push(this);
            §§push(this.§=!#§);
            if(_loc4_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§=!#§ = §§pop();
         }
         §§push(this.§!X§);
         if(_loc4_)
         {
            §§push(§§pop() - this.§^a§);
            if(!_loc5_)
            {
               addr39:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && param1))
            {
               §§push(this.§6t§);
               if(!(_loc5_ && param1))
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(_loc2_);
                           §§push(_loc3_);
                           §§push(§7!,§.§ '§);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc4_)
                              {
                                 §§push(§&!?§);
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(§§pop() / §§pop());
                                    §§push(this.§6t§);
                                    if(!_loc5_)
                                    {
                                       §§push(Number(§§pop() - §§pop() / §§pop() * §"C§));
                                       if(!(_loc5_ && this))
                                       {
                                          _loc2_ = §§pop();
                                          this.§;!?§ = false;
                                          addr121:
                                          §§push(_loc2_);
                                          §§push(0);
                                          if(_loc4_ || _loc2_)
                                          {
                                             addr130:
                                             if(§§pop() < §§pop())
                                             {
                                                addr132:
                                                §§push(_loc2_);
                                                §§push(_loc2_);
                                                §§push(0.3);
                                                if(_loc4_)
                                                {
                                                   addr136:
                                                   §§push(§§pop() - §§pop() * §§pop());
                                                   if(!_loc5_)
                                                   {
                                                      _loc2_ = Number(§§pop());
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         this.§;!?§ = true;
                                                         if(_loc4_ || param1)
                                                         {
                                                            addr159:
                                                            §§push(_loc2_);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§"C§);
                                                               if(_loc4_)
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc4_)
                                                                        {
                                                                           addr187:
                                                                           §§push(§§pop() + (§"C§ - _loc2_) * 0.3);
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr195:
                                                                              _loc2_ = Number(§§pop());
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 addr203:
                                                                                 this.§;!?§ = true;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr195);
                                                                     }
                                                                     §§goto(addr209);
                                                                  }
                                                                  this.mCurrentCameraSliderLocation = _loc2_;
                                                                  §§goto(addr209);
                                                               }
                                                               §§goto(addr187);
                                                            }
                                                            §§goto(addr195);
                                                         }
                                                      }
                                                      §§goto(addr203);
                                                   }
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr159);
                                          }
                                          §§goto(addr187);
                                       }
                                       §§goto(addr195);
                                    }
                                 }
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr209);
                     }
                     addr209:
                     this.§^a§ = this.§!X§;
                     return;
                  }
                  §§goto(addr130);
               }
               §§goto(addr132);
            }
            §§goto(addr121);
         }
         §§goto(addr39);
      }
      
      protected function §7J§() : Boolean
      {
         return this.mCurrentAction == §56§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(this.mDragging)
            {
               if(!_loc4_)
               {
                  addr38:
                  this.§!X§ = param1;
                  if(!(_loc4_ && this))
                  {
                     this.§`e§ = param2;
                  }
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = NaN;
         if(_loc5_)
         {
            §§push(this.mCurrentAction);
            if(_loc5_ || param1)
            {
               §§push(§56§);
               if(_loc5_)
               {
                  if(§§pop() == §§pop())
                  {
                     this.§=!1§(§@<§);
                     if(_loc5_ || _loc3_)
                     {
                        addr44:
                        §§push(param1);
                        if(_loc5_)
                        {
                           §§push(0);
                           if(!_loc4_)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    this.§!X§ = param1;
                                    if(!_loc4_)
                                    {
                                       addr63:
                                       _loc3_ = Math.abs(this.§!X§ - this.§[y§);
                                       if(_loc5_ || param2)
                                       {
                                          §§push(this.§=!#§);
                                          if(!(_loc4_ && this))
                                          {
                                             §§push(§6W§);
                                             if(!(_loc4_ && this))
                                             {
                                                §§push(§§pop() < §§pop());
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc4_ && this))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            §§pop();
                                                            §§push(_loc3_);
                                                            if(_loc5_)
                                                            {
                                                               addr119:
                                                               §§push(§;$§);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop() >= §§pop());
                                                                  if(_loc5_)
                                                                  {
                                                                     addr125:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc5_ || param2)
                                                                        {
                                                                           addr134:
                                                                           §§pop();
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§push(§<D§);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr148:
                                                                                    §§push(§§pop() * this.§=!#§);
                                                                                    if(_loc5_ || param2)
                                                                                    {
                                                                                       §§push(§§pop() / 1000);
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          addr177:
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             if(!(_loc4_ && param1))
                                                                                             {
                                                                                                addr190:
                                                                                                if(this.§!X§ < this.§[y§)
                                                                                                {
                                                                                                   addr191:
                                                                                                   this.§=!1§(§;!@§);
                                                                                                   addr200:
                                                                                                   §§push(this);
                                                                                                   §§push(_loc3_);
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop() / this.§=!#§);
                                                                                                      if(_loc5_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop() * 10);
                                                                                                      }
                                                                                                   }
                                                                                                   §§pop().§ for§ = §§pop();
                                                                                                   this.§;!?§ = false;
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(this.mCurrentCameraSliderLocation);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         addr231:
                                                                                                         §§push(0);
                                                                                                         if(_loc5_ || _loc3_)
                                                                                                         {
                                                                                                            if(§§pop() < §§pop())
                                                                                                            {
                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                               {
                                                                                                                  this.§;!?§ = true;
                                                                                                                  addr250:
                                                                                                                  §§push(this.mCurrentCameraSliderLocation);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr273:
                                                                                                                  this.§"9§();
                                                                                                                  if(_loc5_ || this)
                                                                                                                  {
                                                                                                                     addr282:
                                                                                                                     this.§ for§ = §"C§ / (§"C§ / 500);
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        addr291:
                                                                                                                        this.§;!?§ = true;
                                                                                                                        if(!(_loc4_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr332:
                                                                                                                           this.mDragging = false;
                                                                                                                           return;
                                                                                                                           addr311:
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr332);
                                                                                                               }
                                                                                                               §§goto(addr332);
                                                                                                            }
                                                                                                            §§goto(addr250);
                                                                                                         }
                                                                                                         addr253:
                                                                                                         if(§§pop() > §§pop())
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               addr256:
                                                                                                               this.§;!?§ = true;
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                               }
                                                                                                               §§goto(addr332);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr282);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr332);
                                                                                                      }
                                                                                                      §§goto(addr253);
                                                                                                      §§push(§"C§);
                                                                                                   }
                                                                                                   §§goto(addr250);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   this.§=!1§(§;p§);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§goto(addr200);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr311);
                                                                                             }
                                                                                             §§goto(addr191);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr265:
                                                                                             if(this.§=!#§ < §'!-§)
                                                                                             {
                                                                                                if(!(_loc4_ && param2))
                                                                                                {
                                                                                                   §§goto(addr273);
                                                                                                }
                                                                                                §§goto(addr291);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                this.§]!?§(0);
                                                                                                this.§"R§(0);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr320:
                                                                                                   this.§ for§ = §"C§ / (§"C§ / 500);
                                                                                                }
                                                                                                this.§;!?§ = true;
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§goto(addr332);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr332);
                                                                                       }
                                                                                       §§goto(addr190);
                                                                                    }
                                                                                    §§goto(addr177);
                                                                                 }
                                                                              }
                                                                              §§goto(addr265);
                                                                           }
                                                                           §§goto(addr320);
                                                                        }
                                                                     }
                                                                     §§goto(addr177);
                                                                  }
                                                                  §§goto(addr134);
                                                               }
                                                               §§goto(addr148);
                                                            }
                                                            §§goto(addr190);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr125);
                                                }
                                                §§goto(addr134);
                                             }
                                             §§goto(addr265);
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr256);
                                    }
                                 }
                                 §§goto(addr191);
                              }
                              §§goto(addr63);
                           }
                        }
                        §§goto(addr265);
                     }
                     §§goto(addr320);
                  }
                  §§goto(addr332);
               }
               §§goto(addr253);
            }
            §§goto(addr231);
         }
         §§goto(addr44);
      }
      
      public function §"9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.mCurrentAction);
            if(!(_loc1_ && this))
            {
               §§push(§;!@§);
               if(!_loc1_)
               {
                  if(§§pop() == §§pop())
                  {
                     this.§=!1§(§;p§);
                     §§goto(addr107);
                  }
                  else
                  {
                     §§push(this.mCurrentAction);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(§;p§);
                        if(!_loc1_)
                        {
                           addr58:
                           if(§§pop() == §§pop())
                           {
                              this.§=!1§(§;!@§);
                              §§goto(addr107);
                           }
                           else
                           {
                              §§push(this.mCurrentCameraSliderLocation);
                              if(_loc2_ || this)
                              {
                                 addr82:
                                 §§push(§"C§);
                                 if(!_loc1_)
                                 {
                                    addr85:
                                    §§push(2);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(!_loc1_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                this.§=!1§(§;p§);
                                             }
                                             else
                                             {
                                                addr104:
                                                this.§=!1§(§;!@§);
                                             }
                                             §§goto(addr107);
                                          }
                                          else
                                          {
                                             addr102:
                                             §§push(this.mCurrentCameraSliderLocation);
                                             §§push(§"C§ / 2);
                                          }
                                          §§goto(addr107);
                                       }
                                       if(§§pop() <= §§pop())
                                       {
                                          §§goto(addr104);
                                       }
                                       §§goto(addr107);
                                    }
                                 }
                              }
                              §§goto(addr102);
                           }
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr102);
                  }
               }
               §§goto(addr58);
            }
            §§goto(addr82);
         }
         addr107:
      }
      
      public function §"R§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§ T§ = param1;
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr53);
            }
            §§goto(addr66);
         }
         addr53:
         if(this.mCurrentCameraSliderLocation < §"C§ / 2)
         {
            if(!(_loc3_ && _loc3_))
            {
               addr66:
               this.§=!1§(§;p§);
               if(_loc2_ || _loc3_)
               {
               }
            }
         }
         else
         {
            this.§=!1§(§;!@§);
         }
      }
      
      public function goToBirdView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§=!1§(§;p§);
         }
      }
      
      public function goToCastleView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§=!1§(§;!@§);
         }
      }
      
      public function §=!1§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§?p§);
            if(_loc2_ || _loc3_)
            {
               §§push(this.§-!'§);
               if(_loc2_ || param1)
               {
                  §§pop().x = §§pop();
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this.§?p§);
                     if(!(_loc3_ && this))
                     {
                        addr73:
                        §§push(this.§!A§);
                        if(!_loc3_)
                        {
                           §§pop().y = §§pop();
                           §§goto(addr96);
                        }
                        addr88:
                        §§pop().scale = §§pop();
                        if(!_loc3_)
                        {
                           this.§3!4§ = §5K§;
                           if(!_loc2_)
                           {
                           }
                        }
                        §§goto(addr96);
                     }
                     §§push(§5K§);
                  }
                  §§goto(addr96);
               }
               §§goto(addr88);
            }
            §§goto(addr73);
         }
         addr96:
         if(!(_loc3_ && this))
         {
            §§push(this.§?p§);
         }
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.mCurrentCameraSliderLocation);
            if(_loc2_ || _loc3_)
            {
               §§push(§"C§);
               if(!_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_)
                     {
                        §§push(true);
                        if(!(_loc3_ && _loc3_))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr85:
                        §§push(true);
                        if(!(_loc2_ || _loc3_))
                        {
                           §§goto(addr95);
                        }
                     }
                     return §§pop();
                  }
                  addr77:
                  addr76:
                  if(this.mCurrentAction == §;!@§)
                  {
                     if(!(_loc3_ && this))
                     {
                        §§goto(addr85);
                     }
                     §§goto(addr95);
                  }
                  §§push(false);
                  addr95:
                  return §§pop();
               }
               §§goto(addr77);
            }
            §§goto(addr76);
         }
         §§goto(addr85);
      }
      
      public function §5!4§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.mCurrentCameraSliderLocation);
            if(_loc3_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc2_ && param1))
                  {
                     addr57:
                     §§push(true);
                     if(_loc3_ || _loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr74:
                     §§push(true);
                     if(!(_loc3_ || this))
                     {
                        §§goto(addr84);
                     }
                  }
                  return §§pop();
               }
               addr70:
               if(this.mCurrentAction == §;p§)
               {
                  if(_loc3_)
                  {
                     §§goto(addr74);
                  }
                  §§goto(addr84);
               }
               §§push(false);
               addr84:
               return §§pop();
            }
            §§goto(addr70);
         }
         §§goto(addr57);
      }
      
      public function §?!C§(param1:§]<§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=T§ = param1;
            if(this.§=T§ != null)
            {
               if(_loc2_)
               {
                  this.§]>§ = new §]<§();
                  if(_loc2_)
                  {
                     §§push(this.§]>§);
                     if(!_loc3_)
                     {
                        §§push(this.§-!'§);
                        if(!(_loc3_ && param1))
                        {
                           §§pop().x = §§pop();
                           if(!(_loc3_ && param1))
                           {
                              addr64:
                              §§push(this.§]>§);
                              if(!_loc3_)
                              {
                                 §§push(this.§!A§);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr77:
                                    §§pop().y = §§pop();
                                    addr80:
                                    §§push(this.§]>§);
                                    §§push(§5K§);
                                 }
                                 §§pop().scale = §§pop();
                                 if(_loc3_ && _loc2_)
                                 {
                                    addr117:
                                    §5K§ = this.§]>§.scale;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr129:
                                       this.§]>§ = null;
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr80);
                           }
                           §§goto(addr117);
                        }
                     }
                     §§goto(addr77);
                  }
               }
               §§goto(addr64);
            }
            else
            {
               this.§-!'§ = this.§]>§.x;
               if(!(_loc3_ && _loc3_))
               {
                  this.§!A§ = this.§]>§.y;
                  §§goto(addr117);
               }
            }
            §§goto(addr129);
         }
         §§goto(addr64);
      }
      
      protected function §!W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.isOnCastleView())
            {
               if(_loc2_)
               {
                  this.goToCastleView();
                  if(_loc2_ || this)
                  {
                  }
                  §§goto(addr46);
               }
            }
            else
            {
               this.goToBirdView();
            }
         }
         addr46:
      }
      
      public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§import§);
         if(_loc4_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || param2)
         {
            if(param1)
            {
               §§push(_loc3_);
               if(_loc4_)
               {
                  §§push(param2);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                        if(_loc5_ && _loc3_)
                        {
                           addr88:
                           _loc3_ = §§pop();
                           if(!(_loc5_ && param2))
                           {
                              addr116:
                              _loc3_ = Number(Math.max(this.§'!@§,Math.min(this.§?!$§,_loc3_)));
                              addr106:
                              if(!_loc5_)
                              {
                                 §§goto(addr119);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr119);
                        }
                        addr119:
                        §§goto(addr122);
                     }
                     _loc3_ = §§pop();
                     if(!_loc5_)
                     {
                        §§goto(addr106);
                     }
                     §§goto(addr123);
                  }
                  else
                  {
                     addr86:
                     §§push(Number(§§pop() - §§pop()));
                  }
                  §§goto(addr88);
               }
               §§goto(addr116);
            }
            else
            {
               §§push(_loc3_);
               §§push(param2);
               if(!(_loc5_ && this))
               {
                  §§goto(addr86);
               }
            }
            addr122:
            if(_loc3_ != this.§import§)
            {
               addr123:
               this.§import§ = _loc3_;
               this.§!W§();
            }
            return;
         }
         §§goto(addr119);
      }
      
      public function § &§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§-!D§);
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§'!@§);
            if(_loc1_)
            {
               §§goto(addr55);
            }
            §§push(§§pop() / §§pop());
         }
         addr55:
         §§push(§§pop() - §§pop());
         if(!_loc2_)
         {
            §§push(this.§?!$§);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() - this.§'!@§);
            }
         }
         return §§pop();
      }
      
      public function §"O§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(Math.min(Math.max(param1,0),1) * (this.§?!$§ - this.§'!@§));
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + this.§'!@§);
            }
            §§pop().§-!D§ = §§pop();
         }
      }
      
      public function §"A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§import§ = Math.max(this.§import§ - 0.5,0.5);
         }
      }
      
      public function §5!-§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = "";
         §§push(_loc1_);
         §§push(" mManualScale: ");
         §§push(this.§import§);
         if(_loc3_)
         {
            §§push(§§pop() + §§pop());
            if(_loc3_)
            {
               §§push(§§pop() + §§pop());
               if(_loc3_)
               {
                  _loc1_ = §§pop();
                  if(_loc3_)
                  {
                     §§push(_loc1_);
                     §§push(" mXcenterB2: ");
                     if(!(_loc2_ && this))
                     {
                        §§push(this.§-!'§);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(§§pop() + (§§pop() + §§pop()));
                           if(_loc3_)
                           {
                              §§push(§§pop());
                              if(!(_loc2_ && this))
                              {
                                 _loc1_ = §§pop();
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§push(_loc1_);
                                    if(!_loc2_)
                                    {
                                       §§push(" mYcenterB2: ");
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(§§pop() + (§§pop() + this.§!A§));
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(§§pop());
                                             if(_loc3_)
                                             {
                                                _loc1_ = §§pop();
                                                if(_loc3_)
                                                {
                                                   §§push(_loc1_);
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      addr109:
                                                      §§push(" mXcenterB2target: ");
                                                      §§push(this.§import§);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc2_ && _loc1_))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc3_)
                                                            {
                                                               _loc1_ = §§pop();
                                                               §§push(_loc1_);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop() + ("\n mYcenterB2target: " + this.§import§));
                                                                  if(_loc3_)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        §§push(_loc1_);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(" mXcenterB2previous: " + this.§import§);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc2_ && _loc1_))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc2_ && _loc1_))
                                                                                 {
                                                                                    _loc1_ = §§pop();
                                                                                    §§push(_loc1_);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       _loc1_ = §§pop() + (" mYcenterB2previous: " + this.§import§);
                                                                                       if(_loc3_ || this)
                                                                                       {
                                                                                          §§push(_loc1_);
                                                                                          §§push(" mTimeNeededForCameraMovement: ");
                                                                                          if(!(_loc2_ && this))
                                                                                          {
                                                                                             addr208:
                                                                                             _loc1_ = §§pop() + (§§pop() + this.§import§);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                §§push(_loc1_);
                                                                                                §§push(" mTimeUsedForCameraMovement: ");
                                                                                                §§push(this.§import§);
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   addr222:
                                                                                                   §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr234:
                                                                                                         _loc1_ = §§pop();
                                                                                                         addr236:
                                                                                                         §§push(_loc1_);
                                                                                                         §§push("\n mTimeNeededForScaleMovement: ");
                                                                                                         if(!(_loc2_ && _loc1_))
                                                                                                         {
                                                                                                            _loc1_ = §§pop() + (§§pop() + this.§import§);
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr252:
                                                                                                               §§push(_loc1_);
                                                                                                               §§push(" mTimeUsedForScaleMovement: ");
                                                                                                               §§push(this.§import§);
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc3_ || _loc1_)
                                                                                                                  {
                                                                                                                     addr266:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        _loc1_ = §§pop();
                                                                                                                        if(!(_loc2_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(_loc1_);
                                                                                                                           §§push(" mTargetScale: ");
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              addr284:
                                                                                                                              §§push(§§pop() + this.§import§);
                                                                                                                              if(_loc3_ || this)
                                                                                                                              {
                                                                                                                                 _loc1_ = §§pop() + §§pop();
                                                                                                                                 if(!(_loc2_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr302:
                                                                                                                                    §§push(_loc1_);
                                                                                                                                    §§push(" mTargetScalePrevious: ");
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + (§§pop() + this.§import§));
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          addr312:
                                                                                                                                          _loc1_ = §§pop();
                                                                                                                                          §§push(_loc1_);
                                                                                                                                          §§push(" mCastleCameraX: ");
                                                                                                                                          §§push(this.§import§);
                                                                                                                                          if(_loc3_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             addr325:
                                                                                                                                             §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                §§push(_loc1_);
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push("\n mCastleCameraY: ");
                                                                                                                                                   if(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + this.§import§);
                                                                                                                                                      if(!_loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr344:
                                                                                                                                                         _loc1_ = §§pop() + §§pop();
                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(" mCastleCameraScale: ");
                                                                                                                                                            §§push(this.§import§);
                                                                                                                                                            if(!_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                               if(!(_loc2_ && _loc1_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc1_ = §§pop();
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc1_);
                                                                                                                                                                        §§push(" mBirdCameraX: ");
                                                                                                                                                                        if(!(_loc2_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr377:
                                                                                                                                                                           §§push(§§pop() + (§§pop() + this.§import§));
                                                                                                                                                                           if(!(_loc2_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(_loc3_ || _loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr411:
                                                                                                                                                                                    §§push(_loc1_);
                                                                                                                                                                                    §§push(" mBirdCameraY: ");
                                                                                                                                                                                    §§push(this.§import§);
                                                                                                                                                                                    if(!(_loc2_ && _loc1_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr422:
                                                                                                                                                                                       _loc1_ = §§pop() + (§§pop() + §§pop());
                                                                                                                                                                                       §§push(_loc1_);
                                                                                                                                                                                       if(!(_loc2_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(" mBirdCameraScale: ");
                                                                                                                                                                                          if(_loc3_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§import§);
                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr445:
                                                                                                                                                                                                §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                if(!_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(!_loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                                                                      if(!_loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr459:
                                                                                                                                                                                                         §§push(_loc1_ + ("\n mScreenLeftScroll: " + this.§import§));
                                                                                                                                                                                                         if(_loc3_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr468:
                                                                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                                                                            if(!_loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr478:
                                                                                                                                                                                                               _loc1_ = §§pop() + (" mScreenTopScroll: " + this.§import§);
                                                                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                                                                               §§push(" mDragging: ");
                                                                                                                                                                                                               if(_loc3_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§import§);
                                                                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr493:
                                                                                                                                                                                                                     §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                     if(!(_loc2_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr502:
                                                                                                                                                                                                                        _loc1_ = §§pop();
                                                                                                                                                                                                                        §§push(_loc1_);
                                                                                                                                                                                                                        §§push(" mDraggingPointPreviousX: ");
                                                                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr510:
                                                                                                                                                                                                                           _loc1_ = §§pop() + (§§pop() + this.§import§);
                                                                                                                                                                                                                           §§push(_loc1_);
                                                                                                                                                                                                                           if(_loc3_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr524:
                                                                                                                                                                                                                              §§push(" mDraggingPointPreviousY: " + this.§import§);
                                                                                                                                                                                                                              if(_loc3_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr533:
                                                                                                                                                                                                                                 _loc1_ = §§pop() + §§pop();
                                                                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc1_);
                                                                                                                                                                                                                                    §§push("\n mDraggingPointCurrentX: ");
                                                                                                                                                                                                                                    §§push(this.§import§);
                                                                                                                                                                                                                                    if(!_loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr557:
                                                                                                                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                                                                                                                §§push(_loc1_);
                                                                                                                                                                                                                                                if(!_loc2_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr562:
                                                                                                                                                                                                                                                   §§push(§§pop() + (" mDraggingPointCurrentY: " + this.§import§));
                                                                                                                                                                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr573:
                                                                                                                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                                                                                                                      if(!(_loc2_ && _loc1_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr582:
                                                                                                                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                                                                                                                         if(!_loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(" mDraggingPointOriginalX: ");
                                                                                                                                                                                                                                                            if(_loc3_ || _loc2_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr593:
                                                                                                                                                                                                                                                               §§push(this.§import§);
                                                                                                                                                                                                                                                               if(!_loc2_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr599:
                                                                                                                                                                                                                                                                  §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc1_ = §§pop();
                                                                                                                                                                                                                                                                     addr603:
                                                                                                                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(" mDraggingPointOriginalY: ");
                                                                                                                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr611:
                                                                                                                                                                                                                                                                           §§push(§§pop() + this.§import§);
                                                                                                                                                                                                                                                                           if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr625:
                                                                                                                                                                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                    if(_loc3_ || _loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc1_);
                                                                                                                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(" mDraggingTimer: ");
                                                                                                                                                                                                                                                                                          §§push(this.§import§);
                                                                                                                                                                                                                                                                                          if(!(_loc2_ && this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr646:
                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                             if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                if(_loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr657:
                                                                                                                                                                                                                                                                                                   _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                   if(!_loc2_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr661:
                                                                                                                                                                                                                                                                                                      §§push(_loc1_);
                                                                                                                                                                                                                                                                                                      if(_loc3_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr664:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + ("\n mCameraBorderLeft: " + this.§import§));
                                                                                                                                                                                                                                                                                                         if(!_loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr671:
                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                            if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                               if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr687:
                                                                                                                                                                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr712:
                                                                                                                                                                                                                                                                                                                  §§push(" mCameraBorderSky: ");
                                                                                                                                                                                                                                                                                                                  §§push(this.§import§);
                                                                                                                                                                                                                                                                                                                  if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr726:
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                        if(!(_loc2_ && this))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr734:
                                                                                                                                                                                                                                                                                                                           _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                           if(!(_loc2_ && this))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr742:
                                                                                                                                                                                                                                                                                                                              §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr746:
                                                                                                                                                                                                                                                                                                                                 §§push(" mCameraBorderGround: ");
                                                                                                                                                                                                                                                                                                                                 §§push(this.§import§);
                                                                                                                                                                                                                                                                                                                                 if(_loc3_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr755:
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                                                                                                                    if(_loc3_ || this)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr774:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                       if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr782:
                                                                                                                                                                                                                                                                                                                                          _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                          addr787:
                                                                                                                                                                                                                                                                                                                                          §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                          §§push(" mPigsAreOnRight: " + this.§import§);
                                                                                                                                                                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr792:
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + (§§pop() + "\n "));
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr792);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr794);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr794:
                                                                                                                                                                                                                                                                                                                                    return §§pop();
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr787);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr782);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr794);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr792);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr782);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr742);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(" mCameraBorderRight: ");
                                                                                                                                                                                                                                                                                                            §§push(this.§import§);
                                                                                                                                                                                                                                                                                                            if(!(_loc2_ && this))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr701:
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                                                                                               if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr709:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr774);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr782);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr726);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                      addr711:
                                                                                                                                                                                                                                                                                                      §§goto(addr712);
                                                                                                                                                                                                                                                                                                      §§push(_loc1_);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr782);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr726);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr792);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr782);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr774);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr742);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr774);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr657);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr746);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr712);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr746);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr611);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr701);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr712);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr603);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr671);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr746);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr782);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr709);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr671);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr782);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr774);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr726);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr557);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr562);
                                                                                                                                                                                                                        addr501:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr573);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr646);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr746);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr557);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr599);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr582);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr625);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr533);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr755);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr510);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr746);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr524);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr782);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr468);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr726);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr611);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr782);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr664);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr709);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr646);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr502);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr459);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr593);
                                                                                                                                                }
                                                                                                                                                §§goto(addr344);
                                                                                                                                             }
                                                                                                                                             §§goto(addr501);
                                                                                                                                          }
                                                                                                                                          §§goto(addr701);
                                                                                                                                       }
                                                                                                                                       §§goto(addr573);
                                                                                                                                    }
                                                                                                                                    §§goto(addr459);
                                                                                                                                 }
                                                                                                                                 §§goto(addr557);
                                                                                                                              }
                                                                                                                              §§goto(addr344);
                                                                                                                           }
                                                                                                                           §§goto(addr671);
                                                                                                                        }
                                                                                                                        §§goto(addr711);
                                                                                                                     }
                                                                                                                     §§goto(addr344);
                                                                                                                  }
                                                                                                                  §§goto(addr726);
                                                                                                               }
                                                                                                               §§goto(addr284);
                                                                                                            }
                                                                                                            §§goto(addr687);
                                                                                                         }
                                                                                                         §§goto(addr377);
                                                                                                      }
                                                                                                      §§goto(addr734);
                                                                                                   }
                                                                                                   §§goto(addr344);
                                                                                                }
                                                                                                §§goto(addr782);
                                                                                             }
                                                                                             §§goto(addr502);
                                                                                          }
                                                                                          §§goto(addr459);
                                                                                       }
                                                                                       §§goto(addr302);
                                                                                    }
                                                                                    §§goto(addr774);
                                                                                 }
                                                                                 §§goto(addr746);
                                                                              }
                                                                              §§goto(addr502);
                                                                           }
                                                                           §§goto(addr445);
                                                                        }
                                                                        §§goto(addr236);
                                                                     }
                                                                     §§goto(addr711);
                                                                  }
                                                                  §§goto(addr208);
                                                               }
                                                               §§goto(addr478);
                                                            }
                                                            §§goto(addr312);
                                                         }
                                                         §§goto(addr493);
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                   §§goto(addr312);
                                                }
                                                §§goto(addr661);
                                             }
                                             §§goto(addr109);
                                          }
                                          §§goto(addr726);
                                       }
                                       §§goto(addr411);
                                    }
                                    §§goto(addr234);
                                 }
                                 §§goto(addr252);
                              }
                              §§goto(addr625);
                           }
                           §§goto(addr422);
                        }
                        §§goto(addr222);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr411);
               }
               §§goto(addr774);
            }
            §§goto(addr266);
         }
         §§goto(addr325);
      }
   }
}
