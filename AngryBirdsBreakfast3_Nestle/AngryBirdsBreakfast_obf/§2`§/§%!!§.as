package §2`§
{
   import §!!!§.§6!l§;
   import §0!B§.§^!B§;
   import §8! §.§2!f§;
   import §8! §.§9q§;
   import §8! §.§^"-§;
   import §=!4§.§ !5§;
   import §=!4§.Texture;
   import §?@§.§6!F§;
   import §^!^§.getNextPowerOfTwo;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.FileReference;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §%!!§ extends EventDispatcher
   {
      
      protected static const §4! §:Number = 20;
      
      private static const §>&§:int = 2048;
      
      private static const §9!<§:int = 8;
      
      private static var §'E§:§%!!§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §4! § = 20;
         }
         while(true)
         {
            §>&§ = 2048;
            while(_loc1_ || §%!!§)
            {
               §9!<§ = 8;
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      private var §5"%§:Dictionary;
      
      private var §^!e§:Vector.<String>;
      
      private var §!!Q§:Vector.<§2!f§>;
      
      private var §["!§:Dictionary;
      
      private var §]!F§:Boolean;
      
      private var §06§:Boolean;
      
      private var §%"&§:int;
      
      private var §?0§:String;
      
      private var §&!7§:Texture;
      
      private var §"!>§:int;
      
      private var §1!s§:int;
      
      private var §0b§:§^!B§;
      
      private var §="'§:Timer;
      
      private var §&!0§:Vector.<BitmapData>;
      
      public function §%!!§(param1:String = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&!0§ = new Vector.<BitmapData>();
            loop0:
            while(true)
            {
               super();
               addr106:
               while(true)
               {
                  this.§!!Q§ = new Vector.<§2!f§>();
                  loop2:
                  while(true)
                  {
                     this.§5"%§ = new Dictionary();
                     addr84:
                     while(true)
                     {
                        this.§^!e§ = new Vector.<String>();
                        addr69:
                        while(!_loc3_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         loop5:
         while(true)
         {
            this.§?0§ = param1;
            while(!_loc3_)
            {
               this.§0b§ = new §^!B§(§>&§,§>&§);
               if(!_loc2_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  continue loop5;
               }
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     break loop5;
                  }
                  §§goto(addr106);
               }
               §§goto(addr84);
            }
            §§goto(addr69);
         }
      }
      
      public static function get §,2§() : §%!!§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §%!!§)
         {
            §§push(§'E§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §'E§ = new §%!!§("main");
                     addr59:
                     §§push(§'E§);
                  }
               }
               §§goto(addr59);
            }
            return §§pop();
         }
         §§goto(addr59);
      }
      
      private static function §@O§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §'!v§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §<"3§(param1:int, param2:int) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param2 * 1000000);
         if(!(_loc3_ && param1))
         {
            return §§pop() + param1;
         }
      }
      
      public function get §>3§() : int
      {
         return this.§"!>§;
      }
      
      public function get §4Y§() : int
      {
         return this.§1!s§;
      }
      
      public function get id() : String
      {
         return this.§?0§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§5E§ = null;
         var _loc2_:§2!f§ = null;
         if(!_loc5_)
         {
            if(this.§5"%§)
            {
               addr28:
               var _loc3_:int = 0;
               var _loc4_:* = this.§5"%§;
               loop20:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc5_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc6_ || _loc1_)
                        {
                           this.§ f§(_loc1_.texture.parent);
                           if(!_loc5_)
                           {
                              _loc1_.dispose();
                           }
                        }
                        continue;
                     }
                     if(_loc6_)
                     {
                        if(!_loc5_)
                        {
                           if(!(_loc5_ && _loc1_))
                           {
                              this.§5"%§ = null;
                              if(!(_loc5_ && _loc1_))
                              {
                                 addr89:
                                 this.§^!e§ = null;
                                 if(_loc6_ || this)
                                 {
                                    if(this.§!!Q§)
                                    {
                                       if(!_loc5_)
                                       {
                                          addr104:
                                          _loc3_ = 0;
                                          if(!_loc5_)
                                          {
                                             addr108:
                                             _loc4_ = this.§!!Q§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc4_,_loc3_));
                                                break loop20;
                                             }
                                             addr128:
                                          }
                                          if(_loc6_)
                                          {
                                             this.§!!Q§ = null;
                                             loop1:
                                             while(true)
                                             {
                                                addr293:
                                                while(true)
                                                {
                                                   if(this.§["!§)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§["!§ = null;
                                                         addr309:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr306:
                                                   }
                                                   while(true)
                                                   {
                                                      if(this.§&!0§)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§&!0§ = null;
                                                            addr291:
                                                            while(true)
                                                            {
                                                            }
                                                            addr247:
                                                            if(!(_loc6_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            this.§="'§.stop();
                                                            loop13:
                                                            while(!_loc6_)
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§&!7§ = null;
                                                                  loop11:
                                                                  for(; !_loc5_; while(true)
                                                                  {
                                                                     if(_loc5_ && _loc1_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        §§goto(addr247);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr291);
                                                                     }
                                                                  })
                                                                  {
                                                                     while(this.§="'§)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        this.§!!Q§ = new Vector.<§2!f§>();
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              if(_loc6_ || _loc2_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§5"%§ = new Dictionary();
                                                                                    do
                                                                                    {
                                                                                       this.§["!§ = new Dictionary();
                                                                                    }
                                                                                    while(!(_loc6_ || _loc3_));
                                                                                    
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                                 return;
                                                                                 addr193:
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr228:
                                                                              while(_loc6_ || this)
                                                                              {
                                                                                 if(_loc5_ && _loc3_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§goto(addr306);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§="'§ = null;
                                                                                 §§goto(addr198);
                                                                              }
                                                                              addr198:
                                                                              addr228:
                                                                           }
                                                                           §§goto(addr309);
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                            this.§="'§.removeEventListener(TimerEvent.TIMER,this.§1T§);
                                                            §§goto(addr228);
                                                         }
                                                         addr288:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§&!7§);
                                                         if(!_loc5_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc5_ && _loc1_))
                                                               {
                                                                  addr282:
                                                                  this.§&!7§.dispose();
                                                               }
                                                               §§goto(addr283);
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                         §§goto(addr282);
                                                         §§goto(addr291);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr228);
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr293);
                                 }
                                 §§goto(addr291);
                              }
                              §§goto(addr104);
                           }
                           §§goto(addr288);
                        }
                     }
                     §§goto(addr108);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(!(_loc5_ && _loc3_))
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr108);
               }
            }
            §§goto(addr89);
         }
         §§goto(addr28);
      }
      
      protected function §@m§(param1:String) : §2!f§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§2!f§ = null;
         for each(_loc2_ in this.§!!Q§)
         {
            if(_loc5_)
            {
               if(_loc2_.name == param1)
               {
                  if(_loc5_ || _loc2_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function §^!0§(param1:§9q§, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(this.§]!F§)
            {
               if(!(_loc6_ && param1))
               {
                  return;
               }
            }
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§2!f§;
         if(!(_loc4_ = this.§@m§(_loc3_)))
         {
            if(!_loc6_)
            {
               _loc4_ = new §2!f§(_loc3_);
               if(_loc5_)
               {
                  this.§!!Q§.push(_loc4_);
                  addr73:
                  _loc4_.§^",§(param1);
               }
               §§goto(addr73);
            }
            return;
         }
         §§goto(addr73);
      }
      
      private function §3!y§(param1:Vector.<§9q§>, param2:§^!B§, param3:int, param4:int, param5:int) : int
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:§9q§ = null;
         var _loc12_:int = 0;
         var _loc13_:§^"-§ = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc7_:* = int(param1.length + 1);
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         loop0:
         while(true)
         {
            §§push(0);
            loop1:
            while(true)
            {
               _loc9_ = §§pop();
               while(true)
               {
                  §§push(0);
                  while(true)
                  {
                     _loc8_ = §§pop();
                     while(true)
                     {
                        §§push(_loc7_);
                        while(true)
                        {
                           §§push(§§pop() - 1);
                           loop6:
                           while(!_loc17_)
                           {
                              _loc7_ = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(1);
                                 addr86:
                                 addr320:
                                 while(true)
                                 {
                                    if(_loc16_ || param3)
                                    {
                                       _loc10_ = §§pop();
                                       if(!_loc16_)
                                       {
                                          break;
                                       }
                                       continue loop7;
                                    }
                                    continue loop6;
                                 }
                                 §§push(param2.§65§());
                                 if(!_loc17_)
                                 {
                                    addr324:
                                    §§push(int(§§pop()));
                                    if(_loc16_)
                                    {
                                       addr327:
                                       §§push(§§pop());
                                       if(!_loc17_)
                                       {
                                          addr330:
                                          _loc8_ = §§pop();
                                          if(!(_loc17_ && param1))
                                          {
                                             addr349:
                                             if(§§pop() < _loc9_)
                                             {
                                                continue loop0;
                                             }
                                             return _loc6_;
                                          }
                                       }
                                    }
                                    §§goto(addr349);
                                 }
                                 §§goto(addr327);
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
      
      private function §`u§(param1:Vector.<§9q§>, param2:§^!B§, param3:BitmapData) : §9q§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(0);
            loop1:
            while(true)
            {
               §§pop().§§slot[7] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[8] = §§pop();
                        loop5:
                        while(!(_loc5_ && this))
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(0);
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[9] = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop10:
                                       while(true)
                                       {
                                          §§pop().§§slot[10] = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             loop12:
                                             while(true)
                                             {
                                                §§push(0);
                                                loop13:
                                                while(true)
                                                {
                                                   §§pop().§§slot[11] = §§pop();
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(null);
                                                         loop16:
                                                         while(_loc6_ || this)
                                                         {
                                                            §§pop().§§slot[12] = §§pop();
                                                            loop17:
                                                            while(!_loc5_)
                                                            {
                                                               §§push(§§newactivation());
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(null);
                                                                  addr837:
                                                                  while(_loc6_)
                                                                  {
                                                                     §§pop().§§slot[13] = §§pop();
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        continue loop9;
                                                                        addr787:
                                                                        if(!(_loc6_ || this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(§§newactivation());
                                                                        loop28:
                                                                        while(true)
                                                                        {
                                                                           §§pop().§§slot[2] = param2;
                                                                           loop29:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!(_loc6_ || this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§newactivation());
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                    addr797:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                    continue loop0;
                                                                                    addr676:
                                                                                    if(!(_loc5_ && param3))
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§pop().§§slot[6] = new §9q§(targetBitmap);
                                                                                          while(_loc6_ || this)
                                                                                          {
                                                                                             addr698:
                                                                                             §§push(§§newactivation());
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr640:
                                                                                                   §§push(0);
                                                                                                   if(!(_loc6_ || param2))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§pop().§§slot[4] = §§pop();
                                                                                                         §§goto(addr640);
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                      addr727:
                                                                                                   }
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   §§pop().§§slot[7] = §§pop();
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr657:
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            continue loop28;
                                                                                                            §§goto(addr657);
                                                                                                         }
                                                                                                         addr757:
                                                                                                      }
                                                                                                      if(!(_loc6_ || param1))
                                                                                                      {
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                      addr223:
                                                                                                      §§push(i);
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc6_ || param2)
                                                                                                      {
                                                                                                         addr235:
                                                                                                         if(§§pop() >= §§pop().§§slot[4])
                                                                                                         {
                                                                                                            addr236:
                                                                                                            if(_loc6_ || param3)
                                                                                                            {
                                                                                                               if(!(_loc5_ && param2))
                                                                                                               {
                                                                                                                  addr251:
                                                                                                                  packedIds.sort(function(param1:int, param2:int):int
                                                                                                                  {
                                                                                                                     if(param1 < param2)
                                                                                                                     {
                                                                                                                        return -1;
                                                                                                                     }
                                                                                                                     return 1;
                                                                                                                  });
                                                                                                                  addr254:
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(_loc6_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc6_ || this)
                                                                                                                              {
                                                                                                                                 §§push(int(§§pop().§§slot[5].length - 1));
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       if(_loc6_ || param3)
                                                                                                                                       {
                                                                                                                                          §§pop().§§slot[7] = §§pop();
                                                                                                                                          addr206:
                                                                                                                                          if(!(_loc5_ && param1))
                                                                                                                                          {
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                if(_loc6_ || this)
                                                                                                                                                {
                                                                                                                                                   addr22:
                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().§§slot[7]);
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc5_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() < §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc6_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc6_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr61:
                                                                                                                                                                                 §§push(§§newactivation());
                                                                                                                                                                                 if(!(_loc5_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().§§slot[6]);
                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr284:
                                                                                                                                                                                          if(_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§newactivation());
                                                                                                                                                                                             if(_loc6_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().§-"#§(§§pop().§§slot[15]);
                                                                                                                                                                                                addr296:
                                                                                                                                                                                                if(!(_loc5_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr257:
                                                                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                                                                   if(_loc6_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr267:
                                                                                                                                                                                                      var i:int = §§pop().§§slot[7] + 1;
                                                                                                                                                                                                      addr269:
                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr223);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         this.§3!,§(bitmap,targetBitmap,sprite.rect,rect);
                                                                                                                                                                                                         addr447:
                                                                                                                                                                                                         var packedSprite:§^"-§ = new §^"-§();
                                                                                                                                                                                                         addr487:
                                                                                                                                                                                                         addr466:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
                                                                                                                                                                                                         addr417:
                                                                                                                                                                                                         addr444:
                                                                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr410:
                                                                                                                                                                                                               §§pop().§§slot[15].pivotX = sprite.pivotX;
                                                                                                                                                                                                               addr409:
                                                                                                                                                                                                               addr408:
                                                                                                                                                                                                               addr407:
                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr362:
                                                                                                                                                                                                                  §§push(§§newactivation());
                                                                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc5_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr372:
                                                                                                                                                                                                                        §§push(§§pop().§§slot[15]);
                                                                                                                                                                                                                        if(_loc6_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr381:
                                                                                                                                                                                                                           §§push(sprite.pivotY);
                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().pivotY = §§pop();
                                                                                                                                                                                                                              addr385:
                                                                                                                                                                                                                              if(!(_loc5_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc5_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr306:
                                                                                                                                                                                                                                    §§push(§§newactivation());
                                                                                                                                                                                                                                    if(_loc6_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().§§slot[15]);
                                                                                                                                                                                                                                          if(_loc6_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc6_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().§§slot[13]);
                                                                                                                                                                                                                                                      if(!(_loc5_ && param3))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop().name = §§pop().name;
                                                                                                                                                                                                                                                            addr357:
                                                                                                                                                                                                                                                            if(_loc6_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr276:
                                                                                                                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                                                                                                                               if(!(_loc5_ && param3))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr284);
                                                                                                                                                                                                                                                                  §§push(§§pop().§§slot[6]);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr362);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr502:
                                                                                                                                                                                                                                                            combinedSheet.scale = spriteSheet.scale;
                                                                                                                                                                                                                                                            addr492:
                                                                                                                                                                                                                                                            var sprite:§^"-§ = spriteSheet.§0@§(rectangleIndex);
                                                                                                                                                                                                                                                            addr524:
                                                                                                                                                                                                                                                            addr491:
                                                                                                                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                                                                                                                            if(!_loc5_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr472:
                                                                                                                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc5_ && param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop().§§slot[12]);
                                                                                                                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop().§§slot[14] = §§pop().bitmapData;
                                                                                                                                                                                                                                                                        §§goto(addr487);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr492);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr624:
                                                                                                                                                                                                                                                                  §§pop().§§slot[8] = §§pop().§§slot[2].§^!s§(i,null);
                                                                                                                                                                                                                                                                  addr581:
                                                                                                                                                                                                                                                                  addr623:
                                                                                                                                                                                                                                                                  §§push(§§newactivation());
                                                                                                                                                                                                                                                                  §§push(rectanglePacker);
                                                                                                                                                                                                                                                                  if(!(_loc5_ && param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§newactivation());
                                                                                                                                                                                                                                                                     if(!(_loc5_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop().§§slot[7]);
                                                                                                                                                                                                                                                                        if(!(_loc5_ && this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr614:
                                                                                                                                                                                                                                                                           §§push(§§pop().§<"3§(§§pop()));
                                                                                                                                                                                                                                                                           if(!(_loc5_ && param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().§§slot[9] = §§pop();
                                                                                                                                                                                                                                                                           addr564:
                                                                                                                                                                                                                                                                           §§push(§§newactivation());
                                                                                                                                                                                                                                                                           §§push(int(§@O§(rectangleId)));
                                                                                                                                                                                                                                                                           if(!(_loc5_ && this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().§§slot[10] = §§pop();
                                                                                                                                                                                                                                                                              addr577:
                                                                                                                                                                                                                                                                              §§push(§§newactivation());
                                                                                                                                                                                                                                                                              §§push(§'!v§(rectangleId));
                                                                                                                                                                                                                                                                              if(_loc6_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr560:
                                                                                                                                                                                                                                                                                 §§pop().§§slot[11] = int(§§pop());
                                                                                                                                                                                                                                                                                 if(packedIds.indexOf(sheetIndex) < 0)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr533:
                                                                                                                                                                                                                                                                                    if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr541:
                                                                                                                                                                                                                                                                                       packedIds.push(sheetIndex);
                                                                                                                                                                                                                                                                                       addr506:
                                                                                                                                                                                                                                                                                       §§push(§§newactivation());
                                                                                                                                                                                                                                                                                       if(_loc6_ || param3)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr516:
                                                                                                                                                                                                                                                                                          §§push(§§newactivation());
                                                                                                                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop().§§slot[12] = §§pop().§§slot[1][sheetIndex];
                                                                                                                                                                                                                                                                                             §§goto(addr524);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr581);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr564);
                                                                                                                                                                                                                                                                                       addr545:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr577);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr506);
                                                                                                                                                                                                                                                                                 addr561:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr560);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr614);
                                                                                                                                                                                                                                                                           addr615:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr624);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr623);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr622:
                                                                                                                                                                                                                                                                  §§goto(addr622);
                                                                                                                                                                                                                                                                  addr621:
                                                                                                                                                                                                                                                                  addr628:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr491);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr621);
                                                                                                                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                                                                                                                            addr505:
                                                                                                                                                                                                                                                            addr490:
                                                                                                                                                                                                                                                            addr497:
                                                                                                                                                                                                                                                            addr500:
                                                                                                                                                                                                                                                            addr501:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr409);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr381);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr408);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr381);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr417);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr372);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr492);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr417);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr505);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr444);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr410);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr407);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr577);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr490);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr466);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr541);
                                                                                                                                                                                                         addr416:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr497);
                                                                                                                                                                                                      addr265:
                                                                                                                                                                                                      addr266:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr500);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr628);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr502);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr501);
                                                                                                                                                                                       }
                                                                                                                                                                                       return §§pop();
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr624);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr78:
                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc6_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc5_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc5_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr102:
                                                                                                                                                                                             §§push(§§pop().§§slot[7]);
                                                                                                                                                                                             if(!(_loc5_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr112:
                                                                                                                                                                                                   §§push(§§pop() - 1);
                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§newactivation());
                                                                                                                                                                                                      if(_loc6_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().§§slot[7] = §§pop();
                                                                                                                                                                                                         addr124:
                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr22);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr545);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr155:
                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc6_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr78);
                                                                                                                                                                                                                  §§push(§§newactivation());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr385);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr357);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr254);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr223);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr265);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr266);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr560);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr416);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr223);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr133:
                                                                                                                                                                                 if(!(_loc5_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc6_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().§§slot[1].splice(packedIds[i],1);
                                                                                                                                                                                       §§goto(addr155);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr306);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr254);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr533);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr236);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr206);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr124);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr133);
                                                                                                                                                                  §§push(§§newactivation());
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr235);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr102);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr112);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr251);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr61);
                                                                                                                                                }
                                                                                                                                                §§goto(addr561);
                                                                                                                                             }
                                                                                                                                             §§goto(addr410);
                                                                                                                                          }
                                                                                                                                          §§goto(addr296);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr614);
                                                                                                                                 }
                                                                                                                                 §§goto(addr560);
                                                                                                                              }
                                                                                                                              §§goto(addr516);
                                                                                                                           }
                                                                                                                           §§goto(addr472);
                                                                                                                        }
                                                                                                                        §§goto(addr447);
                                                                                                                     }
                                                                                                                     §§goto(addr276);
                                                                                                                  }
                                                                                                                  §§goto(addr257);
                                                                                                               }
                                                                                                               §§goto(addr615);
                                                                                                            }
                                                                                                            §§goto(addr269);
                                                                                                         }
                                                                                                         §§goto(addr357);
                                                                                                         §§push(§§newactivation());
                                                                                                      }
                                                                                                      §§goto(addr267);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(_loc6_)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_ && param1)
                                                                                                            {
                                                                                                               continue loop28;
                                                                                                            }
                                                                                                            §§goto(addr676);
                                                                                                            §§goto(addr698);
                                                                                                         }
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      addr709:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§goto(addr787);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr797);
                                                                                                               }
                                                                                                               addr833:
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop20;
                                                                                                         addr785:
                                                                                                      }
                                                                                                      if(_loc5_ && param2)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                   }
                                                                                                   while(_loc6_)
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                      continue loop12;
                                                                                                      §§goto(addr734);
                                                                                                   }
                                                                                                   continue loop14;
                                                                                                   addr816:
                                                                                                }
                                                                                                while(!_loc5_)
                                                                                                {
                                                                                                   §§pop().§§slot[5] = new Vector.<int>();
                                                                                                   §§goto(addr709);
                                                                                                }
                                                                                                continue loop18;
                                                                                             }
                                                                                             §§goto(addr669);
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop16;
                                                               }
                                                            }
                                                            continue loop11;
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
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      private function §3!,§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc7_:Rectangle = null;
         var _loc8_:int = 0;
         var _loc9_:* = 0;
         if(_loc10_)
         {
            param2.copyPixels(param1,param3,param4.topLeft);
         }
         var _loc5_:int = param4.width - param3.width;
         var _loc6_:int = param4.height - param3.height;
         if(!(_loc11_ && param2))
         {
            if(_loc5_)
            {
               addr54:
               _loc7_ = new Rectangle(param3.right - 1,param3.y,1,param3.height);
               if(!_loc11_)
               {
                  _loc8_ = 0;
               }
               loop4:
               while(true)
               {
                  while(_loc8_ < _loc5_)
                  {
                     param2.copyPixels(param1,_loc7_,new Point(param4.right - 1 - _loc8_,param4.y));
                     if(_loc11_ && param3)
                     {
                        break;
                     }
                     _loc8_++;
                     if(_loc11_ && this)
                     {
                        break;
                     }
                     if(false)
                     {
                        continue loop4;
                     }
                  }
               }
            }
            §§push(_loc6_);
            if(!(_loc11_ && this))
            {
               if(§§pop())
               {
                  if(_loc10_)
                  {
                     _loc7_ = new Rectangle(param3.x,param3.bottom - 1,param3.width,1);
                     if(_loc10_ || param2)
                     {
                        §§push(0);
                        if(!(_loc11_ && param1))
                        {
                           _loc9_ = §§pop();
                           while(true)
                           {
                              addr169:
                              addr160:
                              while(true)
                              {
                                 addr213:
                                 while(true)
                                 {
                                    §§push(_loc9_);
                                 }
                              }
                              if(_loc11_ && param1)
                              {
                                 continue;
                              }
                              if(false)
                              {
                                 §§goto(addr169);
                              }
                              §§goto(addr213);
                           }
                        }
                        while(true)
                        {
                           if(§§pop() < _loc6_)
                           {
                              param2.copyPixels(param1,_loc7_,new Point(param4.x,param4.bottom - 1 - _loc9_));
                              if(_loc10_ || param2)
                              {
                                 _loc9_++;
                                 if(!(_loc10_ || param3))
                                 {
                                    break;
                                 }
                                 §§goto(addr160);
                              }
                              break;
                           }
                           break;
                           §§goto(addr213);
                        }
                        addr216:
                        if(_loc5_ * _loc6_ > 0)
                        {
                        }
                     }
                     §§goto(addr216);
                  }
                  return;
               }
            }
            §§goto(addr216);
         }
         §§goto(addr54);
      }
      
      public function §,!X§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§6!l§.§<E§());
            loop0:
            for(; §§pop(); if(!(_loc1_ || _loc2_))
            {
               continue;
            },§§goto(addr53),§§push(!§§pop()))
            {
               loop1:
               while(true)
               {
                  §§push(this.§06§);
                  loop2:
                  while(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        this.§06§ = true;
                        while(true)
                        {
                           if(_loc1_ || this)
                           {
                              if(_loc2_)
                              {
                                 break loop2;
                              }
                              this.§%"&§ = getTimer();
                              if(_loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    break loop0;
                                 }
                                 §§push(this.§==§());
                                 if(!_loc1_)
                                 {
                                    return §§pop();
                                 }
                                 addr53:
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 if(_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       return §§pop();
                                    }
                                    addr103:
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              continue;
                           }
                           if(_loc2_)
                           {
                              break loop3;
                           }
                           continue loop3;
                        }
                        §§goto(addr85);
                     }
                     continue loop1;
                  }
                  addr85:
                  return §§pop();
               }
            }
         }
         §§goto(addr103);
         §§push(false);
      }
      
      private function §9!D§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§>3§);
         if(!(_loc5_ && _loc3_))
         {
            §§push(int(§§pop() / 1024));
         }
         var _loc1_:* = §§pop();
         §§push(this.§4Y§);
         if(!_loc5_)
         {
            §§push(int(§§pop() / 1024));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = getTimer();
         if(!(_loc5_ && _loc3_))
         {
            this.§!!Q§ = new Vector.<§2!f§>();
            loop0:
            while(true)
            {
               this.§]!F§ = true;
               loop1:
               while(true)
               {
                  if(!this.§="'§)
                  {
                     loop6:
                     while(true)
                     {
                        dispatchEvent(new Event(Event.INIT));
                        if(_loc4_ || this)
                        {
                           addr77:
                           if(!(_loc5_ && _loc3_))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        addr89:
                        loop5:
                        while(!(_loc5_ && this))
                        {
                           if(!_loc4_)
                           {
                              while(true)
                              {
                                 this.§="'§.removeEventListener(TimerEvent.TIMER,this.§1T§);
                                 break loop5;
                              }
                              addr129:
                           }
                           continue loop6;
                        }
                        continue loop1;
                     }
                  }
                  else
                  {
                     addr53:
                  }
                  continue loop0;
                  return;
               }
            }
         }
         while(true)
         {
            §§goto(addr53);
         }
      }
      
      private function §1T§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§==§();
         }
      }
      
      private function §==§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:§2!f§ = null;
         var _loc3_:int = 0;
         if(!_loc4_)
         {
            if(this.§!!Q§.length > 0)
            {
               if(_loc5_ || _loc2_)
               {
                  _loc1_ = getTimer();
                  if(!_loc4_)
                  {
                     _loc2_ = this.§!!Q§.pop();
                     if(_loc5_)
                     {
                        this.§-i§(_loc2_);
                     }
                     loop0:
                     while(true)
                     {
                        while(true)
                        {
                           _loc2_.dispose();
                           do
                           {
                              _loc3_ = getTimer();
                           }
                           while(_loc4_);
                           
                           if(!(_loc4_ && _loc3_))
                           {
                              if(true)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        addr76:
                        if(this.§!!Q§.length == 0)
                        {
                           if(_loc5_ || _loc1_)
                           {
                              this.§9!D§();
                              if(!_loc5_)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    addr112:
                                    loop4:
                                    while(true)
                                    {
                                       this.§="'§.start();
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       addr139:
                                       while(true)
                                       {
                                          continue loop4;
                                       }
                                    }
                                    if(_loc4_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    if(_loc5_ || this)
                                    {
                                       break;
                                    }
                                    addr176:
                                    while(true)
                                    {
                                       this.§="'§.addEventListener(TimerEvent.TIMER,this.§1T§);
                                       continue loop3;
                                    }
                                 }
                                 addr132:
                                 addr148:
                              }
                              return this.§!!Q§.length > 0;
                           }
                           §§goto(addr176);
                        }
                        else
                        {
                           if(!this.§="'§)
                           {
                              if(!(_loc4_ && this))
                              {
                                 this.§="'§ = new Timer(§4! §,0);
                              }
                              §§goto(addr176);
                           }
                           else
                           {
                              this.§="'§.stop();
                           }
                           §§goto(addr139);
                        }
                     }
                  }
                  §§goto(addr132);
               }
               §§goto(addr148);
            }
            §§goto(addr76);
         }
         §§goto(addr176);
      }
      
      private function §-i§(param1:§2!f§) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc2_:§9q§ = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:§9q§ = null;
         var _loc10_:Texture = null;
         var _loc11_:* = 0;
         var _loc12_:§^"-§ = null;
         var _loc3_:Vector.<§9q§> = new Vector.<§9q§>();
         var _loc4_:int = 0;
         while(true)
         {
            §§push(_loc4_);
            if(_loc14_ && param1)
            {
               break;
            }
            if(§§pop() >= param1.§8!h§)
            {
               break;
            }
            _loc2_ = param1.§!!-§(_loc4_);
            if(_loc13_ || this)
            {
               if(_loc2_.§!,§ > 0)
               {
                  if(_loc13_)
                  {
                     _loc3_.push(_loc2_);
                     if(!_loc13_)
                     {
                        continue;
                     }
                  }
               }
            }
            _loc4_++;
         }
         var _loc5_:* = §§pop();
         if(_loc13_)
         {
            loop1:
            while(true)
            {
               if(_loc3_.length <= 0)
               {
                  if(_loc13_ || this)
                  {
                     addr271:
                     if(_loc5_ > 1)
                     {
                     }
                  }
                  return;
               }
               §§push(this.§3!y§(_loc3_,this.§0b§,§>&§,§>&§,§9!<§));
               if(!(_loc14_ && _loc2_))
               {
                  §§push(0);
                  if(!_loc14_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc13_ || param1)
                        {
                           throw new Error("Found too large sprite sheet image!");
                        }
                        §§goto(addr271);
                     }
                     else
                     {
                        loop2:
                        while(true)
                        {
                           §§push(int(getNextPowerOfTwo(this.§0b§.§6Q§)));
                           if(_loc13_ || _loc3_)
                           {
                              _loc6_ = §§pop();
                              while(true)
                              {
                                 §§push(int(getNextPowerOfTwo(this.§0b§.§#_§)));
                                 if(_loc13_ || _loc2_)
                                 {
                                    _loc7_ = §§pop();
                                    if(!(_loc14_ && _loc2_))
                                    {
                                       if(_loc14_)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          if(false)
                                          {
                                             continue loop2;
                                          }
                                          _loc8_ = new BitmapData(_loc6_,_loc7_,true,16777215);
                                          _loc9_ = this.§`u§(_loc3_,this.§0b§,_loc8_);
                                          _loc10_ = this.§@!;§(_loc8_);
                                          if(!_loc14_)
                                          {
                                             this.§&!0§.push(_loc8_);
                                             if(_loc13_ || param1)
                                             {
                                                §§push(0);
                                                if(!(_loc14_ && _loc3_))
                                                {
                                                   _loc11_ = §§pop();
                                                   if(!_loc14_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc11_);
                                                      }
                                                      addr243:
                                                   }
                                                   addr249:
                                                   _loc5_++;
                                                   continue loop1;
                                                }
                                                while(§§pop() < _loc9_.§!,§)
                                                {
                                                   _loc12_ = _loc9_.§0@§(_loc11_);
                                                   if(!(_loc14_ && _loc3_))
                                                   {
                                                      this.§7#§(_loc12_,_loc10_,_loc8_,_loc2_.scale);
                                                      if(_loc13_)
                                                      {
                                                         _loc11_++;
                                                      }
                                                   }
                                                   §§goto(addr243);
                                                }
                                                if(!_loc13_)
                                                {
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          §§goto(addr249);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr271);
                                    }
                                 }
                                 break;
                              }
                           }
                           §§goto(addr271);
                        }
                     }
                  }
               }
               §§goto(addr271);
            }
         }
         §§goto(addr111);
      }
      
      private function §7#§(param1:§^"-§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:Rectangle = null;
         var _loc7_:§ !5§ = null;
         var _loc5_:§5E§;
         if(!(_loc5_ = this.§5"%§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new § !5§(param2,_loc6_,false);
            _loc5_ = new §5E§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            if(!_loc9_)
            {
               this.§5"%§[param1.name] = _loc5_;
               if(_loc8_ || this)
               {
                  this.§^!e§.push(param1.name);
               }
            }
         }
      }
      
      public function reInitializeTextures() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || _loc2_)
         {
            §§push(null);
            if(!_loc6_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc6_)
               {
                  addr37:
                  var texture:Texture = null;
                  if(!(_loc6_ && _loc3_))
                  {
                     §§goto(addr46);
                  }
                  §§goto(addr49);
               }
               addr46:
               if(!§6!l§.§0i§)
               {
                  addr49:
                  var _loc2_:int = 0;
                  var _loc3_:* = this.§["!§;
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     if(_loc5_)
                     {
                        §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                        if(_loc5_)
                        {
                           try
                           {
                              §§push(§§newactivation());
                              if(_loc5_)
                              {
                                 addr80:
                                 §§pop().§§slot[2] = this.§["!§[bd];
                                 addr96:
                                 if(_loc5_)
                                 {
                                    addr89:
                                    §§push(§§newactivation());
                                 }
                                 continue;
                              }
                              §§pop().§§slot[2].requestBaseTextureUpdate(bd as BitmapData);
                           }
                           catch(e:Error)
                           {
                              continue;
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr80);
                  }
               }
               return;
            }
         }
         §§goto(addr37);
      }
      
      public function §5!X§(param1:String) : §5E§
      {
         return this.§5"%§[param1];
      }
      
      public function get §2!Q§() : int
      {
         return this.§^!e§.length;
      }
      
      public function §9!J§(param1:int) : §5E§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr93:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc3_)
                           {
                              return null;
                           }
                           if(_loc3_ || param1)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        return this.§5"%§[this.§^!e§[param1]];
                        addr67:
                     }
                  }
                  addr98:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr92:
         }
         while(true)
         {
            §§push(param1);
            if(!(_loc2_ && _loc2_))
            {
               §§push(this.§2!Q§);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc2_)
                  {
                     continue;
                  }
               }
               else
               {
                  §§goto(addr93);
               }
               §§goto(addr67);
            }
            else
            {
               §§goto(addr92);
            }
         }
      }
      
      public function §@!;§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Texture = this.§["!§[param1];
         if(_loc4_)
         {
            if(_loc3_)
            {
               if(!_loc5_)
               {
                  §§goto(addr28);
               }
            }
            _loc3_ = §6!l§.§9`§(param1,param2);
            if(_loc4_)
            {
               this.§["!§[param1] = _loc3_;
               do
               {
                  this.§']§(_loc3_,param1,true);
               }
               while(!(_loc4_ || _loc3_));
               
            }
            return _loc3_;
         }
         addr28:
         return _loc3_;
      }
      
      protected function §']§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:* = 1;
         if(_loc8_)
         {
            if(!param3)
            {
               if(!_loc7_)
               {
                  §§push(-1);
                  loop0:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     loop7:
                     while(true)
                     {
                        if(_loc7_ && param1)
                        {
                           continue loop0;
                        }
                        _loc5_ = §§pop();
                        loop8:
                        for(; _loc8_; _loc6_ = §§pop(),if(!(_loc8_ || param1))
                        {
                           continue;
                        },loop9:
                        while(true)
                        {
                           §§push(_loc5_);
                           loop10:
                           while(!_loc7_)
                           {
                              §§push(1);
                              loop11:
                              for(; !(_loc7_ && param2); §§push(1),if(!(_loc8_ || this))
                              {
                                 continue;
                              },§§goto(addr45))
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(!(_loc7_ && param1))
                                 {
                                    if(§§pop())
                                    {
                                       addr83:
                                       while(true)
                                       {
                                          §§pop();
                                          addr84:
                                          while(!_loc7_)
                                          {
                                             if(_loc8_ || param1)
                                             {
                                                §§push(_loc6_);
                                                if(_loc7_ && param3)
                                                {
                                                   continue loop10;
                                                }
                                                if(!_loc7_)
                                                {
                                                   continue loop11;
                                                }
                                                addr116:
                                                addr107:
                                                addr116:
                                                addr107:
                                                if(_loc8_)
                                                {
                                                   _loc6_ = §§pop();
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   _loc5_ = §§pop();
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr117);
                                                }
                                                addr117:
                                             }
                                             §§push(_loc6_);
                                             if(_loc8_)
                                             {
                                                break loop11;
                                             }
                                             §§goto(addr107);
                                          }
                                          if(!_loc7_)
                                          {
                                             continue loop9;
                                          }
                                       }
                                       addr83:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                §§goto(addr57);
                                             }
                                             §§goto(addr84);
                                          }
                                          else
                                          {
                                             §§push(this);
                                             §§push(this.§"!>§);
                                             §§push(_loc4_ * _loc5_);
                                             if(!(_loc7_ && this))
                                             {
                                                §§push(_loc6_);
                                                if(!(_loc7_ && param1))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc8_ || this)
                                                   {
                                                      addr162:
                                                      §§push(§§pop() * 4);
                                                   }
                                                   §§pop().§"!>§ = §§pop() + §§pop();
                                                   break;
                                                }
                                             }
                                             §§goto(addr162);
                                          }
                                          if(_loc8_ || this)
                                          {
                                             continue;
                                          }
                                          §§goto(addr83);
                                       }
                                    }
                                    §§push(_loc5_);
                                    break loop10;
                                    addr165:
                                 }
                                 §§goto(addr83);
                              }
                              if(_loc8_ || param1)
                              {
                                 §§goto(addr107);
                                 §§push(§§pop() >> §§pop());
                              }
                              §§goto(addr116);
                           }
                           while(true)
                           {
                              §§goto(addr116);
                              §§goto(addr165);
                           }
                        })
                        {
                           addr211:
                           if(!(_loc7_ && param1))
                           {
                              if(_loc7_)
                              {
                                 break loop7;
                              }
                              addr220:
                              §§push(param1.height);
                              if(_loc8_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc8_ || param3)
                                 {
                                    continue;
                                 }
                                 continue loop7;
                              }
                              addr200:
                              while(true)
                              {
                                 continue loop7;
                                 §§goto(addr220);
                              }
                           }
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§1!s§);
                              §§push(_loc4_ * param2.width);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() * param2.height);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() * 4);
                                 }
                              }
                              §§pop().§1!s§ = §§pop() + §§pop();
                              break loop8;
                              §§goto(addr211);
                           }
                        }
                        while(true)
                        {
                           §§goto(addr188);
                        }
                        addr209:
                     }
                     addr259:
                     loop1:
                     while(true)
                     {
                        addr221:
                        while(true)
                        {
                           if(param2)
                           {
                              §§goto(addr224);
                           }
                           addr188:
                           while(param1)
                           {
                              if(_loc8_ || this)
                              {
                                 §§push(param1.width);
                              }
                              else
                              {
                                 §§goto(addr209);
                              }
                              §§goto(addr200);
                           }
                           addr57:
                           return;
                           continue loop1;
                        }
                     }
                  }
               }
               §§goto(addr259);
            }
            §§goto(addr221);
         }
         §§goto(addr187);
      }
      
      public function §4!0§() : Texture
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§&!7§);
            if(_loc1_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     this.§&!7§ = this.§@!;§(new BitmapData(40,40,false,16711935));
                     addr50:
                  }
               }
               return this.§&!7§;
            }
         }
         §§goto(addr50);
      }
      
      public function § f§(param1:Texture) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc6_:* = this.§["!§;
         while(true)
         {
            for(_loc2_ in _loc6_)
            {
               if(!(_loc8_ || _loc3_))
               {
                  break;
               }
               if(this.§["!§[_loc2_] == param1)
               {
                  break;
               }
            }
            return;
         }
         _loc3_ = _loc2_ as BitmapData;
         if(_loc8_)
         {
            this.§']§(param1,_loc3_,false);
            while(true)
            {
               if(_loc3_)
               {
                  _loc3_.dispose();
                  loop2:
                  while(true)
                  {
                     §§push(int(this.§&!0§.indexOf(_loc3_)));
                     if(!(_loc7_ && this))
                     {
                        §§push(§§pop());
                        if(_loc8_)
                        {
                           _loc4_ = §§pop();
                           addr119:
                           §§push(0);
                        }
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc7_)
                           {
                              continue;
                           }
                           addr137:
                           while(true)
                           {
                              break loop2;
                           }
                        }
                        break;
                     }
                     §§goto(addr119);
                  }
               }
               while(true)
               {
                  delete this.§["!§[_loc2_];
                  addr94:
                  while(_loc8_ || this)
                  {
                  }
                  §§goto(addr137);
               }
            }
         }
         while(true)
         {
            param1.dispose();
            if(_loc8_)
            {
               break;
            }
            §§goto(addr94);
         }
      }
      
      public function get §5!>§() : int
      {
         return this.§&!0§.length;
      }
      
      public function §7s§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || _loc2_)
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(0);
               if(!_loc6_)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc6_ && param1))
                  {
                     if(!§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§goto(addr41);
                        }
                     }
                     §§goto(addr58);
                  }
                  addr41:
                  §§pop();
                  if(!_loc6_)
                  {
                     addr58:
                     if(param1 >= this.§5!>§)
                     {
                        if(_loc5_ || param1)
                        {
                           return;
                        }
                     }
                  }
                  var _loc2_:BitmapData = this.§&!0§[param1];
                  var _loc3_:ByteArray = §6!F§.encode(_loc2_);
                  var _loc4_:FileReference;
                  (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
                  return;
               }
            }
         }
         §§goto(addr58);
      }
   }
}
