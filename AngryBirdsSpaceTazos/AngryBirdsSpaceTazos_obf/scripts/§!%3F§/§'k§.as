package §!?§
{
   import §+!h§.§]"1§;
   import §,!3§.§#"C§;
   import §7!0§.§-!^§;
   import §7!B§.§@!^§;
   import §]!g§.§2!y§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §'k§
   {
      
      public static const §;!^§:String = "serializationJSON";
      
      public static const §3X§:String = "serializationURLParameters";
      
      public static const §8F§:String = "eksXzijs0jkph212jlAjs2nwU23S02j3";
      
      public static const §!!Q§:String = "Mc8sk3Nf93jnfIdf73j5nt7sbq7alpi8";
      
      private static const §^y§:String = "|";
      
      private static const §"'§:int = 500;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §;!^§ = "serializationJSON";
            while(true)
            {
               §3X§ = "serializationURLParameters";
            }
            addr92:
         }
         loop1:
         while(true)
         {
            §8F§ = "eksXzijs0jkph212jlAjs2nwU23S02j3";
            loop2:
            do
            {
               if(_loc1_)
               {
                  continue loop1;
               }
               §!!Q§ = "Mc8sk3Nf93jnfIdf73j5nt7sbq7alpi8";
               while(!_loc1_)
               {
                  §^y§ = "|";
                  do
                  {
                     §"'§ = 500;
                  }
                  while(_loc1_);
                  
                  if(_loc2_ || _loc1_)
                  {
                     continue loop2;
                  }
               }
               §§goto(addr92);
            }
            while(!(_loc2_ || _loc1_));
            
            return;
         }
      }
      
      private var §6!Y§:URLLoader;
      
      private var §+!2§:§-!^§;
      
      private var §?!4§:Boolean = false;
      
      public function §'k§(param1:Object, param2:String, param3:§-!^§, param4:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               addr33:
               while(true)
               {
                  this.§6!Y§ = new §]"1§();
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§+!2§ = param3;
            if(_loc8_ || param1)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr33);
            }
            §§goto(addr38);
         }
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         if(_loc8_)
         {
            this.§6!Y§.dataFormat = URLLoaderDataFormat.TEXT;
         }
         var _loc6_:* = param4;
         if(_loc8_ || param3)
         {
            §§push(§;!^§);
            if(!_loc7_)
            {
               §§push(_loc6_);
               if(!(_loc7_ && param2))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc7_ && param1))
                     {
                        §§push(0);
                        if(!_loc8_)
                        {
                        }
                     }
                     else
                     {
                        addr159:
                        §§push(1);
                        if(!_loc8_)
                        {
                        }
                     }
                     addr167:
                     loop11:
                     switch(§§pop())
                     {
                        case 0:
                           _loc5_.contentType = "application/json";
                           if(_loc8_ || param3)
                           {
                              addr77:
                              _loc5_.data = §#"C§.encode(param1);
                              if(!(_loc7_ && param1))
                              {
                                 addr240:
                                 this.§6!Y§.addEventListener(Event.COMPLETE,this.onComplete);
                                 while(true)
                                 {
                                    this.§6!Y§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9o§);
                                    loop5:
                                    while(true)
                                    {
                                       this.§6!Y§.addEventListener(IOErrorEvent.IO_ERROR,this.§[G§);
                                       addr220:
                                       while(true)
                                       {
                                          _loc5_.url = param2;
                                          continue loop5;
                                       }
                                    }
                                 }
                                 addr247:
                              }
                              while(true)
                              {
                                 this.§?!4§ = false;
                                 while(_loc8_)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(_loc8_)
                                       {
                                          break loop11;
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr220);
                                 }
                                 §§goto(addr204);
                              }
                           }
                           break;
                        case 1:
                           _loc5_.data = this.§!!d§(param1);
                           if(!(_loc7_ && param2))
                           {
                              if(false)
                              {
                                 §§goto(addr77);
                              }
                              §§goto(addr240);
                           }
                           break;
                        default:
                           §§goto(addr240);
                     }
                     continue loop10;
                  }
                  addr157:
                  §§push(§3X§);
                  §§push(_loc6_);
                  §§goto(addr159);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr159);
               }
               else
               {
                  §§push(2);
               }
               §§goto(addr167);
            }
            §§goto(addr157);
         }
         §§goto(addr159);
      }
      
      public static function §0!K§(param1:Object) : String
      {
         return §2!y§.§;v§([param1.levelId,param1.score,§@!^§.§[!Q§.id,§8F§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §6d§(param1:Array) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Object = null;
         var _loc2_:* = "";
         for each(_loc3_ in param1)
         {
            if(_loc7_)
            {
               §§push(_loc2_);
               if(_loc7_)
               {
                  §§push(§§pop() + (_loc3_.levelId + "|"));
               }
               _loc2_ = §§pop();
            }
         }
         if(!(_loc6_ && param1))
         {
            §§push(_loc2_);
            if(_loc7_ || _loc3_)
            {
               §§push(§§pop() + §8F§);
               if(!_loc6_)
               {
                  addr90:
                  _loc2_ = §§pop();
                  return §2!y§.§;v§(_loc2_);
               }
            }
         }
         §§goto(addr90);
      }
      
      public static function §5-§(param1:String, param2:Array) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:Object = null;
         §§push(§!!Q§);
         if(!_loc9_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc8_ || §'k§)
         {
            §§push(§2!y§.§;v§(param1 + §^y§ + _loc3_));
            if(!_loc9_)
            {
               §§push(§§pop());
            }
            _loc3_ = §§pop();
         }
         var _loc4_:* = "";
         for each(_loc5_ in param2)
         {
            if(_loc9_ && §'k§)
            {
               continue;
            }
            §§push(_loc4_);
            if(!_loc9_)
            {
               §§push(§§pop() + (_loc5_.type + _loc5_.count));
               if(_loc8_)
               {
                  addr85:
                  _loc4_ = §§pop();
                  if(_loc8_ || param1)
                  {
                     §§push(§2!y§.§;v§(_loc3_ + §^y§ + _loc4_.toString()));
                     if(_loc8_ || param2)
                     {
                        addr118:
                        §§push(§§pop());
                     }
                     _loc3_ = §§pop();
                  }
                  continue;
               }
               §§goto(addr118);
            }
            §§goto(addr85);
         }
         return _loc3_;
      }
      
      public static function §!!2§(param1:Object) : String
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:Object = null;
         var _loc6_:* = null;
         var _loc7_:Array = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = 0;
         var _loc2_:Array = [];
         if(!(_loc13_ && param1))
         {
            _loc2_.push(param1.levelId);
            loop0:
            while(true)
            {
               addr60:
               while(true)
               {
                  _loc2_.push(param1.score + "");
                  continue loop0;
               }
            }
            addr72:
         }
         while(true)
         {
            _loc2_.push(§8F§);
            if(_loc13_)
            {
               continue;
            }
            if(_loc14_ || _loc2_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr72);
            }
            §§goto(addr60);
         }
         var _loc3_:String = param1.gamePlay;
         var _loc4_:Array = _loc3_.split(":");
         for each(_loc5_ in _loc4_)
         {
            if(!_loc13_)
            {
               _loc2_.push(_loc5_);
            }
         }
         if(_loc14_)
         {
            _loc2_.push(param1.userId);
         }
         §§push(param1.blocks);
         if(_loc14_ || _loc2_)
         {
            §§push(_loc6_ = §§pop());
         }
         _loc7_ = §§pop().split(",");
         if(!_loc13_)
         {
            §§push(0);
            if(_loc14_)
            {
               var _loc11_:* = §§pop();
               if(!(_loc13_ && §'k§))
               {
                  for each(_loc5_ in _loc7_)
                  {
                     if(_loc14_ || _loc2_)
                     {
                        _loc2_.push(_loc5_);
                     }
                  }
               }
               if(_loc14_)
               {
                  §§push("");
                  while(true)
                  {
                     _loc8_ = §§pop();
                     loop6:
                     while(true)
                     {
                        §§push("");
                        if(_loc13_)
                        {
                           break;
                        }
                        _loc9_ = §§pop();
                        loop7:
                        while(true)
                        {
                           §§push(0);
                           addr296:
                           loop18:
                           while(true)
                           {
                              _loc10_ = §§pop();
                              loop19:
                              while(true)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(_loc10_);
                                    if(!(_loc13_ && param1))
                                    {
                                       if(§§pop() >= _loc2_.length)
                                       {
                                          if(!(_loc13_ && _loc3_))
                                          {
                                             if(_loc14_)
                                             {
                                                if(!(_loc13_ && param1))
                                                {
                                                   if(_loc13_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   addr218:
                                                   §§push(§"'§);
                                                   if(!_loc13_)
                                                   {
                                                      if(_loc13_)
                                                      {
                                                         continue loop18;
                                                      }
                                                      if(§§pop() < _loc2_.length)
                                                      {
                                                         if(!(_loc13_ && _loc2_))
                                                         {
                                                            addr232:
                                                            if(_loc14_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§2!y§.§;v§(_loc8_ + _loc9_));
                                                                  if(_loc14_)
                                                                  {
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           if(_loc14_)
                                                                           {
                                                                              addr246:
                                                                              _loc9_ = §§pop();
                                                                              while(!_loc13_)
                                                                              {
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    if(!(_loc13_ && _loc3_))
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    continue loop24;
                                                                                 }
                                                                                 §§goto(addr246);
                                                                              }
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc14_ || _loc2_))
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 §§push(_loc10_);
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() < §"'§)
                                                                                    {
                                                                                       loop10:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§2!y§.§;v§(_loc8_ + _loc9_));
                                                                                          addr264:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             addr265:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc13_ && §'k§))
                                                                                                {
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      _loc9_ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         break loop10;
                                                                                                      }
                                                                                                      addr275:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc2_[_loc10_]);
                                                                                                      }
                                                                                                      addr280:
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   continue loop14;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                       addr259:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc10_++;
                                                                                       addr254:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr247:
                                                                           }
                                                                           §§goto(addr264);
                                                                        }
                                                                        addr244:
                                                                     }
                                                                     §§goto(addr265);
                                                                  }
                                                                  §§goto(addr244);
                                                               }
                                                               addr234:
                                                            }
                                                            §§goto(addr259);
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr175);
                                                   }
                                                   §§goto(addr257);
                                                }
                                                §§goto(addr275);
                                             }
                                             §§goto(addr254);
                                          }
                                          §§goto(addr232);
                                       }
                                       else
                                       {
                                          §§push(_loc8_);
                                       }
                                       §§goto(addr280);
                                    }
                                    §§goto(addr218);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr254);
            }
            §§goto(addr296);
         }
         §§goto(addr234);
      }
      
      private static function §5!m§(param1:Array) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:* = "";
         for each(_loc3_ in param1)
         {
            if(_loc7_)
            {
               §§push(_loc2_);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() + String.fromCharCode(_loc3_));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public static function §&f§(param1:String, param2:int, param3:int, param4:String) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§8F§);
         if(_loc8_ || param3)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         §§push(_loc6_ = "");
         if(!(_loc7_ && param2))
         {
            §§push(§§pop() + _loc5_);
         }
         §§push(§§pop());
         if(_loc8_)
         {
            §§push(§§pop());
            if(!(_loc7_ && param2))
            {
               _loc6_ = §§pop();
               if(!(_loc7_ && param3))
               {
                  §§push(§^y§);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc8_)
                     {
                        §§push(§§pop());
                        if(!(_loc7_ && param3))
                        {
                           _loc6_ = §§pop();
                           if(!(_loc7_ && param3))
                           {
                              §§push(param2);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc8_ || §'k§)
                                 {
                                    _loc6_ = §§pop();
                                    if(!(_loc7_ && §'k§))
                                    {
                                       §§push(§2!y§.§;v§(_loc6_));
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop1:
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             loop2:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                addr363:
                                                loop17:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr366:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         addr367:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            loop39:
                                                            while(true)
                                                            {
                                                               §§push(§^y§);
                                                               loop28:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop29:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop30:
                                                                     while(true)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        loop31:
                                                                        while(true)
                                                                        {
                                                                           §§push(param3);
                                                                           addr374:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              addr386:
                                                                              while(true)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§2!y§.§;v§(_loc6_));
                                                                                    addr345:
                                                                                    addr339:
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(_loc8_ || param2)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             loop16:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_ = §§pop();
                                                                                                addr356:
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   continue loop22;
                                                                                                }
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                §§push(_loc6_);
                                                                                                if(_loc7_ && §'k§)
                                                                                                {
                                                                                                   continue loop39;
                                                                                                }
                                                                                                §§push(_loc5_);
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(!(_loc8_ || §'k§))
                                                                                                   {
                                                                                                      continue loop30;
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc7_ && param2))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         addr297:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            if(_loc8_ || param3)
                                                                                                            {
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr296:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         break loop15;
                                                                                                      }
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   addr337:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr322:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            _loc6_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param4);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr327:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr337);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop22;
                                                                                          }
                                                                                          continue loop29;
                                                                                       }
                                                                                       continue loop31;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc6_ = §§pop();
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
                                    loop3:
                                    while(true)
                                    {
                                       §§push(§2!y§.§;v§(_loc6_));
                                       while(_loc8_)
                                       {
                                          §§push(§§pop());
                                          loop5:
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             while(true)
                                             {
                                                if(_loc7_ && §'k§)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(_loc6_);
                                                if(!(_loc7_ && param2))
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc8_ || param1)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            loop7:
                                                            while(!_loc7_)
                                                            {
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc7_)
                                                                     {
                                                                        while(!(_loc7_ && param2))
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           if(_loc8_ || §'k§)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           addr243:
                                                                           addr243:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc7_ && param2))
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§2!y§.§;v§(_loc6_));
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       §§push(§§pop());
                                                                                       loop13:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          addr161:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                if(!(_loc7_ && param2))
                                                                                                {
                                                                                                   §§push(_loc6_);
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   addr146:
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         §§goto(addr150);
                                                                                                      }
                                                                                                      §§goto(addr366);
                                                                                                   }
                                                                                                   §§goto(addr337);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop11;
                                                                                          }
                                                                                          §§goto(addr356);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break;
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 addr150:
                                                                              }
                                                                              continue;
                                                                              return §§pop();
                                                                           }
                                                                           §§goto(addr322);
                                                                        }
                                                                        §§goto(addr333);
                                                                        addr216:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr243);
                                                                        }
                                                                        addr241:
                                                                     }
                                                                     §§goto(addr243);
                                                                  }
                                                                  addr213:
                                                               }
                                                               §§goto(addr386);
                                                            }
                                                            §§goto(addr330);
                                                         }
                                                         §§goto(addr367);
                                                      }
                                                      §§goto(addr297);
                                                   }
                                                   §§goto(addr216);
                                                }
                                                §§goto(addr243);
                                             }
                                          }
                                       }
                                       §§goto(addr345);
                                    }
                                 }
                                 §§goto(addr363);
                              }
                              §§goto(addr374);
                           }
                           §§goto(addr339);
                        }
                        §§goto(addr297);
                     }
                     §§goto(addr213);
                  }
                  §§goto(addr335);
               }
               §§goto(addr296);
            }
            §§goto(addr367);
         }
         §§goto(addr332);
      }
      
      public function get §1!8§() : Boolean
      {
         return this.§?!4§;
      }
      
      private function §'!0§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.dispose();
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+!2§.onComplete(param1);
            while(true)
            {
               this.§?!4§ = true;
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            this.removeEventListeners();
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §9o§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§+!2§.§9o§(param1);
         }
      }
      
      private function §[G§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§+!2§.§[G§(param1);
            do
            {
               this.removeEventListeners();
            }
            while(!_loc2_);
            
         }
      }
      
      public function get §?!y§() : URLLoader
      {
         return this.§6!Y§;
      }
      
      private function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§6!Y§)
            {
               loop0:
               while(true)
               {
                  this.§6!Y§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9o§);
                  addr97:
                  addr60:
                  while(true)
                  {
                     this.§6!Y§.removeEventListener(Event.COMPLETE,this.onComplete);
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr97);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.removeEventListeners();
         }
         loop0:
         while(true)
         {
            if(this.§6!Y§)
            {
               loop1:
               while(true)
               {
                  this.§6!Y§.close();
                  loop2:
                  while(true)
                  {
                     this.§6!Y§ = null;
                     addr65:
                     while(true)
                     {
                        addr34:
                        if(!(_loc2_ && _loc2_))
                        {
                           if(_loc1_)
                           {
                              this.§+!2§ = null;
                              addr56:
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr19);
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               if(this.§+!2§)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr34);
                  }
                  §§goto(addr56);
               }
               break;
               §§goto(addr65);
            }
            addr19:
            return;
         }
      }
      
      private function §!!d§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(!_loc7_)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
   }
}
