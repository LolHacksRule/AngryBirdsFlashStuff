package §!!=§
{
   import §+!c§.§;!=§;
   import §4!<§.§'!S§;
   import §4!<§.§>">§;
   import §9!n§.§0"T§;
   import §9!n§.§1S§;
   import §@!"§.§?l§;
   import §`!G§.§[!8§;
   
   public class §"l§
   {
      
      public static const §,!k§:Number = 1.25;
      
      public static const §[!M§:Number = 0.15;
      
      public static const §8! §:Number;
      
      public static const §,",§:Number;
      
      public static const §[!S§:Number = 0.1;
      
      public static const §;"1§:int = 1500;
      
      public static const §4o§:int = 10;
      
      public static const §>d§:int = 15;
      
      public static const §9!c§:int = 300;
      
      public static const §``§:int = 1000;
      
      public static const §-5§:int = 10000;
      
      public static const §6!7§:int = 200.0;
      
      public static const § !c§:int = 0;
      
      public static const §',§:int = 1;
      
      public static const §9!E§:int = 2;
      
      public static const §<!N§:int = 3;
      
      public static const § "2§:int = 4;
      
      public static const §true§:int = 5;
      
      public static const §6"[§:String = "CASTLE";
      
      public static const §=!M§:String = "SLINGSHOT";
      
      protected static var §<"E§:Number;
      
      public static var §2!N§:Number;
      
      public static var §-"T§:Number;
      
      public static const §?!,§:Number = 2000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §,!k§ = 1.25;
            while(true)
            {
               §[!M§ = 0.15;
               while(true)
               {
                  §8! § = §?l§.§7!H§ * §'!S§.§2"<§;
                  loop2:
                  while(true)
                  {
                     §,",§ = §?l§.§<"P§ * §'!S§.§2"<§;
                     addr243:
                     while(true)
                     {
                        §[!S§ = 0.1;
                        continue loop2;
                     }
                  }
                  if(!(_loc1_ || §"l§))
                  {
                     continue;
                  }
                  §6"[§ = "CASTLE";
                  §§goto(addr55);
               }
            }
         }
         §§goto(addr166);
      }
      
      private var §!!7§:Number = 1.0;
      
      private var §;!<§:Number = 0.2;
      
      protected var §4`§:Number;
      
      protected var §-"D§:Number;
      
      protected var §,5§:Number;
      
      public var mLevelMain:§'!S§;
      
      public var §,"I§:Number;
      
      public var §,!#§:Number;
      
      protected var §8">§:§5!;§;
      
      protected var §0m§:§5!;§;
      
      public var §8@§:Number;
      
      public var §@";§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §`"E§:Number;
      
      public var §^z§:Number;
      
      public var §8"D§:Number;
      
      public var §&!=§:Number;
      
      private var §4!p§:Number;
      
      private var §+!g§:§@&§;
      
      private var §%!z§:§@&§;
      
      protected var §&&§:Number = 0;
      
      protected var §=B§:Number = 0;
      
      protected var §""3§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var § "R§:Number = 0;
      
      public var §'"C§:Boolean = true;
      
      public var §-]§:Number = 0;
      
      public var §[t§:Number = 0;
      
      public var §`7§:Number = 0;
      
      public var §["B§:Number = 0;
      
      public var §0!#§:Number = 0;
      
      public var §6!D§:Number = 0;
      
      public var §#&§:Number = 0;
      
      public var §!!8§:Number = 0;
      
      public var § "'§:Number = 0;
      
      private var §+l§:§@&§;
      
      public var §!"6§:Number = 0;
      
      private var §#"§:Number = 0;
      
      private var §[P§:Number = 0;
      
      private var §`"C§:§1S§ = null;
      
      private var §'f§:§1S§ = null;
      
      public function §"l§(param1:§'!S§, param2:§0"T§, param3:Number = 1.0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§+l§ = new §@&§(0,0,1,false);
         }
         loop0:
         while(true)
         {
            super();
            while(true)
            {
               this.§-"D§ = 0;
               continue loop0;
               addr41:
               if(!(_loc4_ && this))
               {
                  return;
               }
            }
         }
      }
      
      private static function §0N§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§?l§.§+!9§);
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop() / §?l§.§0!S§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || _loc1_)
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               if(§§pop() > 1)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(1);
                     if(_loc3_ || _loc1_)
                     {
                        §§goto(addr90);
                     }
                  }
                  else
                  {
                     addr91:
                     return 1;
                  }
                  return §§pop();
               }
               §§goto(addr91);
            }
            addr90:
            return §§pop() / Math.pow(_loc1_,0.7);
         }
         §§goto(addr91);
      }
      
      public static function get §@!>§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§<"E§);
         if(!_loc1_)
         {
            return §§pop() * §0N§();
         }
      }
      
      public function get §=!r§() : Number
      {
         return this.§4`§;
      }
      
      public function set §=!r§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§4`§ = param1;
         }
      }
      
      public function get §=#§() : Number
      {
         return this.§4!p§;
      }
      
      public function §90§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§8! §);
         if(!(_loc1_ && this))
         {
            §§push(this.§^z§);
            if(!(_loc1_ && this))
            {
               §§push(§§pop() - this.§`"E§);
            }
            return §§pop() / §§pop();
         }
      }
      
      public function get §["C§() : Number
      {
         return this.§!!7§;
      }
      
      public function get §"!?§() : Number
      {
         return this.§;!<§;
      }
      
      public function §#"8§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4`§ = param1;
         }
         do
         {
            this.§!?§();
            do
            {
               this.§1!C§(this.mCurrentCameraSliderLocation,1);
            }
            while(!(_loc3_ || this));
            
         }
         while(_loc2_);
         
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.mCurrentAction == §true§)
            {
               if(_loc2_)
               {
                  return;
               }
               addr102:
               while(true)
               {
               }
               addr102:
            }
            while(true)
            {
               this.goToCastleView();
               §§goto(addr102);
            }
         }
         loop2:
         while(true)
         {
            this.§-]§ = 2000;
            do
            {
               this.§@"U§();
               continue loop2;
            }
            while(!(_loc2_ || _loc2_));
            
            return;
         }
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mCurrentCameraSliderLocation = 0;
            while(true)
            {
               this.§-"D§ = this.§0m§.x;
               loop1:
               for(; !_loc2_; if(_loc2_ && param1)
               {
                  continue;
               },§§push(this),§§push(§-5§ / 160000),if(_loc3_)
               {
                  §§push(§§pop() * param1);
               },§§pop().§ "R§ = §§pop(),loop4:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.§5"@§(§true§);
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop4;
                  }
                  return;
               },§§goto(addr58))
               {
                  this.§,5§ = this.§0m§.y;
                  while(true)
                  {
                     this.§'"C§ = false;
                     addr58:
                     while(!(_loc2_ && _loc3_))
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function §@"S§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this);
            §§push(this.§0m§.x);
            if(!(_loc2_ && this))
            {
               §§push(§8! §);
               if(_loc3_)
               {
                  §§push(§§pop() / this.§0m§.scale);
                  if(_loc3_)
                  {
                     §§push(§§pop() / 2);
                  }
               }
               §§push(§§pop() - §§pop());
            }
            §§pop().§`"E§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§8">§.x);
               if(_loc3_ || this)
               {
                  §§push(§8! §);
                  if(!_loc2_)
                  {
                     addr106:
                     §§push(§§pop() / this.§8">§.scale);
                     if(!_loc2_)
                     {
                        addr93:
                        §§push(§§pop() / 2);
                     }
                     §§pop().§^z§ = §§pop() + §§pop();
                     continue;
                  }
                  §§goto(addr93);
               }
               §§goto(addr106);
            }
         }
         while(true)
         {
            §§goto(addr47);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.mLevelMain = null;
         }
      }
      
      public function §+t§(param1:§0"T§) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc3_:§1S§ = null;
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
         while(_loc2_ < param1.§ H§)
         {
            _loc3_ = param1.§8!D§(_loc2_);
            if(!(_loc15_ && _loc3_))
            {
               §§push(_loc3_.id);
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  addr546:
                  while(true)
                  {
                     §§push(§§pop());
                     addr547:
                     loop3:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        if(!_loc15_)
                        {
                           §§push(§§pop().toUpperCase());
                        }
                        addr552:
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
                                       loop9:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§pop();
                                                addr542:
                                                while(true)
                                                {
                                                   §§push(_loc3_.scale);
                                                   addr502:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().toString() == "null");
                                                      addr505:
                                                      while(_loc14_)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                      continue loop10;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc15_)
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   loop16:
                                                   for(; _loc14_ || _loc2_; while(_loc14_ || param1)
                                                   {
                                                      §§goto(addr484);
                                                      §§push(!§§pop());
                                                   })
                                                   {
                                                      §§pop();
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.scale);
                                                         addr471:
                                                         while(!_loc15_)
                                                         {
                                                            §§push(§§pop().toString() == "0");
                                                            continue loop16;
                                                         }
                                                         continue loop6;
                                                         addr136:
                                                         if(!(_loc14_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         loop59:
                                                         while(true)
                                                         {
                                                            loop54:
                                                            while(true)
                                                            {
                                                               _loc2_++;
                                                               if(!(_loc15_ && _loc2_))
                                                               {
                                                                  if(_loc14_)
                                                                  {
                                                                     if(_loc14_ || _loc2_)
                                                                     {
                                                                        if(!_loc15_)
                                                                        {
                                                                           if(!(_loc15_ && _loc3_))
                                                                           {
                                                                              addr84:
                                                                              if(_loc14_ || param1)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop59;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_.y);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr407:
                                                                                    addr368:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc10_ = §§pop();
                                                                                    }
                                                                                    while(_loc14_ || _loc2_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr376:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc13_ = §§pop();
                                                                                             addr377:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                continue loop1;
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr84);
                                                                              }
                                                                              addr427:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§,",§);
                                                                              loop42:
                                                                              while(!_loc15_)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 loop43:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    addr384:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       addr385:
                                                                                       loop45:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                          if(!(_loc15_ && this))
                                                                                          {
                                                                                             addr393:
                                                                                             if(_loc14_ || param1)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop46:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc11_ = §§pop();
                                                                                                   addr402:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§8! §);
                                                                                                      if(!(_loc15_ && this))
                                                                                                      {
                                                                                                         if(!(_loc15_ && param1))
                                                                                                         {
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(_loc6_);
                                                                                                            if(_loc14_ || param1)
                                                                                                            {
                                                                                                               continue loop43;
                                                                                                            }
                                                                                                            addr324:
                                                                                                            addr324:
                                                                                                            §§push(§§pop() < §§pop());
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            addr484:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc14_ || _loc3_)
                                                                                                               {
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§8!#§(_loc3_);
                                                                                                                           addr498:
                                                                                                                           addr129:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           if(_loc15_ && _loc2_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr136);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.left);
                                                                                                                        addr465:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr466:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc5_ = §§pop();
                                                                                                                              addr467:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.right);
                                                                                                                                 break loop45;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr498);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr505);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         §§goto(addr466);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr345:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               continue loop46;
                                                                                                            }
                                                                                                            if(_loc14_ || this)
                                                                                                            {
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr375);
                                                                                                            }
                                                                                                            §§goto(addr407);
                                                                                                         }
                                                                                                         while(!(_loc15_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               _loc9_ = §§pop();
                                                                                                               §§goto(addr427);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr465);
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            loop30:
                                                                                                            while(!(_loc15_ && param1))
                                                                                                            {
                                                                                                               §§push(_loc3_.top);
                                                                                                               loop31:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop32:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     addr448:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.bottom);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr432:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              addr433:
                                                                                                                              while(!_loc15_)
                                                                                                                              {
                                                                                                                                 if(_loc14_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_.x);
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          continue loop32;
                                                                                                                                       }
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    §§goto(addr417);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr498);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop30;
                                                                                                                           }
                                                                                                                           addr298:
                                                                                                                           if(_loc15_ && param1)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              _loc12_ = §§pop();
                                                                                                                              if(!(_loc15_ && _loc2_))
                                                                                                                              {
                                                                                                                                 continue loop31;
                                                                                                                              }
                                                                                                                              addr340:
                                                                                                                              while(_loc14_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr345);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(!(_loc15_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§goto(addr368);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr360:
                                                                                                                                 }
                                                                                                                                 §§goto(addr376);
                                                                                                                              }
                                                                                                                              continue loop42;
                                                                                                                           }
                                                                                                                           §§goto(addr324);
                                                                                                                           §§goto(addr465);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         addr417:
                                                                                                         addr345:
                                                                                                         addr453:
                                                                                                      }
                                                                                                      §§goto(addr498);
                                                                                                   }
                                                                                                   §§goto(addr502);
                                                                                                }
                                                                                                addr401:
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr401);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr453);
                                                                                          §§goto(addr393);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr471);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§0m§ = new §5!;§(_loc9_,_loc10_,_loc13_,true);
                                                                              addr214:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       this.§%!z§ = new §@&§(_loc9_,_loc10_,_loc13_,true);
                                                                                       addr190:
                                                                                       while(!_loc15_)
                                                                                       {
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             continue loop54;
                                                                                          }
                                                                                          §§goto(addr433);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc12_);
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             §§goto(addr340);
                                                                                          }
                                                                                          §§goto(addr376);
                                                                                       }
                                                                                       addr190:
                                                                                       addr337:
                                                                                    }
                                                                                    §§goto(addr402);
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr206:
                                                                        }
                                                                        §§goto(addr377);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§+!g§ = new §@&§(_loc9_,_loc10_,_loc13_,false);
                                                                           addr120:
                                                                           while(true)
                                                                           {
                                                                              if(_loc14_)
                                                                              {
                                                                                 if(_loc14_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr129);
                                                                                 }
                                                                                 §§goto(addr448);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr190);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr180:
                                                                     }
                                                                     §§goto(addr190);
                                                                  }
                                                                  §§goto(addr120);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc15_)
                                                                     {
                                                                        if(!_loc15_)
                                                                        {
                                                                           if(_loc15_ && this)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop54;
                                                                        }
                                                                        §§goto(addr467);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc14_)
                                                                           {
                                                                              this.§8">§ = new §5!;§(_loc9_,_loc10_,_loc13_,false);
                                                                              §§goto(addr180);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr214);
                                                                           }
                                                                        }
                                                                        addr170:
                                                                     }
                                                                     §§goto(addr377);
                                                                     continue loop54;
                                                                  }
                                                                  §§goto(addr542);
                                                                  addr99:
                                                               }
                                                               §§goto(addr214);
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                   continue loop8;
                                                }
                                                §§goto(addr493);
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
                  }
               }
            }
            §§goto(addr190);
         }
      }
      
      public function §?";§(param1:§0"T§) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:§1S§ = new §1S§();
         if(!(_loc11_ && param1))
         {
            _loc2_.id = §=!M§;
         }
         while(true)
         {
            while(true)
            {
               _loc2_.x = this.§0m§.x;
               do
               {
                  _loc2_.y = this.§0m§.y;
               }
               while(_loc11_ && _loc2_);
               
               if(_loc11_ && _loc2_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               §§push(§8! §);
               if(!(_loc11_ && _loc3_))
               {
                  §§push(§§pop() / this.§0m§.scale);
                  if(_loc10_ || this)
                  {
                     §§push(§§pop() / 2);
                     if(!_loc10_)
                     {
                     }
                     addr85:
                     var _loc3_:* = §§pop();
                     §§push(§,",§);
                     if(_loc10_)
                     {
                        §§push(§§pop() / this.§0m§.scale);
                        if(_loc10_ || _loc3_)
                        {
                           §§push(§§pop() / 2);
                           if(_loc11_)
                           {
                           }
                           addr105:
                           var _loc4_:* = §§pop();
                           if(_loc10_)
                           {
                              §§push(_loc2_);
                              §§push(this.§0m§.x);
                              if(!_loc11_)
                              {
                                 §§push(§§pop() - _loc3_);
                              }
                              §§pop().left = §§pop();
                              while(true)
                              {
                                 §§push(_loc2_);
                                 §§push(this.§0m§.x);
                                 if(!(_loc11_ && _loc3_))
                                 {
                                    §§push(§§pop() + _loc3_);
                                 }
                                 §§pop().right = §§pop();
                                 while(!(_loc11_ && _loc2_))
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       §§push(_loc2_.y);
                                       if(!_loc11_)
                                       {
                                          §§push(§§pop() - _loc4_);
                                       }
                                       §§pop().top = §§pop();
                                       do
                                       {
                                          §§push(_loc2_);
                                          §§push(_loc2_.y);
                                          if(_loc10_)
                                          {
                                             §§push(§§pop() + _loc4_);
                                          }
                                          §§pop().bottom = §§pop();
                                       }
                                       while(!_loc10_);
                                       
                                       if(!(_loc10_ || this))
                                       {
                                          break;
                                       }
                                       while(false)
                                       {
                                          continue loop5;
                                       }
                                       §§push(§,",§);
                                       if(!(_loc11_ && _loc2_))
                                       {
                                          §§push(_loc2_.bottom);
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() - _loc2_.top);
                                          }
                                          §§push(§§pop() / §§pop());
                                          if(!_loc11_)
                                          {
                                             addr190:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc5_:* = §§pop();
                                          §§push(§8! §);
                                          if(!_loc11_)
                                          {
                                             §§push(_loc2_.right);
                                             if(!(_loc11_ && _loc3_))
                                             {
                                                §§push(§§pop() - _loc2_.left);
                                             }
                                             §§push(§§pop() / §§pop());
                                             if(_loc10_ || _loc3_)
                                             {
                                                addr215:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc6_:* = §§pop();
                                             if(_loc10_)
                                             {
                                                _loc2_.scale = Math.min(_loc6_,_loc5_);
                                             }
                                             var _loc7_:§1S§;
                                             (_loc7_ = new §1S§()).id = §6"[§;
                                             if(!_loc11_)
                                             {
                                                _loc7_.x = this.§8">§.x;
                                                if(_loc10_)
                                                {
                                                   _loc7_.y = this.§8">§.y;
                                                }
                                             }
                                             §§push(§8! §);
                                             if(!(_loc11_ && _loc2_))
                                             {
                                                §§push(§§pop() / this.§8">§.scale);
                                                if(_loc10_ || param1)
                                                {
                                                   §§push(§§pop() / 2);
                                                   if(_loc10_ || this)
                                                   {
                                                      addr284:
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc8_:* = §§pop();
                                                §§push(§,",§);
                                                if(!_loc11_)
                                                {
                                                   §§push(§§pop() / this.§8">§.scale);
                                                   if(_loc10_ || this)
                                                   {
                                                      §§push(§§pop() / 2);
                                                      if(_loc10_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                }
                                                var _loc9_:* = §§pop();
                                                if(!_loc11_)
                                                {
                                                   §§push(_loc7_);
                                                   §§push(this.§8">§.x);
                                                   if(_loc10_ || param1)
                                                   {
                                                      §§push(§§pop() - _loc8_);
                                                   }
                                                   §§pop().left = §§pop();
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      §§push(this.§8">§.x);
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         §§push(§§pop() + _loc8_);
                                                      }
                                                      §§pop().right = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         §§push(_loc7_.y);
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            §§push(§§pop() - _loc9_);
                                                         }
                                                         §§pop().top = §§pop();
                                                         loop10:
                                                         for(; _loc10_; if(_loc11_ && param1)
                                                         {
                                                            continue;
                                                         },§§goto(addr345))
                                                         {
                                                            §§push(_loc7_);
                                                            §§push(_loc7_.y);
                                                            if(!(_loc11_ && param1))
                                                            {
                                                               §§push(§§pop() + _loc9_);
                                                            }
                                                            §§pop().bottom = §§pop();
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(§,",§);
                                                               if(_loc10_ || param1)
                                                               {
                                                                  §§push(_loc7_.bottom);
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_.top);
                                                                     addr432:
                                                                     addr375:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        addr433:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                        }
                                                                     }
                                                                     if(_loc11_ && this)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(_loc7_.left);
                                                                     if(_loc10_ || this)
                                                                     {
                                                                        addr392:
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           if(!_loc11_)
                                                                           {
                                                                              addr402:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           if(!(_loc11_ && _loc3_))
                                                                           {
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    _loc7_.scale = Math.min(_loc6_,_loc5_);
                                                                                    while(_loc10_)
                                                                                    {
                                                                                       param1.§0"[§();
                                                                                       loop20:
                                                                                       while(_loc10_ || _loc2_)
                                                                                       {
                                                                                          param1.§9"Q§(_loc2_);
                                                                                          do
                                                                                          {
                                                                                             if(_loc10_ || this)
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                             continue loop20;
                                                                                             param1.§9"Q§(_loc7_);
                                                                                          }
                                                                                          while(_loc11_ && _loc3_);
                                                                                          
                                                                                          return;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr434:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 addr434:
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr433);
                                                                        }
                                                                        §§goto(addr434);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr432);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr434);
                                                            }
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                }
                                                §§goto(addr324);
                                             }
                                             §§goto(addr284);
                                          }
                                          §§goto(addr215);
                                       }
                                       §§goto(addr190);
                                    }
                                 }
                              }
                           }
                           §§goto(addr127);
                        }
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr105);
                  }
                  §§push(Number(§§pop()));
               }
               §§goto(addr85);
            }
         }
      }
      
      public function §8!#§(param1:§1S§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1.scale);
         if(!(_loc7_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.x);
         if(!_loc7_)
         {
            §§push(§?l§.§7!H§ * 0.5);
            if(_loc8_)
            {
               §§push(_loc2_);
               if(!_loc7_)
               {
                  addr52:
                  §§push(§§pop() / §§pop());
                  if(_loc8_ || _loc3_)
                  {
                     §§push(§'!S§.§2"<§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc7_ && param1))
                  {
                     addr61:
                     var _loc3_:Number = §§pop();
                     §§push(param1.y);
                     if(_loc8_ || this)
                     {
                        §§push(§?l§.§<"P§ * 0.5);
                        if(_loc8_ || _loc2_)
                        {
                           §§push(_loc2_);
                           if(_loc8_ || _loc3_)
                           {
                              §§push(§§pop() / §§pop());
                              if(!(_loc7_ && this))
                              {
                                 addr110:
                                 §§push(§§pop() * §'!S§.§2"<§);
                              }
                              §§push(§§pop() - §§pop());
                              if(_loc8_ || _loc2_)
                              {
                                 addr120:
                                 var _loc4_:Number = §§pop();
                                 §§push(_loc3_);
                                 if(_loc8_ || _loc3_)
                                 {
                                    §§push(§?l§.§7!H§ / _loc2_);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(§§pop() * §'!S§.§2"<§);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc5_:* = §§pop();
                                 §§push(_loc4_);
                                 if(!_loc7_)
                                 {
                                    §§push(§?l§.§<"P§ / _loc2_);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() * §'!S§.§2"<§);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc8_ || param1)
                                    {
                                       addr173:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc6_:* = §§pop();
                                    if(!(_loc7_ && this))
                                    {
                                       param1.left = _loc3_;
                                       loop0:
                                       while(true)
                                       {
                                          param1.top = _loc4_;
                                          loop1:
                                          while(true)
                                          {
                                             param1.right = _loc5_;
                                             addr219:
                                             while(true)
                                             {
                                                param1.bottom = _loc6_;
                                                addr210:
                                                while(!_loc7_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       param1.scale = 0;
                                       if(_loc8_)
                                       {
                                          if(_loc8_)
                                          {
                                             break;
                                          }
                                          §§goto(addr219);
                                       }
                                       §§goto(addr210);
                                    }
                                    return;
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr120);
                           }
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr61);
               }
               §§push(§§pop() * §§pop());
            }
            §§goto(addr52);
         }
         §§goto(addr61);
      }
      
      protected function §6X§(param1:§5!;§, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = Number(this.mCurrentCameraSliderLocation);
         if(!_loc5_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(param2);
               if(_loc4_)
               {
                  §§push(§§pop() * this.§ "R§);
               }
               §§push(§§pop() + §§pop());
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        loop4:
                        do
                        {
                           if(_loc5_)
                           {
                              continue loop1;
                           }
                           §§push(§-5§);
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 §§push(_loc3_);
                                 if(!_loc5_)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 addr77:
                                 §§push(Number(§§pop()));
                                 if(!(_loc4_ || this))
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              if(!(_loc5_ && this))
                              {
                                 §§push(Number(§-5§));
                                 break;
                              }
                              while(true)
                              {
                                 this.§5"@§(§ !c§);
                              }
                           }
                           _loc3_ = §§pop();
                           §§goto(addr124);
                        }
                        while(!_loc4_);
                        
                        if(!_loc4_)
                        {
                           continue loop2;
                        }
                        _loc3_ = §§pop();
                        §§goto(addr90);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr107);
      }
      
      protected function §"J§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(this.mCurrentCameraSliderLocation);
         if(_loc5_ || param1)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               §§push(param1);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() * this.§ "R§);
               }
               §§push(§§pop() + §§pop());
               if(_loc5_ || param1)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc6_ && _loc2_))
                  {
                     addr57:
                     _loc2_ = §§pop();
                     §§push(0.7);
                     if(_loc5_)
                     {
                        addr61:
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     §§push(-§-5§);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() * _loc3_);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc4_:* = §§pop();
                     if(_loc5_ || _loc2_)
                     {
                        §§push(_loc2_);
                        loop0:
                        while(true)
                        {
                           §§push(§§pop() >= §-5§);
                           if(_loc5_ || this)
                           {
                              if(!§§pop())
                              {
                                 loop13:
                                 while(true)
                                 {
                                    §§pop();
                                    loop12:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       addr176:
                                       loop7:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc6_ && param1))
                                          {
                                             addr184:
                                             §§push(§§pop() < §§pop());
                                             if(!(_loc5_ || this))
                                             {
                                                continue loop13;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   addr214:
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§push(_loc2_);
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         break loop7;
                                                      }
                                                      addr212:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      addr215:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         continue loop0;
                                                      }
                                                   }
                                                   addr214:
                                                }
                                                addr95:
                                                loop11:
                                                while(true)
                                                {
                                                   this.mCurrentCameraSliderLocation = _loc2_;
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(!(_loc6_ && this))
                                                         {
                                                            break;
                                                         }
                                                         continue loop12;
                                                      }
                                                      addr224:
                                                      loop14:
                                                      while(true)
                                                      {
                                                         addr126:
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§ "R§);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(-§§pop());
                                                            }
                                                            §§pop().§ "R§ = §§pop();
                                                            continue loop14;
                                                         }
                                                      }
                                                   }
                                                   while(_loc5_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   addr166:
                                                   while(true)
                                                   {
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         §§goto(addr126);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr214);
                                                      }
                                                   }
                                                }
                                                return;
                                                §§goto(addr184);
                                             }
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             §§push(Number(§-5§));
                                             if(_loc6_ && _loc3_)
                                             {
                                                continue loop0;
                                             }
                                             if(_loc5_ || param1)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      _loc2_ = §§pop();
                                                      §§goto(addr166);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr176);
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr215);
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr212);
                                    }
                                 }
                                 addr237:
                              }
                              §§goto(addr192);
                           }
                           §§goto(addr237);
                        }
                     }
                     §§goto(addr224);
                  }
                  §§goto(addr61);
               }
            }
         }
         §§goto(addr57);
      }
      
      protected function §=!!§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.mCurrentAction);
            while(true)
            {
               §§push(§true§);
               loop1:
               while(§§pop() != §§pop())
               {
                  §§push(this.mCurrentAction);
                  while(true)
                  {
                     §§push(§',§);
                     while(§§pop() != §§pop())
                     {
                        §§push(this.mCurrentAction);
                        loop4:
                        while(true)
                        {
                           §§push(§9!E§);
                           addr132:
                           addr135:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    break;
                                 }
                                 §§push(this.mCurrentAction);
                                 continue loop4;
                              }
                              continue loop1;
                           }
                           addr135:
                           addr20:
                           if(!_loc2_)
                           {
                              §§push(this);
                              §§push(this.§0m§);
                              §§push(param1);
                              if(_loc3_ || this)
                              {
                                 §§push(-§§pop());
                              }
                              §§pop().§6X§(§§pop(),§§pop());
                              addr160:
                           }
                           else
                           {
                              addr181:
                           }
                           addr20:
                           return;
                        }
                     }
                     this.§6X§(this.§8">§,param1);
                     §§goto(addr173);
                  }
               }
               this.§"J§(param1);
            }
         }
         §§goto(addr181);
      }
      
      public function §["§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(!this.§`"C§)
            {
               this.§!?§();
               while(true)
               {
                  this.§=!!§(param1);
                  loop1:
                  while(!_loc2_)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        while(true)
                        {
                           this.§-l§(this.mCurrentCameraSliderLocation,param1);
                           loop10:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              addr84:
                              if(_loc3_ || this)
                              {
                                 addr91:
                                 while(true)
                                 {
                                    this.§@"U§();
                                    while(true)
                                    {
                                       if(!(_loc2_ && this))
                                       {
                                          this.§"P§();
                                          for(; !_loc2_; this.§0!u§(),if(!(_loc3_ || this))
                                          {
                                             continue;
                                          },§§goto(addr39))
                                          {
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                continue;
                                             }
                                             addr154:
                                             loop8:
                                             while(true)
                                             {
                                                this.§-"D§ = this.§`"C§.x;
                                                addr159:
                                                while(true)
                                                {
                                                   this.§,5§ = this.§`"C§.y;
                                                   do
                                                   {
                                                      §§push(§§findproperty(§<"E§));
                                                      §§push(§8! §);
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         §§push(this.§`"C§.right);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop() - this.§`"C§.left);
                                                         }
                                                         §§push(§§pop() / §§pop());
                                                      }
                                                      §§pop().§<"E§ = §§pop();
                                                   }
                                                   while(_loc2_);
                                                   
                                                   return;
                                                   continue loop8;
                                                }
                                             }
                                          }
                                          continue;
                                       }
                                       continue loop10;
                                    }
                                    continue loop10;
                                    §§goto(addr91);
                                 }
                                 continue loop1;
                                 addr55:
                              }
                              while(true)
                              {
                                 §§goto(addr55);
                                 §§goto(addr84);
                              }
                           }
                        }
                        addr105:
                     }
                     §§goto(addr159);
                  }
               }
            }
            §§goto(addr154);
         }
         §§goto(addr105);
      }
      
      private function §6!f§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Number = this.§%!z§.scale + (this.§+!g§.scale - this.§%!z§.scale) * param1;
         var _loc4_:Number = this.§%!z§.x + (this.§+!g§.x - this.§%!z§.x) * param1;
         var _loc5_:Number = this.§%!z§.y + (this.§+!g§.y - this.§%!z§.y) * param1;
         if(!_loc7_)
         {
            §§push(this.§+l§);
            while(true)
            {
               §§push(this.§+l§);
               loop1:
               while(true)
               {
                  §§push(§§pop().x - (this.§+l§.x - _loc4_) * param2);
                  loop2:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(this.§+l§);
                        addr136:
                        loop4:
                        while(true)
                        {
                           §§push(this.§+l§);
                           addr148:
                           while(_loc6_)
                           {
                              §§push(§§pop().y - (this.§+l§.y - _loc5_) * param2);
                              while(true)
                              {
                                 §§pop().y = §§pop();
                                 §§push(§§pop().scale - (this.§+l§.scale - _loc3_) * param2);
                                 addr99:
                                 continue loop4;
                                 if(!(_loc7_ && param2))
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       §§pop().scale = §§pop();
                                       if(!(_loc7_ && param2))
                                       {
                                          if(_loc6_)
                                          {
                                             return;
                                             addr132:
                                          }
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               addr88:
               if(_loc7_ && param1)
               {
                  continue;
               }
               §§push(this.§+l§);
               if(!_loc7_)
               {
                  §§goto(addr99);
               }
               §§goto(addr148);
            }
         }
         while(true)
         {
            §§push(this.§+l§);
            if(_loc6_ || param2)
            {
               §§goto(addr88);
            }
            §§goto(addr136);
         }
         §§goto(addr132);
      }
      
      protected function §1!C§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         if(!_loc4_)
         {
            §§push(this.§&&§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     if(!this.§'"C§)
                     {
                        while(true)
                        {
                           §§push(Number(1));
                           addr148:
                           while(true)
                           {
                              param2 = §§pop();
                              addr149:
                              while(true)
                              {
                              }
                           }
                        }
                        addr146:
                     }
                     while(true)
                     {
                        §§push(param1);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§-5§);
                           if(_loc4_ && param1)
                           {
                              break;
                           }
                           §§push(§§pop() / §§pop());
                           if(!(_loc4_ && param2))
                           {
                              continue loop0;
                           }
                        }
                        addr123:
                        if(_loc5_ || _loc3_)
                        {
                           _loc3_ = §§pop();
                           do
                           {
                              if(_loc5_ || this)
                              {
                                 this.§6!f§(_loc3_,param2);
                                 loop8:
                                 do
                                 {
                                    this.§-"D§ = this.§+l§.x;
                                    for(; _loc5_; this.§,5§ = this.§+l§.y,do
                                    {
                                       §<"E§ = this.§+l§.scale;
                                    }
                                    while(_loc4_);
                                    ,if(_loc5_ || this)
                                    {
                                       continue loop8;
                                    })
                                    {
                                       if(_loc5_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr149);
                                 }
                                 while(_loc4_ && param1);
                                 
                                 continue;
                              }
                              continue loop2;
                           }
                           while(_loc4_);
                           
                           addr50:
                           break loop1;
                        }
                        §§goto(addr148);
                     }
                     continue loop1;
                  }
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      public function §-l§(param1:Number, param2:Number) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §#W§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§#"§ = param1;
         }
         do
         {
            this.§[P§ = param2;
         }
         while(_loc3_);
         
      }
      
      private function §]!=§(param1:§@&§, param2:§5!;§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         if(_loc5_ || this)
         {
            §§push(param1);
            §§push(§[!M§);
            if(_loc5_ || this)
            {
               §§push(param2.scale);
               if(_loc5_ || this)
               {
                  §§push(§[!M§);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc4_ && param1))
                     {
                        addr162:
                        §§push(this.§4`§);
                        if(_loc5_)
                        {
                           addr173:
                           §§push(§§pop() * §§pop());
                           if(!_loc4_)
                           {
                              addr171:
                              §§push(§§pop() * §"l§.§0N§());
                           }
                           §§pop().scale = §§pop() + §§pop();
                           loop0:
                           while(true)
                           {
                              §§push(§8! §);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() / param1.scale);
                                 if(!_loc4_)
                                 {
                                    §§push(this.§^z§);
                                    if(_loc5_ || param1)
                                    {
                                       §§push(this.§`"E§);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc5_)
                                          {
                                             if(§§pop() <= §§pop())
                                             {
                                                §§push(false);
                                                if(_loc5_ || this)
                                                {
                                                   return §§pop();
                                                }
                                                addr41:
                                                return true;
                                             }
                                             while(true)
                                             {
                                                §§push(§8! §);
                                                if(_loc5_)
                                                {
                                                   §§push(this.§^z§);
                                                   if(_loc5_ || this)
                                                   {
                                                      addr107:
                                                      while(true)
                                                      {
                                                         §§push(this.§`"E§);
                                                         addr109:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                         }
                                                      }
                                                      addr107:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      if(!_loc5_)
                                                      {
                                                      }
                                                      addr114:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         while(_loc5_)
                                                         {
                                                            param1.scale = _loc3_;
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr41);
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr114);
                                                }
                                             }
                                             addr95:
                                          }
                                          §§goto(addr107);
                                       }
                                       §§goto(addr109);
                                    }
                                    §§goto(addr107);
                                 }
                              }
                              §§goto(addr114);
                           }
                        }
                     }
                  }
                  §§goto(addr171);
               }
               §§goto(addr162);
            }
            §§goto(addr173);
         }
         §§goto(addr95);
      }
      
      private function §,!S§(param1:§@&§, param2:§5!;§) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(this.§]!=§(param1,param2));
         if(_loc9_ || param1)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc8_)
         {
            param1.y = param2.y;
         }
         var _loc4_:Number = param1.y + §,",§ * 0.5 / param1.scale;
         §§push(§,",§);
         if(_loc9_)
         {
            §§push(§§pop() * 0.25);
            if(!(_loc8_ && param1))
            {
               §§push(§§pop() / param1.scale);
               if(!(_loc8_ && _loc3_))
               {
                  addr69:
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!_loc8_)
            {
               §§push(_loc4_);
               if(_loc9_)
               {
                  §§push(_loc5_);
                  if(_loc9_ || this)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!_loc8_)
                        {
                           addr87:
                           param1.y += _loc5_ - _loc4_;
                           if(_loc9_ || param1)
                           {
                              param1.x = param2.x;
                              addr102:
                           }
                        }
                        §§push(param1.x - §8! § * 0.5 / param1.scale);
                        if(_loc9_)
                        {
                           addr128:
                           var _loc6_:Number;
                           §§push(_loc6_ = §§pop());
                           if(!_loc8_)
                           {
                              §§push(this.§`"E§);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() < §§pop());
                                 if(_loc9_ || _loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          addr148:
                                          §§pop();
                                          if(!_loc8_)
                                          {
                                             addr154:
                                             if(param1.§<!2§)
                                             {
                                                if(!(_loc8_ && this))
                                                {
                                                   param1.x += this.§`"E§ - _loc6_;
                                                }
                                             }
                                          }
                                          var _loc7_:Number;
                                          §§push((_loc7_ = param1.x + §8! § * 0.5 / param1.scale) > this.§^z§);
                                          if(_loc9_ || param2)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc9_)
                                                {
                                                   §§pop();
                                                   if(_loc9_ || param2)
                                                   {
                                                      §§push(!param1.§<!2§);
                                                      if(_loc9_ || this)
                                                      {
                                                         addr225:
                                                         if(§§pop())
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               addr228:
                                                               param1.x += this.§^z§ - _loc7_;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr228);
                                                }
                                                addr238:
                                                return _loc3_;
                                             }
                                          }
                                          §§goto(addr225);
                                       }
                                    }
                                    §§goto(addr154);
                                 }
                              }
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr102);
                  }
               }
               §§goto(addr128);
            }
            §§goto(addr87);
         }
         §§goto(addr69);
      }
      
      private function §%!l§(param1:§@&§, param2:§5!;§) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1.scale - §[!M§);
         if(!(_loc3_ && param2))
         {
            §§push(§"l§.§0N§());
            if(!(_loc3_ && param1))
            {
               §§push(param2.scale);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() - §[!M§);
               }
               §§push(§§pop() * §§pop());
            }
            return §§pop() / §§pop();
         }
      }
      
      protected function §!?§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§,!S§(this.§%!z§,this.§0m§);
         }
         §§push(this.§%!l§(this.§%!z§,this.§0m§));
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc4_)
         {
            this.§,!S§(this.§+!g§,this.§8">§);
         }
         §§push(this.§%!l§(this.§+!g§,this.§8">§));
         if(!(_loc4_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            this.§4`§ = Math.min(_loc1_,_loc2_);
         }
      }
      
      public function §@"U§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = NaN;
         if(_loc3_)
         {
            if(this.mLevelMain.sprite)
            {
               if(_loc3_ || _loc3_)
               {
                  §§push(§?l§.§5&§());
                  if(_loc3_)
                  {
                     §§push(§§pop() / §?l§.§+!9§);
                     if(_loc3_)
                     {
                        addr40:
                        §§push(§?l§.§<"P§);
                        if(!_loc4_)
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc3_)
                           {
                              addr48:
                              §§push(Number(§§pop() >> 1));
                           }
                           _loc1_ = §§pop();
                           if(_loc3_)
                           {
                              addr53:
                              §§push(§§findproperty(§2!N§));
                              §§push(this.mLevelMain.sprite);
                              §§push(§'!S§.§<!@§);
                              if(_loc3_ || this)
                              {
                                 §§push(1 - §"l§.§@!>§);
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    §§push(§§pop() / 2);
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       addr97:
                                       §§push(§§pop() * §§pop());
                                       §§push(§§pop() * §§pop());
                                    }
                                 }
                                 var _loc2_:* = §§pop();
                                 §§pop().x = §§pop();
                                 §§pop().§2!N§ = _loc2_;
                                 if(!(_loc4_ && this))
                                 {
                                    addr110:
                                    §§push(§§findproperty(§-"T§));
                                    §§push(this.mLevelMain.sprite);
                                    §§push(_loc1_);
                                    if(_loc3_ || _loc1_)
                                    {
                                       §§push(§'!S§.§#L§);
                                       if(!_loc4_)
                                       {
                                          §§push(1 - §"l§.§@!>§);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc3_)
                                             {
                                                addr147:
                                                §§push(§§pop() * §>">§.§@!0§);
                                                if(!_loc4_)
                                                {
                                                   addr151:
                                                   §§push(§§pop() + §§pop());
                                                   §§push(§§pop() + §§pop());
                                                }
                                             }
                                             _loc2_ = §§pop();
                                             §§pop().y = §§pop();
                                             §§pop().§-"T§ = _loc2_;
                                             §§goto(addr157);
                                          }
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr110);
                        }
                     }
                     §§goto(addr48);
                  }
                  §§goto(addr40);
               }
               §§goto(addr53);
            }
            addr157:
            return;
         }
         §§goto(addr110);
      }
      
      public function §0!u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.mLevelMain);
            loop0:
            while(true)
            {
               §§push(§§pop().sprite);
               if(!_loc1_)
               {
                  if(!§§pop())
                  {
                     break;
                     addr99:
                  }
                  if(!_loc1_)
                  {
                     while(true)
                     {
                        §§push(this.mLevelMain);
                        addr96:
                        while(true)
                        {
                           §§push(§§pop().sprite);
                           addr97:
                           while(true)
                           {
                              §§push(§@!>§);
                              addr98:
                              while(true)
                              {
                                 §§pop().scaleX = §§pop();
                              }
                           }
                        }
                     }
                     addr94:
                  }
                  while(true)
                  {
                     §§push(this.mLevelMain);
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                     §§goto(addr96);
                  }
                  continue;
               }
               §§goto(addr97);
            }
            return;
         }
         §§goto(addr94);
      }
      
      public function §"P§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§-"D§);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§'!S§.§2"<§);
            if(!_loc4_)
            {
               §§push(§§pop() / §§pop());
               if(_loc3_)
               {
                  addr34:
                  §§push(§§pop() + this.§#"§);
                  if(_loc4_)
                  {
                  }
                  addr38:
                  var _loc1_:* = §§pop();
                  §§push(this.§,5§);
                  if(!_loc4_)
                  {
                     §§push(§'!S§.§2"<§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() / §§pop());
                        if(_loc3_)
                        {
                           addr52:
                           §§push(§§pop() + this.§[P§);
                           if(!_loc4_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc2_:* = §§pop();
                        if(_loc3_)
                        {
                           §§push(this);
                           §§push(_loc1_);
                           if(_loc3_)
                           {
                              §§push(§'!S§.§<!@§);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(§§pop() / 2);
                                 if(_loc3_)
                                 {
                                    §§push(§?l§.§+!9§);
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr317:
                                       §§push(§§pop() * §§pop());
                                       if(_loc3_ || _loc1_)
                                       {
                                          addr314:
                                          §§push(§?l§.§,"Z§);
                                       }
                                       §§pop().§8@§ = §§pop() - §§pop();
                                       loop0:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(_loc2_);
                                          if(!_loc4_)
                                          {
                                             §§push(§'!S§.§#L§);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                §§push(§§pop() / 2);
                                                if(_loc3_ || _loc1_)
                                                {
                                                   addr257:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      addr267:
                                                      §§push(§§pop() + §>">§.§]"V§);
                                                   }
                                                   §§pop().§@";§ = §§pop();
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(this.mLevelMain);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().background);
                                                         if(!_loc4_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.mLevelMain);
                                                                  addr227:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().background);
                                                                     addr228:
                                                                     while(true)
                                                                     {
                                                                        §§pop().updateScrollAndScale(this.§8@§,this.§@";§);
                                                                        addr233:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr225:
                                                            }
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(this.mLevelMain);
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().objects);
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.mLevelMain);
                                                                           addr209:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().objects);
                                                                              addr210:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().updateScrollAndScale(this.§8@§,this.§@";§);
                                                                                 addr215:
                                                                                 while(!_loc4_)
                                                                                 {
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                           addr159:
                                                                           if(!(_loc3_ || _loc2_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc3_)
                                                                           {
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.mLevelMain);
                                                                                 if(_loc3_ || this)
                                                                                 {
                                                                                    §§push(§§pop().particles);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc4_ && _loc1_))
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr134:
                                                                                                §§push(this.mLevelMain);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   if(_loc4_ && _loc2_)
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   addr99:
                                                                                                   §§pop().particles.updateScrollAndScale(this.§8@§,this.§@";§);
                                                                                                   addr142:
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                      {
                                                                                                         §§goto(addr159);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr215);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                   addr142:
                                                                                                }
                                                                                                while(!_loc4_)
                                                                                                {
                                                                                                   §§push(§§pop().slingshot);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().updateScrollAndScale(this.§8@§,this.§@";§);
                                                                                                      §§goto(addr142);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_ || this)
                                                                                                   {
                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(§§pop().mLevelEngine)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.drawEngineDebug();
                                                                                                                  addr192:
                                                                                                                  while(!_loc4_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               addr190:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.mLevelMain);
                                                                                                               if(!(_loc4_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(§§pop().slingshot);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                     if(!(_loc4_ && _loc1_))
                                                                                                                     {
                                                                                                                        §§goto(addr134);
                                                                                                                        §§push(this.mLevelMain);
                                                                                                                     }
                                                                                                                     §§goto(addr142);
                                                                                                                  }
                                                                                                                  §§goto(addr137);
                                                                                                               }
                                                                                                               §§goto(addr134);
                                                                                                            }
                                                                                                            addr60:
                                                                                                            return;
                                                                                                            addr110:
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr227);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr209);
                                                                                                   }
                                                                                                }
                                                                                                addr134:
                                                                                                continue loop2;
                                                                                                addr172:
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                          §§goto(addr142);
                                                                                       }
                                                                                       §§goto(addr60);
                                                                                    }
                                                                                    §§goto(addr99);
                                                                                 }
                                                                                 §§goto(addr134);
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§goto(addr190);
                                                                                 }
                                                                                 §§goto(addr110);
                                                                              }
                                                                              §§goto(addr192);
                                                                           }
                                                                           §§goto(addr225);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr172);
                                                                        §§goto(addr217);
                                                                     }
                                                                  }
                                                                  §§goto(addr210);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                   }
                                                   addr269:
                                                }
                                                §§goto(addr267);
                                             }
                                             §§goto(addr257);
                                          }
                                          §§goto(addr267);
                                       }
                                    }
                                    §§push(§§pop() / §§pop());
                                 }
                                 §§goto(addr317);
                              }
                              §§goto(addr314);
                           }
                           §§goto(addr317);
                        }
                        §§goto(addr269);
                     }
                  }
                  §§goto(addr52);
               }
               §§goto(addr38);
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr34);
      }
      
      protected function drawEngineDebug() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.mLevelMain.mLevelEngine.updateScrollAndScale(this.§8@§,this.§@";§,§<"E§);
         }
      }
      
      protected function §'"F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§5"@§(§ "2§);
         }
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            this.§ "'§ = -1;
            if(_loc5_ || this)
            {
               this.§'"F§();
               if(!(_loc4_ && param1))
               {
                  §§push(this);
                  §§push(this);
                  §§push(this.§`7§ = param1);
                  if(!(_loc4_ && _loc3_))
                  {
                     var _loc3_:*;
                     §§push(_loc3_ = §§pop());
                  }
                  §§pop().§#&§ = §§pop();
                  §§pop().§0!#§ = _loc3_;
                  if(!_loc4_)
                  {
                     addr67:
                     §§push(this);
                     §§push(this);
                     §§push(this.§["B§ = param2);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(_loc3_ = §§pop());
                     }
                     §§pop().§!!8§ = §§pop();
                     §§pop().§6!D§ = _loc3_;
                     if(_loc5_)
                     {
                        this.§[t§ = 0;
                        addr258:
                        while(true)
                        {
                           §§push(this.§+l§);
                           addr251:
                           while(true)
                           {
                              §§push(this.§-"D§);
                              addr253:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 addr254:
                                 while(true)
                                 {
                                    §§push(this.§+l§);
                                    addr244:
                                    while(true)
                                    {
                                       §§push(this.§,5§);
                                       addr246:
                                       while(true)
                                       {
                                          §§pop().y = §§pop();
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr258:
                     }
                     loop3:
                     while(true)
                     {
                        §§push(this.§+l§);
                        if(_loc5_ || param2)
                        {
                           if(!_loc4_)
                           {
                              §§push(§<"E§);
                              if(!(_loc5_ || _loc3_))
                              {
                                 continue;
                              }
                              if(!(_loc4_ && param2))
                              {
                                 §§pop().scale = §§pop();
                                 loop4:
                                 while(!_loc4_)
                                 {
                                    this.§!"6§ = §<"E§;
                                    while(_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    addr197:
                                    if(Math.abs(this.§+!g§.x - this.§%!z§.x) > 0.001)
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          §§push(this);
                                          §§push(this.§-"D§);
                                          if(_loc5_ || this)
                                          {
                                             §§push(§§pop() - this.§%!z§.x);
                                             if(!(_loc4_ && param2))
                                             {
                                                §§push(§§pop() / (this.§+!g§.x - this.§%!z§.x));
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() * §-5§);
                                                }
                                             }
                                          }
                                          §§pop().mCurrentCameraSliderLocation = §§pop();
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          if(!(_loc4_ && param2))
                                          {
                                             if(!(_loc5_ || _loc3_))
                                             {
                                                continue loop3;
                                             }
                                             addr185:
                                             if(_loc5_ || param1)
                                             {
                                                while(true)
                                                {
                                                   break loop2;
                                                   §§goto(addr185);
                                                }
                                                addr192:
                                             }
                                             else
                                             {
                                                §§goto(addr258);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr197);
                                          }
                                       }
                                       addr171:
                                    }
                                    while(true)
                                    {
                                       this.mDragging = true;
                                       if(_loc5_ || param2)
                                       {
                                          break;
                                       }
                                       §§goto(addr171);
                                    }
                                    return;
                                 }
                                 §§goto(addr254);
                              }
                              §§goto(addr253);
                           }
                           §§goto(addr251);
                        }
                        §§goto(addr244);
                     }
                  }
                  §§goto(addr192);
               }
               §§goto(addr258);
            }
            §§goto(addr254);
         }
         §§goto(addr67);
      }
      
      public function §'";§(param1:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = Number(this.mCurrentCameraSliderLocation);
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.§[t§);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§[t§ = §§pop();
         }
         §§push(this.§0!#§);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop() - this.§#&§);
            if(_loc5_ || _loc2_)
            {
               addr55:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc5_ || param1)
            {
               §§push(this.§&&§);
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
                           loop3:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(!_loc4_)
                              {
                                 §§push(§'!S§.§2"<§);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§@!>§);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§pop() / §§pop());
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.§&&§);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc5_ || _loc2_)
                                                {
                                                   addr330:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §-5§);
                                                   }
                                                   addr330:
                                                }
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   loop10:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      addr342:
                                                      loop33:
                                                      while(true)
                                                      {
                                                         this.§'"C§ = false;
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(0);
                                                               while(!_loc4_)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§push(§-5§);
                                                                           if(_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc5_ || param1))
                                                                                    {
                                                                                       continue loop33;
                                                                                    }
                                                                                    §§push(_loc2_);
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       while(!_loc4_)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             break loop21;
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                       §§goto(addr330);
                                                                                       addr282:
                                                                                       addr156:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr230:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                break loop21;
                                                                                             }
                                                                                             _loc2_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   this.§'"C§ = true;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr95:
                                                                                                      §§goto(addr118);
                                                                                                   }
                                                                                                   addr123:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr261:
                                                                                                }
                                                                                             }
                                                                                             loop30:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§'"C§ = true;
                                                                                                addr245:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   continue loop30;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr229:
                                                                                    }
                                                                                    if(_loc4_ && this)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr118);
                                                                                    }
                                                                                    §§goto(addr245);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    §§goto(addr291);
                                                                                 }
                                                                                 addr290:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.mCurrentCameraSliderLocation = _loc2_;
                                                                                 §§goto(addr95);
                                                                                 §§goto(addr123);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - _loc2_);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr182:
                                                                                       §§push(0.3);
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          continue loop8;
                                                                                       }
                                                                                       addr273:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             break loop25;
                                                                                          }
                                                                                          break;
                                                                                          §§goto(addr182);
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 addr205:
                                                                                 addr205:
                                                                                 if(!(_loc5_ || this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(!(_loc5_ || _loc3_))
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr229);
                                                                                 }
                                                                                 §§goto(addr230);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr205);
                                                                              }
                                                                              addr176:
                                                                              addr281:
                                                                           }
                                                                           §§goto(addr282);
                                                                        }
                                                                        §§goto(addr156);
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr261);
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§goto(addr290);
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
                              §§goto(addr330);
                           }
                        }
                     }
                     addr118:
                     while(true)
                     {
                        if(!(_loc4_ && param1))
                        {
                           continue loop22;
                        }
                        continue loop23;
                     }
                     while(true)
                     {
                        this.§#&§ = this.§0!#§;
                        if(!(_loc4_ && param1))
                        {
                           if(!_loc4_)
                           {
                              if(!(_loc4_ && this))
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           continue loop13;
                        }
                        §§goto(addr95);
                     }
                     return;
                  }
               }
            }
            §§goto(addr342);
         }
         §§goto(addr55);
      }
      
      protected function §2Q§() : Boolean
      {
         return this.mCurrentAction == § "2§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.mDragging)
            {
               loop0:
               while(true)
               {
                  this.§0!#§ = param1;
                  addr49:
                  while(true)
                  {
                     this.§6!D§ = param2;
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr30);
               }
            }
            addr30:
            return;
         }
         §§goto(addr49);
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         if(_loc5_)
         {
            §§push(this.mCurrentAction);
            loop0:
            while(true)
            {
               §§push(§ "2§);
               loop1:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§5"@§(§ !c§);
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           loop4:
                           while(true)
                           {
                              §§push(0);
                              loop5:
                              while(true)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       if(_loc4_ && param1)
                                       {
                                          break;
                                       }
                                       this.§0!#§ = param1;
                                    }
                                    while(true)
                                    {
                                    }
                                    addr453:
                                 }
                                 while(true)
                                 {
                                    §§push(Number(Math.abs(this.§0!#§ - this.§`7§)));
                                    loop8:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       loop9:
                                       while(!(_loc4_ && param2))
                                       {
                                          §§push(this.§[t§);
                                          loop10:
                                          for(; _loc5_; if(!(_loc4_ && param1))
                                          {
                                             continue loop4;
                                          })
                                          {
                                             §§push(§;"1§);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop() < §§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc4_ && param2)
                                                               {
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§push(this.§[t§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(§9!c§);
                                                                           if(_loc5_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 this.§'";§(0);
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§9<§(0);
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc4_ && param1))
                                                                                       {
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             this.§ "R§ = §-5§ / (§-5§ / 500);
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                      if(!(_loc4_ && param2))
                                                                                                      {
                                                                                                         this.§'"C§ = true;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_ || param1)
                                                                                                            {
                                                                                                               addr64:
                                                                                                               if(_loc5_ || param2)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               loop21:
                                                                                                               for(; _loc5_ || this; §§goto(addr64))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§push(§>d§);
                                                                                                                        loop44:
                                                                                                                        while(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * this.§[t§);
                                                                                                                           if(_loc5_ || this)
                                                                                                                           {
                                                                                                                              §§push(§§pop() / 1000);
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 addr305:
                                                                                                                                 §§push(§§pop() >= §§pop());
                                                                                                                                 if(_loc5_ || this)
                                                                                                                                 {
                                                                                                                                    continue loop22;
                                                                                                                                 }
                                                                                                                                 addr375:
                                                                                                                                 loop20:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc4_ && this))
                                                                                                                                    {
                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          continue loop21;
                                                                                                                                       }
                                                                                                                                       continue loop12;
                                                                                                                                    }
                                                                                                                                    addr407:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       break loop20;
                                                                                                                                    }
                                                                                                                                    §§goto(addr305);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr342:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop() >= §§pop())
                                                                                                                                    {
                                                                                                                                       this.§5"@§(§9!E§);
                                                                                                                                       addr276:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc4_ && this))
                                                                                                                                          {
                                                                                                                                             loop33:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this);
                                                                                                                                                §§push(_loc3_);
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() / this.§[t§);
                                                                                                                                                   if(_loc5_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * 10);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§pop().§ "R§ = §§pop();
                                                                                                                                                addr269:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§'"C§ = false;
                                                                                                                                                   addr243:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc4_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(this.mCurrentCameraSliderLocation);
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                      addr356:
                                                                                                                                                      addr343:
                                                                                                                                                      loop46:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            this.§5"@§(§',§);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                               break loop46;
                                                                                                                                                            }
                                                                                                                                                            addr408:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§4o§);
                                                                                                                                                         break loop44;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop33;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr251:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr251);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr276:
                                                                                                                                    }
                                                                                                                                    §§goto(addr343);
                                                                                                                                 }
                                                                                                                                 addr342:
                                                                                                                              }
                                                                                                                              §§goto(addr408);
                                                                                                                           }
                                                                                                                           §§goto(addr342);
                                                                                                                        }
                                                                                                                        continue loop11;
                                                                                                                        addr289:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr324:
                                                                                                                     }
                                                                                                                     addr324:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop10;
                                                                                                                     §§goto(addr356);
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            §§goto(addr269);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§'"C§ = true;
                                                                                                            addr189:
                                                                                                            loop29:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  if(_loc5_ || param2)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr26);
                                                                                                                     }
                                                                                                                     addr144:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc5_ || param1)
                                                                                                                        {
                                                                                                                           this.§'"C§ = true;
                                                                                                                        }
                                                                                                                        §§goto(addr276);
                                                                                                                        addr217:
                                                                                                                        if(§§pop() < §§pop())
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        loop36:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.mCurrentCameraSliderLocation);
                                                                                                                           if(_loc4_ && param1)
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           §§push(§-5§);
                                                                                                                           if(!(_loc5_ || _loc3_))
                                                                                                                           {
                                                                                                                              while(_loc5_ || _loc3_)
                                                                                                                              {
                                                                                                                                 continue loop36;
                                                                                                                              }
                                                                                                                              continue loop1;
                                                                                                                              addr210:
                                                                                                                           }
                                                                                                                           if(§§pop() > §§pop())
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr144);
                                                                                                                        }
                                                                                                                        continue loop29;
                                                                                                                        addr167:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr276);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr167);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr276);
                                                                                                   }
                                                                                                   §§goto(addr189);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop39:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc4_ && this))
                                                                                                      {
                                                                                                         §§goto(addr26);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§'"C§ = true;
                                                                                                            continue loop39;
                                                                                                         }
                                                                                                         addr143:
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr26);
                                                                                                if(!(_loc5_ || param1))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   continue loop23;
                                                                                                }
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§1!A§();
                                                                                                      addr159:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_ || _loc3_)
                                                                                                         {
                                                                                                            this.§ "R§ = §-5§ / (§-5§ / 500);
                                                                                                            §§goto(addr143);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                            addr322:
                                                                                                         }
                                                                                                         §§goto(addr324);
                                                                                                      }
                                                                                                   }
                                                                                                   addr157:
                                                                                                }
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§goto(addr52);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr453);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr243);
                                                                                       }
                                                                                       §§goto(addr159);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr157);
                                                                           }
                                                                           §§goto(addr289);
                                                                        }
                                                                        §§goto(addr324);
                                                                     }
                                                                     §§goto(addr322);
                                                                  }
                                                                  continue loop5;
                                                                  addr320:
                                                               }
                                                               §§goto(addr375);
                                                               if(_loc4_ && param2)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr320);
                                                            }
                                                            continue loop13;
                                                         }
                                                         addr365:
                                                      }
                                                      §§goto(addr407);
                                                   }
                                                }
                                             }
                                          }
                                          continue loop8;
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              continue loop2;
                              if(!(_loc5_ || param2))
                              {
                                 continue;
                              }
                              §§goto(addr342);
                              §§push(this.§`7§);
                           }
                        }
                     }
                  }
                  §§goto(addr26);
               }
            }
         }
         §§goto(addr397);
      }
      
      public function §1!A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.mCurrentAction);
            while(true)
            {
               §§push(§',§);
               loop1:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        this.§5"@§(§9!E§);
                     }
                  }
                  else
                  {
                     §§push(this.mCurrentAction);
                     loop2:
                     while(true)
                     {
                        §§push(§9!E§);
                        addr125:
                        while(_loc2_ || _loc2_)
                        {
                           if(§§pop() != §§pop())
                           {
                              §§push(this.mCurrentCameraSliderLocation);
                              loop4:
                              while(true)
                              {
                                 §§push(§-5§);
                                 addr93:
                                 while(true)
                                 {
                                    §§push(2);
                                    addr94:
                                    while(true)
                                    {
                                       §§push(§§pop() / §§pop());
                                       addr95:
                                       addr96:
                                       addr99:
                                       while(§§pop() < §§pop())
                                       {
                                          §§push(this.mCurrentCameraSliderLocation);
                                          if(_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          continue loop4;
                                       }
                                       this.§5"@§(§9!E§);
                                       if(_loc2_ || this)
                                       {
                                          if(_loc2_)
                                          {
                                             break loop1;
                                          }
                                          addr133:
                                          if(!_loc2_)
                                          {
                                             break loop1;
                                             addr153:
                                          }
                                          this.§5"@§(§',§);
                                       }
                                       break loop1;
                                    }
                                 }
                              }
                           }
                           §§goto(addr133);
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr153);
               }
               return;
            }
         }
         §§goto(addr81);
      }
      
      public function §9<§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ "'§ = param1;
            do
            {
               if(this.mCurrentCameraSliderLocation < §-5§ / 2)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§5"@§(§9!E§);
                  }
                  continue;
               }
               this.§5"@§(§',§);
               if(_loc3_)
               {
                  continue;
               }
            }
            while(_loc3_ && this);
            
            §§goto(addr19);
         }
         addr19:
      }
      
      public function goToBirdView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§5"@§(§9!E§);
         }
      }
      
      public function goToCastleView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§5"@§(§',§);
         }
      }
      
      public function §5"@§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§+l§);
            loop0:
            while(true)
            {
               §§push(this.§-"D§);
               loop1:
               while(true)
               {
                  §§pop().x = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this.§+l§);
                     addr77:
                     loop3:
                     while(_loc2_)
                     {
                        §§push(this.§,5§);
                        while(_loc2_)
                        {
                           §§pop().y = §§pop();
                           while(_loc2_)
                           {
                              continue loop3;
                              loop8:
                              while(_loc2_)
                              {
                                 this.mCurrentAction = param1;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr44:
                                    if(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          this.§!"6§ = §<"E§;
                                          continue loop8;
                                          §§goto(addr44);
                                       }
                                       addr73:
                                    }
                                    return;
                                 }
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§+l§);
            if(_loc2_)
            {
               §§push(§<"E§);
               if(!_loc3_)
               {
                  §§pop().scale = §§pop();
                  §§goto(addr73);
               }
               §§goto(addr81);
            }
            §§goto(addr77);
         }
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.mCurrentCameraSliderLocation);
            loop0:
            while(true)
            {
               §§push(§-5§);
               addr83:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     continue loop0;
                  }
                  if(!_loc2_)
                  {
                     addr87:
                     return true;
                  }
                  addr88:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public function §%!J§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.mCurrentCameraSliderLocation);
            loop0:
            while(§§pop() != 0)
            {
               while(true)
               {
                  §§push(this.mCurrentAction);
                  if(!_loc3_)
                  {
                     if(§§pop() != §9!E§)
                     {
                        break;
                     }
                     if(_loc3_ && this)
                     {
                        break;
                     }
                     addr78:
                     if(_loc2_ || _loc3_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr75);
                        }
                        break loop0;
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§push(false);
               if(_loc2_)
               {
                  return §§pop();
               }
               addr75:
               §§push(true);
               if(_loc2_)
               {
                  return §§pop();
               }
               addr84:
               return §§pop();
            }
            §§goto(addr84);
            §§push(true);
         }
         §§goto(addr78);
      }
      
      public function §4!^§(param1:§1S§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`"C§ = param1;
            loop0:
            while(this.§`"C§ == null)
            {
               this.§-"D§ = this.§'f§.x;
               loop1:
               while(_loc2_ || _loc3_)
               {
                  this.§,5§ = this.§'f§.y;
                  loop2:
                  while(_loc2_ || this)
                  {
                     loop10:
                     while(true)
                     {
                        §<"E§ = this.§'f§.scale;
                        while(_loc2_)
                        {
                           this.§'f§ = null;
                           if(_loc2_ || param1)
                           {
                              if(_loc2_)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§goto(addr19);
                                       }
                                       continue loop0;
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       §§push(this.§'f§);
                                       addr139:
                                       while(true)
                                       {
                                          §§push(this.§,5§);
                                          addr141:
                                          addr150:
                                          while(!_loc3_)
                                          {
                                             §§pop().y = §§pop();
                                             break loop10;
                                          }
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             continue loop12;
                                          }
                                          break loop10;
                                       }
                                    }
                                 }
                                 break loop10;
                              }
                              continue loop1;
                           }
                        }
                        continue loop2;
                     }
                     while(true)
                     {
                        §§push(this.§'f§);
                        if(_loc2_)
                        {
                           addr107:
                           if(_loc2_ || _loc3_)
                           {
                              §§push(§<"E§);
                              if(_loc2_)
                              {
                                 §§pop().scale = §§pop();
                                 break loop2;
                              }
                              §§goto(addr141);
                           }
                           while(true)
                           {
                              §§goto(addr150);
                              §§goto(addr107);
                           }
                           addr148:
                        }
                        §§goto(addr139);
                     }
                  }
                  while(_loc3_ && this)
                  {
                     break loop0;
                  }
                  addr19:
                  return;
               }
               while(true)
               {
                  §§goto(addr148);
                  §§push(this.§'f§);
                  break loop0;
               }
            }
            while(true)
            {
               this.§'f§ = new §1S§();
               §§goto(addr161);
            }
         }
         §§goto(addr85);
      }
      
      protected function § !@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.isOnCastleView())
            {
               this.goToBirdView();
               if(_loc2_)
               {
                  if(_loc1_ && _loc1_)
                  {
                     addr52:
                     this.goToCastleView();
                     addr54:
                  }
                  return;
               }
               §§goto(addr54);
            }
         }
         §§goto(addr52);
      }
      
      public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§4`§);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(!param1)
            {
               §§push(_loc3_);
               while(true)
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§push(param2);
                     while(true)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop() - §§pop());
                           loop2:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop3:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    _loc3_ = §§pop();
                                    while(true)
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§push(Number(Math.max(this.§"!?§,Math.min(this.§["C§,_loc3_))));
                                          loop6:
                                          while(_loc5_ || _loc3_)
                                          {
                                             _loc3_ = §§pop();
                                             while(true)
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop6;
                                                   }
                                                   addr26:
                                                   return;
                                                   addr114:
                                                }
                                                else
                                                {
                                                   addr152:
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   break loop6;
                                                }
                                             }
                                             while(true)
                                             {
                                                continue loop5;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(param2);
                                             addr154:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr155:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr149:
                                 }
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    §§goto(addr157);
                                 }
                              }
                           }
                        }
                        §§goto(addr154);
                     }
                  }
                  §§goto(addr155);
               }
            }
            §§goto(addr152);
         }
         §§goto(addr114);
      }
      
      public function §>!U§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§=!r§);
         if(_loc1_)
         {
            §§push(this.§"!?§);
            if(!_loc2_)
            {
               §§push(§§pop() - §§pop());
               if(_loc1_ || this)
               {
                  addr42:
                  §§push(this.§["C§);
                  if(!(_loc2_ && _loc1_))
                  {
                     addr51:
                     §§push(§§pop() - this.§"!?§);
                  }
                  return §§pop() / §§pop();
               }
            }
            §§goto(addr51);
         }
         §§goto(addr42);
      }
      
      public function §?"P§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this);
            §§push(Math.min(Math.max(param1,0),1) * (this.§["C§ - this.§"!?§));
            if(_loc3_ || param1)
            {
               §§push(§§pop() + this.§"!?§);
            }
            §§pop().§=!r§ = §§pop();
         }
      }
      
      public function §`!+§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§4`§ = Math.max(this.§4`§ - 0.5,0.5);
         }
      }
      
      public function §9!%§() : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §;!s§() : Number
      {
         return this.§-"D§;
      }
      
      public function §!"G§() : Number
      {
         return this.§,5§;
      }
   }
}
