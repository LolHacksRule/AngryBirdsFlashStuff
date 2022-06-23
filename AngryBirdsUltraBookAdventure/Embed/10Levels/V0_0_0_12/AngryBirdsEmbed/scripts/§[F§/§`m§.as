package §[F§
{
   import §"!5§.§,!!§;
   import §%x§.§#;§;
   import §%x§.§;C§;
   import §0!<§.§#y§;
   import §>!C§.§'H§;
   import §>!C§.§9R§;
   import §]!9§.§>2§;
   
   public class §`m§
   {
      
      public static const §`n§:Number = 1.25;
      
      public static const §4a§:Number = 0.15;
      
      public static const §5t§:Number;
      
      public static const §]@§:Number;
      
      public static const §0`§:Number = 0.1;
      
      public static const §>!=§:int = 1500;
      
      public static const §>9§:int = 10;
      
      public static const §@!&§:int = 15;
      
      public static const §%!6§:int = 300;
      
      public static const §`c§:int = 1000;
      
      public static const §&9§:int = 10000;
      
      public static const §0!>§:int = 200.0;
      
      public static const §7c§:int = 0;
      
      public static const §4J§:int = 1;
      
      public static const §1!7§:int = 2;
      
      public static const §@M§:int = 3;
      
      public static const §!p§:int = 4;
      
      public static const §@j§:int = 5;
      
      public static const §%T§:String = "CASTLE";
      
      public static const §;!,§:String = "SLINGSHOT";
      
      protected static var §=z§:Number;
      
      public static var §0!6§:Number;
      
      public static var §15§:Number;
      
      public static const §]6§:Number = 2000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §4a§ = 0.15;
            if(!_loc2_)
            {
               addr31:
               §5t§ = §,!!§.§;]§ * §#;§.§`!2§;
               §]@§ = §,!!§.§3L§ * §#;§.§`!2§;
               if(!_loc2_)
               {
                  §0`§ = 0.1;
                  §>!=§ = 1500;
                  if(_loc1_)
                  {
                     §>9§ = 10;
                     §@!&§ = 15;
                     if(!(_loc2_ && §`m§))
                     {
                        §%!6§ = 300;
                        if(!_loc2_)
                        {
                           §`c§ = 1000;
                           if(!_loc2_)
                           {
                              §&9§ = 10000;
                              if(!_loc2_)
                              {
                                 addr93:
                                 §0!>§ = §&9§ / 50;
                                 addr98:
                                 §7c§ = 0;
                              }
                              §4J§ = 1;
                              if(!_loc2_)
                              {
                                 addr106:
                                 §1!7§ = 2;
                                 if(_loc1_)
                                 {
                                    addr121:
                                    §@M§ = 3;
                                    if(_loc1_)
                                    {
                                       addr126:
                                       §!p§ = 4;
                                       §@j§ = 5;
                                       §%T§ = "CASTLE";
                                    }
                                    §;!,§ = "SLINGSHOT";
                                    if(_loc1_ || §`m§)
                                    {
                                       §]6§ = 2000;
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
      
      private var §!+§:Number = 1.0;
      
      private var §-W§:Number = 0.2;
      
      protected var §1Z§:Number;
      
      protected var §[!=§:Number;
      
      protected var §#!F§:Number;
      
      public var §7C§:§#;§;
      
      public var §+q§:Number;
      
      public var §[@§:Number;
      
      private var §@h§:§,A§;
      
      private var §2!;§:§,A§;
      
      public var §6`§:Number;
      
      public var §,!E§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §@!'§:Number;
      
      public var §>b§:Number;
      
      public var §9_§:Number;
      
      public var §0p§:Number;
      
      private var §2>§:Number;
      
      private var §3!@§:§0!§;
      
      private var §6!5§:§0!§;
      
      protected var §^3§:Number = 0;
      
      protected var §3c§:Number = 0;
      
      protected var §&!5§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §-p§:Number = 0;
      
      public var §=6§:Boolean = true;
      
      public var §[V§:Number = 0;
      
      public var §!!D§:Number = 0;
      
      public var §2R§:Number = 0;
      
      public var §-!>§:Number = 0;
      
      public var §+"§:Number = 0;
      
      public var §>s§:Number = 0;
      
      public var §'!>§:Number = 0;
      
      public var §6C§:Number = 0;
      
      public var §7]§:Number = 0;
      
      private var §5-§:§0!§;
      
      public var §#! §:Number = 0;
      
      private var §-c§:Number = 0;
      
      private var §#!E§:Number = 0;
      
      private var §&=§:§'H§ = null;
      
      private var §6!9§:§'H§ = null;
      
      public function §`m§(param1:§#;§, param2:§9R§, param3:Number = 1.0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§5-§ = new §0!§(0,0,1,false);
            super();
            if(_loc4_)
            {
               this.§[!=§ = 0;
               if(!_loc5_)
               {
                  this.§#!F§ = 0;
                  if(!(_loc5_ && param1))
                  {
                     this.§7C§ = param1;
                     §`m§.§=z§ = 1;
                     if(_loc4_)
                     {
                        this.§!+§ = Math.max(1,Math.min(2,param3));
                        this.§1Z§ = this.§!+§;
                        if(!_loc5_)
                        {
                           this.§6^§(param2);
                           §§push(Boolean(this.§@h§));
                           if(_loc4_ || param3)
                           {
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    addr85:
                                    §§pop();
                                    §§push(Boolean(this.§2!;§));
                                 }
                              }
                              if(§§pop())
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    addr107:
                                    this.§1#§();
                                    if(_loc4_ || param1)
                                    {
                                       §§push(this);
                                       §§push(this.§@h§.x);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() - this.§2!;§.x);
                                       }
                                       §§pop().§^3§ = §§pop();
                                       addr127:
                                       §§push(this);
                                       §§push(this.§@h§.y);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() - this.§2!;§.y);
                                       }
                                       §§pop().§3c§ = §§pop();
                                    }
                                    §§push(this);
                                    §§push(this.§@h§.scale);
                                    if(!(_loc5_ && param3))
                                    {
                                       §§push(§§pop() - this.§2!;§.scale);
                                    }
                                    §§pop().§&!5§ = §§pop();
                                    §§goto(addr154);
                                 }
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr85);
                        }
                        addr154:
                        this.§[!=§ = this.§@h§.x;
                        if(_loc4_)
                        {
                           this.§#!F§ = this.§@h§.y;
                           if(_loc4_)
                           {
                              addr168:
                              §§push(§§findproperty(§=z§));
                              §§push(this.§@h§.scale);
                              if(_loc4_)
                              {
                                 §§push(§§pop() * this.§1Z§);
                              }
                              §§pop().§=z§ = §§pop();
                              if(!(_loc5_ && this))
                              {
                                 addr195:
                                 this.mCurrentCameraSliderLocation = §&9§;
                                 if(_loc4_ || param2)
                                 {
                                 }
                                 §§goto(addr213);
                              }
                           }
                           this.§=6§ = true;
                           this.§-p§ = §&9§ / 500;
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
      
      private static function §+K§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§,!!§.§0!3§);
         if(!(_loc3_ && §`m§))
         {
            §§push(§§pop() / §,!!§.§,`§);
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
      
      public static function get §;`§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§=z§);
         if(_loc2_ || _loc1_)
         {
            §§push(§§pop() * §+K§());
         }
         return §§pop();
      }
      
      public function get §=G§() : Number
      {
         return this.§1Z§;
      }
      
      public function set §=G§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1Z§ = param1;
         }
      }
      
      public function get §%!A§() : Number
      {
         return this.§2>§;
      }
      
      public function §>!<§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§5t§);
         if(!(_loc1_ && this))
         {
            §§push(this.§>b§);
            if(!_loc1_)
            {
               §§push(§§pop() - this.§@!'§);
            }
            §§push(§§pop() / §§pop());
         }
         return §§pop();
      }
      
      public function get §3Z§() : Number
      {
         return this.§!+§;
      }
      
      public function get §4#§() : Number
      {
         return this.§-W§;
      }
      
      public function §,!&§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1Z§ = param1;
            if(_loc3_ || this)
            {
               addr39:
               this.§!%§();
               if(!(_loc2_ && this))
               {
                  this.§"6§(this.mCurrentCameraSliderLocation,1);
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
            if(this.mCurrentAction == §@j§)
            {
               if(_loc1_)
               {
                  return;
               }
            }
            this.goToCastleView();
            if(!(_loc2_ && _loc2_))
            {
               this.§[V§ = 2000;
               if(!(_loc2_ && this))
               {
                  this.§>P§();
                  if(_loc1_ || _loc2_)
                  {
                  }
                  §§goto(addr82);
               }
               this.§@o§();
            }
            §§goto(addr82);
         }
         addr82:
         this.§=I§();
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
               this.§[!=§ = this.§2!;§.x;
               addr54:
               this.§#!F§ = this.§2!;§.y;
               this.§=6§ = false;
               §§push(this);
               §§push(§&9§ / 160000);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop() * param1);
               }
               §§pop().§-p§ = §§pop();
               if(!_loc2_)
               {
                  this.§8!6§(§@j§);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function §1#§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this);
            §§push(this.§2!;§.x);
            if(_loc3_ || _loc1_)
            {
               §§push(§5t§);
               if(_loc3_)
               {
                  §§push(§§pop() / this.§2!;§.scale);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop() / 2);
                  }
               }
               §§push(§§pop() - §§pop());
            }
            §§pop().§@!'§ = §§pop();
            if(_loc3_)
            {
               addr55:
               §§push(this);
               §§push(this.§@h§.x);
               if(_loc3_)
               {
                  §§push(§5t§);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() / this.§@h§.scale);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(§§pop() / 2);
                     }
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§>b§ = §§pop();
               if(_loc3_ || _loc2_)
               {
                  addr101:
                  §§push(this);
                  §§push(this.§7C§.§`,§.§=s§);
                  if(_loc3_ || this)
                  {
                     §§push(20 * §#;§.§<!'§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop() * §#;§.§`!2§);
                     }
                     §§push(§§pop() - §§pop());
                  }
                  §§pop().§9_§ = §§pop();
                  if(_loc3_)
                  {
                     §§push(this);
                     §§push(this.§7C§.§`,§.§=s§);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() + 4);
                     }
                     §§pop().§0p§ = §§pop();
                  }
               }
               §§push(§5t§);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(this.§>b§);
                  if(!_loc2_)
                  {
                     §§push(§§pop() - this.§@!'§);
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
                     §§push(this.§0p§);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§]@§);
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
                     §§pop().§2>§ = §§pop() - §§pop();
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
            this.§7C§ = null;
         }
      }
      
      public function §6^§(param1:§9R§) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc3_:§'H§ = null;
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
         while(_loc2_ < param1.§`R§)
         {
            _loc3_ = param1.§#S§(_loc2_);
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
                                                            this.§?'§(_loc3_);
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
                                                                                       §§push(§]@§);
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
                                                                                                §§push(§5t§);
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
                                                                                                                     §§push(§;!,§);
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        if(§§pop() == §§pop())
                                                                                                                        {
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              this.§2!;§ = new §,A§(_loc9_,_loc10_,_loc13_,true);
                                                                                                                              if(_loc15_ || this)
                                                                                                                              {
                                                                                                                                 addr346:
                                                                                                                                 this.§6!5§ = new §0!§(_loc9_,_loc10_,_loc13_,true);
                                                                                                                                 addr401:
                                                                                                                                 _loc2_++;
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              addr380:
                                                                                                                              this.§3!@§ = new §0!§(_loc9_,_loc10_,_loc13_,false);
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
                                                                                                                           if(_loc4_ == §%T§)
                                                                                                                           {
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 this.§@h§ = new §,A§(_loc9_,_loc10_,_loc13_,false);
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr380);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr390);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §#y§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
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
      
      public function §=a§(param1:§9R§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§'H§ = new §'H§();
         if(!(_loc8_ && param1))
         {
            _loc2_.id = §;!,§;
            if(!(_loc8_ && _loc3_))
            {
               _loc2_.x = this.§2!;§.x;
               if(!(_loc8_ && _loc2_))
               {
                  addr50:
                  _loc2_.y = this.§2!;§.y;
               }
               §§push(§5t§);
               if(_loc9_)
               {
                  §§push(§§pop() / this.§2!;§.scale);
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
                  §§push(§]@§);
                  if(_loc9_ || this)
                  {
                     §§push(§§pop() / this.§2!;§.scale);
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
                        §§push(this.§2!;§.x);
                        if(_loc9_ || param1)
                        {
                           §§push(§§pop() - _loc3_);
                        }
                        §§pop().left = §§pop();
                        if(_loc9_)
                        {
                           §§push(_loc2_);
                           §§push(this.§2!;§.x);
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
                        var _loc5_:§'H§;
                        (_loc5_ = new §'H§()).id = §%T§;
                        if(_loc9_)
                        {
                           _loc5_.x = this.§@h§.x;
                           if(!_loc8_)
                           {
                              addr188:
                              _loc5_.y = this.§@h§.y;
                           }
                           §§push(§5t§);
                           if(_loc9_ || _loc3_)
                           {
                              §§push(§§pop() / this.§@h§.scale);
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
                              §§push(§]@§);
                              if(_loc9_)
                              {
                                 §§push(§§pop() / this.§@h§.scale);
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
                                       §§push(this.§@h§.x);
                                       if(_loc9_ || _loc2_)
                                       {
                                          §§push(§§pop() - _loc6_);
                                       }
                                       §§pop().left = §§pop();
                                    }
                                    §§push(_loc5_);
                                    §§push(this.§@h§.x);
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
                                    param1.§91§();
                                    param1.§''§(_loc2_);
                                    param1.§''§(_loc5_);
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
      
      public function §?'§(param1:§'H§) : void
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
            §§push(§,!!§.§;]§ * 0.5);
            if(!_loc7_)
            {
               §§push(_loc2_);
               if(_loc8_)
               {
                  addr42:
                  §§push(§§pop() / §§pop());
                  if(_loc8_)
                  {
                     §§push(§#;§.§`!2§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc7_ && this))
                  {
                     addr51:
                     var _loc3_:Number = §§pop();
                     §§push(param1.y);
                     if(_loc8_)
                     {
                        §§push(§,!!§.§3L§ * 0.5);
                        if(!_loc7_)
                        {
                           §§push(_loc2_);
                           if(!(_loc7_ && _loc2_))
                           {
                              addr91:
                              §§push(§§pop() / §§pop());
                              if(!(_loc7_ && this))
                              {
                                 §§push(§#;§.§`!2§);
                              }
                              §§push(§§pop() - §§pop());
                              if(_loc8_)
                              {
                                 addr95:
                                 var _loc4_:Number = §§pop();
                                 §§push(_loc3_);
                                 if(_loc8_)
                                 {
                                    §§push(§,!!§.§;]§ / _loc2_);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() * §#;§.§`!2§);
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
                                    §§push(§,!!§.§3L§ / _loc2_);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() * §#;§.§`!2§);
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
      
      protected function §>!3§(param1:§,A§, param2:Number) : void
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
                  §§push(§§pop() * this.§-p§);
               }
               _loc3_ = Number(§§pop() + §§pop());
               §§push(_loc3_);
               if(_loc4_ || param2)
               {
                  §§push(§&9§);
                  if(_loc4_ || param1)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!(_loc5_ && param2))
                        {
                           §§push(Number(§&9§));
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
         this.§8!6§(§7c§);
         if(_loc4_ || this)
         {
            addr133:
            this.mCurrentCameraSliderLocation = _loc3_;
         }
         else
         {
            addr128:
            this.§8!6§(§7c§);
            if(_loc4_)
            {
               §§goto(addr133);
            }
         }
      }
      
      private function §+9§(param1:Number) : void
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
                  §§push(§§pop() * this.§-p§);
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
                     §§push(-§&9§);
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
                        §§push(§§pop() >= §&9§);
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
                                                         §§push(this.§-p§);
                                                         if(_loc5_)
                                                         {
                                                            §§push(-§§pop());
                                                         }
                                                         §§pop().§-p§ = §§pop();
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
                                                   §§push(Number(§&9§));
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
      
      protected function §1`§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.mCurrentAction);
            if(!_loc3_)
            {
               §§push(§@j§);
               if(_loc2_ || _loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        this.§+9§(param1);
                        addr46:
                     }
                  }
                  else
                  {
                     §§push(this.mCurrentAction);
                     if(_loc2_ || param1)
                     {
                        §§push(§4J§);
                        if(_loc2_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc3_)
                              {
                                 this.§>!3§(this.§@h§,param1);
                              }
                              else
                              {
                                 addr128:
                                 this.§=6§ = true;
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
                                 §§push(§1!7§);
                                 if(!_loc3_)
                                 {
                                    addr90:
                                    if(§§pop() == §§pop())
                                    {
                                       §§push(this);
                                       §§push(this.§2!;§);
                                       §§push(param1);
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().§>!3§(§§pop(),§§pop());
                                       §§goto(addr143);
                                    }
                                    else
                                    {
                                       §§push(this.mCurrentAction);
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr124:
                                          §§push(§@M§);
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
                                             this.§`q§(param1);
                                          }
                                          §§goto(addr143);
                                       }
                                       addr143:
                                       return;
                                       §§push(§!p§);
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
      
      public function §^!&§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§&=§)
            {
               if(_loc2_)
               {
                  this.§[!=§ = this.§&=§.x;
               }
               this.§#!F§ = this.§&=§.y;
               §§push(§§findproperty(§=z§));
               §§push(§5t§);
               if(!_loc3_)
               {
                  §§push(this.§&=§.right);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - this.§&=§.left);
                  }
                  §§push(§§pop() / §§pop());
               }
               §§pop().§=z§ = §§pop();
               if(_loc2_)
               {
                  addr90:
                  this.§>P§();
               }
               this.§@o§();
               if(_loc2_ || this)
               {
                  this.§=I§();
               }
               return;
            }
            this.§!%§();
            if(_loc2_)
            {
               addr75:
               this.§1`§(param1);
               if(_loc2_ || _loc3_)
               {
                  this.§4u§(this.mCurrentCameraSliderLocation,param1);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr75);
      }
      
      private function §3a§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Number = this.§6!5§.scale + (this.§3!@§.scale - this.§6!5§.scale) * param1;
         var _loc4_:Number = this.§6!5§.x + (this.§3!@§.x - this.§6!5§.x) * param1;
         var _loc5_:Number = this.§6!5§.y + (this.§3!@§.y - this.§6!5§.y) * param1;
         if(!(_loc6_ && this))
         {
            §§push(this.§5-§);
            if(_loc7_)
            {
               §§push(this.§5-§);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop().x - (this.§5-§.x - _loc4_) * param2);
                  if(_loc7_)
                  {
                     §§pop().x = §§pop();
                     if(!(_loc6_ && param1))
                     {
                        §§push(this.§5-§);
                        if(_loc7_)
                        {
                           §§push(this.§5-§);
                           if(_loc7_ || param2)
                           {
                              addr124:
                              §§push(§§pop().y - (this.§5-§.y - _loc5_) * param2);
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
                              §§push(this.§5-§);
                              §§push(this.§5-§);
                           }
                           return;
                           §§push(§§pop().scale - (this.§5-§.scale - _loc3_) * param2);
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
      
      protected function §"6§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         §§push(this.§^3§);
         if(!(_loc5_ && _loc3_))
         {
            §§push(0);
            if(_loc4_ || this)
            {
               if(§§pop() != §§pop())
               {
                  if(!(_loc5_ && param2))
                  {
                     if(!this.§=6§)
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
                              §§push(§§pop() / §&9§);
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
               this.§3a§(_loc3_,param2);
               this.§[!=§ = this.§5-§.x;
               if(!_loc5_)
               {
                  addr101:
                  this.§#!F§ = this.§5-§.y;
               }
               §=z§ = this.§5-§.scale;
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr69);
      }
      
      public function §4u§(param1:Number, param2:Number) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1170
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §"]§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§-c§ = param1;
            if(_loc3_)
            {
               this.§#!E§ = param2;
            }
         }
      }
      
      private function §8!"§(param1:§0!§, param2:§,A§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         if(_loc4_)
         {
            §§push(param1);
            §§push(§4a§);
            if(_loc4_)
            {
               §§push(param2.scale);
               if(_loc4_ || _loc3_)
               {
                  §§push(§4a§);
                  if(_loc4_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc5_)
                     {
                        §§push(this.§1Z§);
                        if(!_loc5_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc4_ || _loc3_)
                           {
                              addr53:
                              §§push(§§pop() * §`m§.§+K§());
                           }
                        }
                        §§goto(addr53);
                     }
                     addr55:
                     §§pop().scale = §§pop() + §§pop();
                     if(!_loc5_)
                     {
                        addr58:
                        §§push(§5t§);
                        if(!_loc5_)
                        {
                           §§push(§§pop() / param1.scale);
                           if(_loc4_ || this)
                           {
                              §§push(this.§>b§);
                              if(_loc4_ || this)
                              {
                                 §§push(this.§@!'§);
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
                                             §§push(§5t§);
                                             if(_loc4_ || this)
                                             {
                                                §§push(this.§>b§);
                                                if(!_loc5_)
                                                {
                                                   addr117:
                                                   §§push(§§pop() - this.§@!'§);
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
      
      private function §&Q§(param1:§0!§, param2:§,A§) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(this.§8!"§(param1,param2));
         if(!(_loc9_ && param1))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc9_)
         {
            param1.y = param2.y;
         }
         var _loc4_:Number = param1.y + §]@§ * 0.5 / param1.scale;
         §§push(§]@§);
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
                        §§push(param1.x - §5t§ * 0.5 / param1.scale);
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
                     §§push(this.§@!'§);
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
                                    if(param1.§<M§)
                                    {
                                       if(_loc8_ || this)
                                       {
                                          param1.x += this.§@!'§ - _loc6_;
                                       }
                                    }
                                 }
                                 var _loc7_:Number;
                                 §§push((_loc7_ = param1.x + §5t§ * 0.5 / param1.scale) > this.§>b§);
                                 if(!(_loc9_ && param2))
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc9_ && param2))
                                       {
                                          §§pop();
                                          if(_loc8_)
                                          {
                                             §§push(!param1.§<M§);
                                             if(!_loc9_)
                                             {
                                                addr229:
                                                if(§§pop())
                                                {
                                                   if(_loc8_ || this)
                                                   {
                                                      addr237:
                                                      param1.x += this.§>b§ - _loc7_;
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
      
      private function §@i§(param1:§0!§, param2:§,A§) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.scale - §4a§);
         if(!(_loc3_ && this))
         {
            §§push(§`m§.§+K§());
            if(!_loc3_)
            {
               §§push(param2.scale);
               if(!(_loc3_ && param2))
               {
                  §§push(§§pop() - §4a§);
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() / §§pop());
         }
         return §§pop();
      }
      
      protected function §!%§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§&Q§(this.§6!5§,this.§2!;§);
         }
         §§push(this.§@i§(this.§6!5§,this.§2!;§));
         if(!(_loc3_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc4_)
         {
            this.§&Q§(this.§3!@§,this.§@h§);
         }
         §§push(this.§@i§(this.§3!@§,this.§@h§));
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            this.§1Z§ = Math.min(_loc1_,_loc2_);
         }
      }
      
      public function §>P§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = NaN;
         if(_loc3_ || _loc3_)
         {
            if(this.§7C§.sprite)
            {
               if(!_loc4_)
               {
                  §§push(§,!!§.§#9§());
                  if(_loc3_)
                  {
                     §§push(§§pop() / §,!!§.§0!3§);
                     if(!_loc4_)
                     {
                        §§push(§,!!§.§3L§);
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
                              §§push(§§findproperty(§0!6§));
                              §§push(this.§7C§.sprite);
                              §§push(§#;§.§9!7§);
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(1 - §`m§.§;`§);
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
                                    §§pop().§0!6§ = _loc2_;
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr115:
                                       §§push(§§findproperty(§15§));
                                       §§push(this.§7C§.sprite);
                                       §§push(_loc1_);
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          §§push(§#;§.§<!'§);
                                          if(!_loc4_)
                                          {
                                             §§push(1 - §`m§.§;`§);
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc4_)
                                                {
                                                   addr157:
                                                   §§push(§§pop() * §;C§.§8!2§);
                                                   if(!_loc3_)
                                                   {
                                                   }
                                                   §§goto(addr162);
                                                }
                                                addr161:
                                                addr162:
                                                _loc2_ = §§pop();
                                                §§pop().y = §§pop();
                                                §§pop().§15§ = _loc2_;
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
      
      public function §=I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§7C§);
            if(!(_loc1_ && this))
            {
               §§push(§§pop().sprite);
               if(_loc2_ || this)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§push(this.§7C§);
                        if(_loc2_ || this)
                        {
                           addr68:
                           §§push(§§pop().sprite);
                           if(_loc2_ || this)
                           {
                              §§push(§;`§);
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
            §§push(this.§7C§.sprite);
            §§push(§;`§);
         }
      }
      
      public function §@o§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§[!=§);
         if(_loc4_ || _loc1_)
         {
            §§push(§#;§.§`!2§);
            if(!_loc3_)
            {
               §§push(§§pop() / §§pop());
               if(_loc4_ || _loc2_)
               {
                  addr40:
                  §§push(§§pop() + this.§-c§);
                  if(_loc4_)
                  {
                     addr43:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc1_:* = §§pop();
               §§push(this.§#!F§);
               if(_loc4_ || this)
               {
                  §§push(§#;§.§`!2§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc3_)
                     {
                        addr63:
                        §§push(§§pop() + this.§#!E§);
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
                           §§push(§#;§.§9!7§);
                           if(!(_loc3_ && this))
                           {
                              §§push(§§pop() / 2);
                              if(!(_loc3_ && this))
                              {
                                 §§push(§,!!§.§0!3§);
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr112:
                                    §§push(§§pop() * §§pop());
                                    if(_loc4_)
                                    {
                                       §§push(§,!!§.§2J§);
                                    }
                                    §§pop().§6`§ = §§pop() - §§pop();
                                    if(_loc4_)
                                    {
                                       §§push(this);
                                       §§push(_loc2_);
                                       if(!_loc3_)
                                       {
                                          §§push(§#;§.§<!'§);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§push(§§pop() / 2);
                                             if(_loc4_)
                                             {
                                                addr154:
                                                §§push(§§pop() - §§pop());
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§push(§;C§.§4!F§);
                                                }
                                                §§pop().§,!E§ = §§pop();
                                                if(!(_loc3_ && this))
                                                {
                                                   addr162:
                                                   §§push(this.§7C§.background);
                                                   if(_loc4_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr171:
                                                         this.§7C§.background.§^-§(this.§6`§,this.§,!E§);
                                                         if(!_loc4_)
                                                         {
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      §§push(this.§7C§.objects);
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               addr196:
                                                               §§push(this.§7C§);
                                                               if(!_loc3_)
                                                               {
                                                                  addr201:
                                                                  §§pop().objects.§^-§(this.§6`§,this.§,!E§);
                                                                  addr206:
                                                                  §§push(this.§7C§);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(§§pop().§-K§);
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§push(this.§7C§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr219:
                                                                              §§pop().§-K§.§^-§(this.§6`§,this.§,!E§,§;`§);
                                                                           }
                                                                           §§pop().slingshot.§^-§(this.§6`§,this.§,!E§);
                                                                           §§goto(addr244);
                                                                        }
                                                                        §§push(this.§7C§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(§§pop().slingshot);
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(this.§7C§);
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
                                                                  §§push(this.§7C§.particles);
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                     }
                                                                     §§goto(addr288);
                                                                  }
                                                                  §§pop().§^-§(this.§6`§,this.§,!E§);
                                                               }
                                                               §§goto(addr288);
                                                            }
                                                            addr288:
                                                            if(_loc4_)
                                                            {
                                                               addr280:
                                                               §§push(this.§7C§.particles);
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
      
      protected function §^!>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§8!6§(§!p§);
         }
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         this.§7]§ = -1;
         if(!_loc5_)
         {
            this.§^!>§();
            §§push(this);
            §§push(this);
            §§push(this.§2R§ = param1);
            if(_loc4_ || _loc3_)
            {
               var _loc3_:*;
               §§push(_loc3_ = §§pop());
            }
            §§pop().§'!>§ = §§pop();
            §§pop().§+"§ = _loc3_;
            if(_loc4_ || param2)
            {
               §§push(this);
               §§push(this);
               §§push(this.§-!>§ = param2);
               if(!_loc5_)
               {
                  §§push(_loc3_ = §§pop());
               }
               §§pop().§6C§ = §§pop();
               §§pop().§>s§ = _loc3_;
               addr69:
               this.§!!D§ = 0;
               if(!(_loc5_ && param1))
               {
                  addr89:
                  §§push(this.§5-§);
                  if(_loc4_)
                  {
                     §§push(this.§[!=§);
                     if(_loc4_)
                     {
                        §§pop().x = §§pop();
                        §§push(this.§5-§);
                        if(_loc4_ || param2)
                        {
                           §§push(this.§#!F§);
                           if(_loc4_)
                           {
                              addr111:
                              §§pop().y = §§pop();
                              addr114:
                              §§push(this.§5-§);
                              §§push(§=z§);
                           }
                           §§pop().scale = §§pop();
                           this.§#! § = §=z§;
                           addr119:
                           if(Math.abs(this.§3!@§.x - this.§6!5§.x) > 0.001)
                           {
                              §§push(this);
                              §§push(this.§[!=§);
                              if(_loc4_)
                              {
                                 §§push(§§pop() - this.§6!5§.x);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() / (this.§3!@§.x - this.§6!5§.x));
                                    if(!_loc4_)
                                    {
                                    }
                                    §§goto(addr163);
                                 }
                                 §§push(§§pop() * §&9§);
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
      
      public function §`q§(param1:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = Number(this.mCurrentCameraSliderLocation);
         if(!_loc5_)
         {
            §§push(this);
            §§push(this.§!!D§);
            if(_loc4_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§!!D§ = §§pop();
         }
         §§push(this.§+"§);
         if(_loc4_)
         {
            §§push(§§pop() - this.§'!>§);
            if(!_loc5_)
            {
               addr39:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && param1))
            {
               §§push(this.§^3§);
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
                           §§push(§#;§.§`!2§);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc4_)
                              {
                                 §§push(§;`§);
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(§§pop() / §§pop());
                                    §§push(this.§^3§);
                                    if(!_loc5_)
                                    {
                                       §§push(Number(§§pop() - §§pop() / §§pop() * §&9§));
                                       if(!(_loc5_ && this))
                                       {
                                          _loc2_ = §§pop();
                                          this.§=6§ = false;
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
                                                         this.§=6§ = true;
                                                         if(_loc4_ || param1)
                                                         {
                                                            addr159:
                                                            §§push(_loc2_);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§&9§);
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
                                                                           §§push(§§pop() + (§&9§ - _loc2_) * 0.3);
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr195:
                                                                              _loc2_ = Number(§§pop());
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 addr203:
                                                                                 this.§=6§ = true;
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
                     this.§'!>§ = this.§+"§;
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
      
      protected function §>!0§() : Boolean
      {
         return this.mCurrentAction == §!p§;
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
                  this.§+"§ = param1;
                  if(!(_loc4_ && this))
                  {
                     this.§>s§ = param2;
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
               §§push(§!p§);
               if(_loc5_)
               {
                  if(§§pop() == §§pop())
                  {
                     this.§8!6§(§7c§);
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
                                    this.§+"§ = param1;
                                    if(!_loc4_)
                                    {
                                       addr63:
                                       _loc3_ = Math.abs(this.§+"§ - this.§2R§);
                                       if(_loc5_ || param2)
                                       {
                                          §§push(this.§!!D§);
                                          if(!(_loc4_ && this))
                                          {
                                             §§push(§>!=§);
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
                                                               §§push(§>9§);
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
                                                                                 §§push(§@!&§);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr148:
                                                                                    §§push(§§pop() * this.§!!D§);
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
                                                                                                if(this.§+"§ < this.§2R§)
                                                                                                {
                                                                                                   addr191:
                                                                                                   this.§8!6§(§4J§);
                                                                                                   addr200:
                                                                                                   §§push(this);
                                                                                                   §§push(_loc3_);
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop() / this.§!!D§);
                                                                                                      if(_loc5_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop() * 10);
                                                                                                      }
                                                                                                   }
                                                                                                   §§pop().§-p§ = §§pop();
                                                                                                   this.§=6§ = false;
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
                                                                                                                  this.§=6§ = true;
                                                                                                                  addr250:
                                                                                                                  §§push(this.mCurrentCameraSliderLocation);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr273:
                                                                                                                  this.§?! §();
                                                                                                                  if(_loc5_ || this)
                                                                                                                  {
                                                                                                                     addr282:
                                                                                                                     this.§-p§ = §&9§ / (§&9§ / 500);
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        addr291:
                                                                                                                        this.§=6§ = true;
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
                                                                                                               this.§=6§ = true;
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
                                                                                                      §§push(§&9§);
                                                                                                   }
                                                                                                   §§goto(addr250);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   this.§8!6§(§1!7§);
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
                                                                                             if(this.§!!D§ < §%!6§)
                                                                                             {
                                                                                                if(!(_loc4_ && param2))
                                                                                                {
                                                                                                   §§goto(addr273);
                                                                                                }
                                                                                                §§goto(addr291);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                this.§`q§(0);
                                                                                                this.§ !#§(0);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr320:
                                                                                                   this.§-p§ = §&9§ / (§&9§ / 500);
                                                                                                }
                                                                                                this.§=6§ = true;
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
      
      public function §?! §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.mCurrentAction);
            if(!(_loc1_ && this))
            {
               §§push(§4J§);
               if(!_loc1_)
               {
                  if(§§pop() == §§pop())
                  {
                     this.§8!6§(§1!7§);
                     §§goto(addr107);
                  }
                  else
                  {
                     §§push(this.mCurrentAction);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(§1!7§);
                        if(!_loc1_)
                        {
                           addr58:
                           if(§§pop() == §§pop())
                           {
                              this.§8!6§(§4J§);
                              §§goto(addr107);
                           }
                           else
                           {
                              §§push(this.mCurrentCameraSliderLocation);
                              if(_loc2_ || this)
                              {
                                 addr82:
                                 §§push(§&9§);
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
                                                this.§8!6§(§1!7§);
                                             }
                                             else
                                             {
                                                addr104:
                                                this.§8!6§(§4J§);
                                             }
                                             §§goto(addr107);
                                          }
                                          else
                                          {
                                             addr102:
                                             §§push(this.mCurrentCameraSliderLocation);
                                             §§push(§&9§ / 2);
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
      
      public function § !#§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§7]§ = param1;
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr53);
            }
            §§goto(addr66);
         }
         addr53:
         if(this.mCurrentCameraSliderLocation < §&9§ / 2)
         {
            if(!(_loc3_ && _loc3_))
            {
               addr66:
               this.§8!6§(§1!7§);
               if(_loc2_ || _loc3_)
               {
               }
            }
         }
         else
         {
            this.§8!6§(§4J§);
         }
      }
      
      public function goToBirdView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§8!6§(§1!7§);
         }
      }
      
      public function goToCastleView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§8!6§(§4J§);
         }
      }
      
      public function §8!6§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§5-§);
            if(_loc2_ || _loc3_)
            {
               §§push(this.§[!=§);
               if(_loc2_ || param1)
               {
                  §§pop().x = §§pop();
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this.§5-§);
                     if(!(_loc3_ && this))
                     {
                        addr73:
                        §§push(this.§#!F§);
                        if(!_loc3_)
                        {
                           §§pop().y = §§pop();
                           §§goto(addr96);
                        }
                        addr88:
                        §§pop().scale = §§pop();
                        if(!_loc3_)
                        {
                           this.§#! § = §=z§;
                           if(!_loc2_)
                           {
                           }
                        }
                        §§goto(addr96);
                     }
                     §§push(§=z§);
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
            §§push(this.§5-§);
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
               §§push(§&9§);
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
                  if(this.mCurrentAction == §4J§)
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
      
      public function §3F§(param1:Boolean = false) : Boolean
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
               if(this.mCurrentAction == §1!7§)
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
      
      public function §`!,§(param1:§'H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&=§ = param1;
            if(this.§&=§ != null)
            {
               if(_loc2_)
               {
                  this.§6!9§ = new §'H§();
                  if(_loc2_)
                  {
                     §§push(this.§6!9§);
                     if(!_loc3_)
                     {
                        §§push(this.§[!=§);
                        if(!(_loc3_ && param1))
                        {
                           §§pop().x = §§pop();
                           if(!(_loc3_ && param1))
                           {
                              addr64:
                              §§push(this.§6!9§);
                              if(!_loc3_)
                              {
                                 §§push(this.§#!F§);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr77:
                                    §§pop().y = §§pop();
                                    addr80:
                                    §§push(this.§6!9§);
                                    §§push(§=z§);
                                 }
                                 §§pop().scale = §§pop();
                                 if(_loc3_ && _loc2_)
                                 {
                                    addr117:
                                    §=z§ = this.§6!9§.scale;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr129:
                                       this.§6!9§ = null;
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
               this.§[!=§ = this.§6!9§.x;
               if(!(_loc3_ && _loc3_))
               {
                  this.§#!F§ = this.§6!9§.y;
                  §§goto(addr117);
               }
            }
            §§goto(addr129);
         }
         §§goto(addr64);
      }
      
      protected function §#!,§() : void
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
         §§push(this.§1Z§);
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
                              _loc3_ = Number(Math.max(this.§4#§,Math.min(this.§3Z§,_loc3_)));
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
            if(_loc3_ != this.§1Z§)
            {
               addr123:
               this.§1Z§ = _loc3_;
               this.§#!,§();
            }
            return;
         }
         §§goto(addr119);
      }
      
      public function §8!0§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§=G§);
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§4#§);
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
            §§push(this.§3Z§);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() - this.§4#§);
            }
         }
         return §§pop();
      }
      
      public function §1!&§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(Math.min(Math.max(param1,0),1) * (this.§3Z§ - this.§4#§));
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + this.§4#§);
            }
            §§pop().§=G§ = §§pop();
         }
      }
      
      public function §<>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§1Z§ = Math.max(this.§1Z§ - 0.5,0.5);
         }
      }
      
      public function §>N§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = "";
         §§push(_loc1_);
         §§push(" mManualScale: ");
         §§push(this.§1Z§);
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
                        §§push(this.§[!=§);
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
                                          §§push(§§pop() + (§§pop() + this.§#!F§));
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
                                                      §§push(this.§1Z§);
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
                                                                  §§push(§§pop() + ("\n mYcenterB2target: " + this.§1Z§));
                                                                  if(_loc3_)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        §§push(_loc1_);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(" mXcenterB2previous: " + this.§1Z§);
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
                                                                                       _loc1_ = §§pop() + (" mYcenterB2previous: " + this.§1Z§);
                                                                                       if(_loc3_ || this)
                                                                                       {
                                                                                          §§push(_loc1_);
                                                                                          §§push(" mTimeNeededForCameraMovement: ");
                                                                                          if(!(_loc2_ && this))
                                                                                          {
                                                                                             addr208:
                                                                                             _loc1_ = §§pop() + (§§pop() + this.§1Z§);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                §§push(_loc1_);
                                                                                                §§push(" mTimeUsedForCameraMovement: ");
                                                                                                §§push(this.§1Z§);
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
                                                                                                            _loc1_ = §§pop() + (§§pop() + this.§1Z§);
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr252:
                                                                                                               §§push(_loc1_);
                                                                                                               §§push(" mTimeUsedForScaleMovement: ");
                                                                                                               §§push(this.§1Z§);
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
                                                                                                                              §§push(§§pop() + this.§1Z§);
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
                                                                                                                                       §§push(§§pop() + (§§pop() + this.§1Z§));
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          addr312:
                                                                                                                                          _loc1_ = §§pop();
                                                                                                                                          §§push(_loc1_);
                                                                                                                                          §§push(" mCastleCameraX: ");
                                                                                                                                          §§push(this.§1Z§);
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
                                                                                                                                                      §§push(§§pop() + this.§1Z§);
                                                                                                                                                      if(!_loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr344:
                                                                                                                                                         _loc1_ = §§pop() + §§pop();
                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(" mCastleCameraScale: ");
                                                                                                                                                            §§push(this.§1Z§);
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
                                                                                                                                                                           §§push(§§pop() + (§§pop() + this.§1Z§));
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
                                                                                                                                                                                    §§push(this.§1Z§);
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
                                                                                                                                                                                             §§push(this.§1Z§);
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
                                                                                                                                                                                                         §§push(_loc1_ + ("\n mScreenLeftScroll: " + this.§1Z§));
                                                                                                                                                                                                         if(_loc3_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr468:
                                                                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                                                                            if(!_loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr478:
                                                                                                                                                                                                               _loc1_ = §§pop() + (" mScreenTopScroll: " + this.§1Z§);
                                                                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                                                                               §§push(" mDragging: ");
                                                                                                                                                                                                               if(_loc3_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§1Z§);
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
                                                                                                                                                                                                                           _loc1_ = §§pop() + (§§pop() + this.§1Z§);
                                                                                                                                                                                                                           §§push(_loc1_);
                                                                                                                                                                                                                           if(_loc3_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr524:
                                                                                                                                                                                                                              §§push(" mDraggingPointPreviousY: " + this.§1Z§);
                                                                                                                                                                                                                              if(_loc3_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr533:
                                                                                                                                                                                                                                 _loc1_ = §§pop() + §§pop();
                                                                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc1_);
                                                                                                                                                                                                                                    §§push("\n mDraggingPointCurrentX: ");
                                                                                                                                                                                                                                    §§push(this.§1Z§);
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
                                                                                                                                                                                                                                                   §§push(§§pop() + (" mDraggingPointCurrentY: " + this.§1Z§));
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
                                                                                                                                                                                                                                                               §§push(this.§1Z§);
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
                                                                                                                                                                                                                                                                           §§push(§§pop() + this.§1Z§);
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
                                                                                                                                                                                                                                                                                          §§push(this.§1Z§);
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
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + ("\n mCameraBorderLeft: " + this.§1Z§));
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
                                                                                                                                                                                                                                                                                                                  §§push(this.§1Z§);
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
                                                                                                                                                                                                                                                                                                                                 §§push(this.§1Z§);
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
                                                                                                                                                                                                                                                                                                                                          §§push(" mPigsAreOnRight: " + this.§1Z§);
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
                                                                                                                                                                                                                                                                                                            §§push(this.§1Z§);
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
