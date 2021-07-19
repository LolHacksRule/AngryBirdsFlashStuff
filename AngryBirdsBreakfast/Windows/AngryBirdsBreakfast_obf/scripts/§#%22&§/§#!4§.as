package §#"&§
{
   import § ^§.§`!2§;
   import §1!`§.§-!M§;
   import §;K§.§&s§;
   import §@!k§.§9!G§;
   import §]0§.§>I§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §#!4§
   {
      
      public static const § !z§:String = "serializationJSON";
      
      public static const §8$§:String = "serializationURLParameters";
      
      public static const §';§:String = "09sb85etmnspa89j3mx7han3689ngp9a";
      
      public static const §@!A§:String = "3v9a8crja089ph7st8oh7apr9cm8ja43";
      
      private static const § [§:String = "|";
      
      private static const §4o§:int = 500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            § !z§ = "serializationJSON";
            loop0:
            while(true)
            {
               §8$§ = "serializationURLParameters";
               loop1:
               while(true)
               {
                  §';§ = "09sb85etmnspa89j3mx7han3689ngp9a";
                  while(true)
                  {
                     §@!A§ = "3v9a8crja089ph7st8oh7apr9cm8ja43";
                     addr70:
                     while(!_loc2_)
                     {
                     }
                     continue loop1;
                     addr58:
                     if(!(_loc2_ && _loc2_))
                     {
                        §4o§ = 500;
                        addr65:
                        if(_loc2_ && §#!4§)
                        {
                           while(_loc1_)
                           {
                              §§goto(addr58);
                              §§goto(addr65);
                           }
                           §§goto(addr70);
                           addr56:
                        }
                        if(!_loc2_)
                        {
                           return;
                           addr51:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            § [§ = "|";
            §§goto(addr56);
         }
         §§goto(addr51);
      }
      
      private var §=B§:URLLoader;
      
      private var §3!H§:§>I§;
      
      private var §]c§:Boolean = false;
      
      public function §#!4§(param1:Object, param2:String, param3:§>I§, param4:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
         }
         loop0:
         while(true)
         {
            addr32:
            addr48:
            while(true)
            {
               this.§=B§ = new §-!M§();
               continue loop0;
            }
            addr94:
            var _loc5_:URLRequest;
            (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
            if(!_loc8_)
            {
               this.§=B§.dataFormat = URLLoaderDataFormat.TEXT;
            }
            var _loc6_:* = param4;
            if(!(_loc8_ && this))
            {
               §§push(§ !z§);
               if(_loc7_ || param3)
               {
                  §§push(_loc6_);
                  if(!_loc8_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc7_)
                        {
                           addr131:
                           §§push(0);
                           if(!_loc7_)
                           {
                           }
                        }
                        else
                        {
                           addr138:
                           §§push(1);
                           if(!_loc7_)
                           {
                           }
                        }
                        addr146:
                        loop11:
                        switch(§§pop())
                        {
                           case 0:
                              _loc5_.contentType = "application/json";
                              loop7:
                              while(true)
                              {
                                 addr71:
                                 while(true)
                                 {
                                    _loc5_.data = §&s§.encode(param1);
                                    if(_loc7_)
                                    {
                                       if(_loc8_)
                                       {
                                          continue;
                                       }
                                       this.§=B§.addEventListener(Event.COMPLETE,this.onComplete);
                                       while(true)
                                       {
                                          this.§=B§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§'!s§);
                                          addr223:
                                          while(true)
                                          {
                                             this.§=B§.addEventListener(IOErrorEvent.IO_ERROR,this.§=o§);
                                             break loop7;
                                          }
                                          addr174:
                                          if(_loc7_ || this)
                                          {
                                             return;
                                          }
                                       }
                                    }
                                    break loop7;
                                 }
                              }
                              while(true)
                              {
                                 _loc5_.url = param2;
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       break loop11;
                                    }
                                    break;
                                    if(!(_loc7_ || this))
                                    {
                                       continue;
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr223);
                              }
                              break;
                           case 1:
                              _loc5_.data = this.§<!H§(param1);
                              if(_loc7_)
                              {
                                 if(false)
                                 {
                                    §§goto(addr71);
                                 }
                                 §§goto(addr224);
                              }
                              break;
                           default:
                              §§goto(addr224);
                        }
                        continue loop9;
                     }
                     addr137:
                     if(§8$§ === _loc6_)
                     {
                        §§goto(addr138);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr146);
                     §§goto(addr138);
                  }
               }
               §§goto(addr137);
            }
            §§goto(addr131);
         }
      }
      
      public static function §"!R§(param1:Object) : String
      {
         return §9!G§.§3"%§([param1.levelId,param1.score,§`!2§.§!!$§.id,§';§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §^5§(param1:Array) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Object = null;
         var _loc2_:* = "";
         for each(_loc3_ in param1)
         {
            if(!_loc7_)
            {
               §§push(_loc2_);
               if(!_loc7_)
               {
                  §§push(§§pop() + (_loc3_.levelId + "|"));
               }
               _loc2_ = §§pop();
            }
         }
         if(_loc6_)
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               §§push(§§pop() + §';§);
               if(!(_loc7_ && §#!4§))
               {
                  addr84:
                  _loc2_ = §§pop();
                  return §9!G§.§3"%§(_loc2_);
               }
            }
         }
         §§goto(addr84);
      }
      
      public static function §6D§(param1:String, param2:Array) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:Object = null;
         §§push(§@!A§);
         if(_loc9_ || param1)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc9_)
         {
            §§push(§9!G§.§3"%§(param1 + § [§ + _loc3_));
            if(!_loc8_)
            {
               §§push(§§pop());
            }
            _loc3_ = §§pop();
         }
         var _loc4_:* = "";
         for each(_loc5_ in param2)
         {
            if(!(_loc9_ || param1))
            {
               continue;
            }
            §§push(_loc4_);
            if(_loc9_ || _loc3_)
            {
               §§push(§§pop() + (_loc5_.type + _loc5_.count));
               if(!_loc8_)
               {
                  _loc4_ = §§pop();
                  if(!_loc8_)
                  {
                     §§push(§9!G§.§3"%§(_loc3_ + § [§ + _loc4_.toString()));
                     if(_loc9_)
                     {
                        addr114:
                        §§push(§§pop());
                     }
                     _loc3_ = §§pop();
                  }
                  continue;
               }
            }
            §§goto(addr114);
         }
         return _loc3_;
      }
      
      public static function §'!q§(param1:Object) : String
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
         if(_loc14_)
         {
            _loc2_.push(param1.levelId);
            loop0:
            while(true)
            {
               _loc2_.push(param1.score + "");
               while(true)
               {
                  addr57:
                  while(true)
                  {
                     _loc2_.push(param1.stars + "");
                     do
                     {
                        _loc2_.push(§';§);
                     }
                     while(!_loc14_);
                     
                     if(_loc13_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr57);
         }
         var _loc3_:String = param1.gamePlay;
         var _loc4_:Array = _loc3_.split(":");
         for each(_loc5_ in _loc4_)
         {
            if(_loc14_)
            {
               _loc2_.push(_loc5_);
            }
         }
         if(_loc14_)
         {
            _loc2_.push(param1.userId);
         }
         §§push(param1.blocks);
         if(!(_loc13_ && _loc2_))
         {
            §§push(_loc6_ = §§pop());
         }
         _loc7_ = §§pop().split(",");
         if(_loc14_ || §#!4§)
         {
            §§push(0);
            if(_loc14_)
            {
               var _loc11_:* = §§pop();
               if(!(_loc13_ && _loc3_))
               {
                  for each(_loc5_ in _loc7_)
                  {
                     if(!_loc13_)
                     {
                        _loc2_.push(_loc5_);
                     }
                  }
               }
               if(_loc14_ || _loc2_)
               {
                  §§push("");
                  while(true)
                  {
                     _loc8_ = §§pop();
                     loop8:
                     while(true)
                     {
                        §§push("");
                        if(_loc13_)
                        {
                           break;
                        }
                        _loc9_ = §§pop();
                        loop9:
                        while(true)
                        {
                           §§push(0);
                           loop10:
                           while(true)
                           {
                              _loc10_ = §§pop();
                              loop11:
                              while(true)
                              {
                                 loop12:
                                 while(true)
                                 {
                                    §§push(_loc10_);
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       if(§§pop() >= _loc2_.length)
                                       {
                                          if(!_loc13_)
                                          {
                                             if(!_loc13_)
                                             {
                                                addr223:
                                                §§push(§4o§);
                                                if(_loc14_ || param1)
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(§§pop() < _loc2_.length)
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         if(!(_loc14_ || _loc2_))
                                                         {
                                                            continue loop11;
                                                         }
                                                         §§push(§9!G§.§3"%§(_loc8_ + _loc9_));
                                                         loop21:
                                                         while(!_loc13_)
                                                         {
                                                            §§push(§§pop());
                                                            loop22:
                                                            while(true)
                                                            {
                                                               if(!(_loc14_ || _loc2_))
                                                               {
                                                                  addr317:
                                                                  §§push(§§pop() + _loc2_[_loc10_]);
                                                                  break;
                                                               }
                                                               addr259:
                                                               _loc9_ = §§pop();
                                                               while(true)
                                                               {
                                                                  if(!(_loc13_ && §#!4§))
                                                                  {
                                                                     if(!_loc14_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc9_);
                                                                        if(_loc13_)
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                        if(!(_loc14_ || §#!4§))
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                        if(_loc14_ || _loc2_)
                                                                        {
                                                                           break loop12;
                                                                        }
                                                                        addr296:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           break loop21;
                                                                        }
                                                                     }
                                                                  }
                                                                  break;
                                                                  §§goto(addr259);
                                                               }
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(_loc13_ && §#!4§)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc13_ && _loc3_))
                                                                        {
                                                                           addr312:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr312:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr323:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc10_);
                                                                              addr289:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() <= §4o§)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr296);
                                                                                    }
                                                                                    addr291:
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr323:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc10_++;
                                                                           continue loop19;
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                     addr305:
                                                                  }
                                                                  continue loop9;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               _loc8_ = §§pop();
                                                               §§goto(addr323);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc14_ || _loc2_)
                                                            {
                                                               _loc9_ = §§pop();
                                                               §§goto(addr305);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr322);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr260);
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr289);
                                             }
                                             §§goto(addr291);
                                          }
                                          §§goto(addr259);
                                       }
                                       else
                                       {
                                          §§push(_loc8_);
                                       }
                                       §§goto(addr317);
                                    }
                                    §§goto(addr223);
                                    addr286:
                                 }
                                 return §§pop();
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr312);
            }
            §§goto(addr289);
         }
         §§goto(addr312);
      }
      
      private static function getText(param1:Array) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:* = "";
         for each(_loc3_ in param1)
         {
            if(!(_loc6_ && §#!4§))
            {
               §§push(_loc2_);
               if(_loc7_)
               {
                  §§push(§§pop() + String.fromCharCode(_loc3_));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public static function §9!7§(param1:String, param2:int, param3:int, param4:String) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§';§);
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         §§push(_loc6_ = "");
         if(!_loc8_)
         {
            §§push(§§pop() + _loc5_);
         }
         §§push(§§pop());
         if(_loc7_)
         {
            §§push(§§pop());
            if(_loc7_ || §#!4§)
            {
               _loc6_ = §§pop();
               if(_loc7_ || §#!4§)
               {
                  §§push(§ [§);
                  if(_loc7_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc8_)
                     {
                        §§push(§§pop());
                        if(!(_loc8_ && §#!4§))
                        {
                           _loc6_ = §§pop();
                           if(_loc7_ || param1)
                           {
                              §§push(param2);
                              if(!(_loc8_ && param1))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc8_)
                                 {
                                    addr82:
                                    _loc6_ = §§pop();
                                    if(_loc7_ || §#!4§)
                                    {
                                       §§push(§9!G§.§3"%§(_loc6_));
                                       loop30:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop4:
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             loop5:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   loop36:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop37:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(§ [§);
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr381:
                                                                     loop40:
                                                                     while(true)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(param3);
                                                                           addr383:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§9!G§.§3"%§(_loc6_));
                                                                                    loop15:
                                                                                    while(_loc7_)
                                                                                    {
                                                                                       addr367:
                                                                                       §§push(§§pop());
                                                                                       loop12:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             addr317:
                                                                                             loop27:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                loop28:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      loop39:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         loop13:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§ [§);
                                                                                                            loop38:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_ && param1)
                                                                                                               {
                                                                                                                  continue loop40;
                                                                                                               }
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               loop21:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  §§push(§§pop());
                                                                                                                  loop31:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     loop32:
                                                                                                                     while(!_loc8_)
                                                                                                                     {
                                                                                                                        if(!(_loc7_ || param2))
                                                                                                                        {
                                                                                                                           continue loop30;
                                                                                                                        }
                                                                                                                        §§push(param4);
                                                                                                                        loop33:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           loop22:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc8_ && param1)
                                                                                                                              {
                                                                                                                                 continue loop23;
                                                                                                                              }
                                                                                                                              _loc6_ = §§pop();
                                                                                                                              loop16:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    continue loop5;
                                                                                                                                 }
                                                                                                                                 §§push(§9!G§.§3"%§(_loc6_));
                                                                                                                                 loop25:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc7_ || param1))
                                                                                                                                    {
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                    addr296:
                                                                                                                                    §§push(§§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc7_ || param3))
                                                                                                                                       {
                                                                                                                                          continue loop4;
                                                                                                                                       }
                                                                                                                                       _loc5_ = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc7_ || param2))
                                                                                                                                          {
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             continue loop14;
                                                                                                                                          }
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc7_ || param3))
                                                                                                                                             {
                                                                                                                                                continue loop11;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      continue loop33;
                                                                                                                                                   }
                                                                                                                                                   if(_loc8_ && §#!4§)
                                                                                                                                                   {
                                                                                                                                                      continue loop39;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_ && param3)
                                                                                                                                                      {
                                                                                                                                                         continue loop32;
                                                                                                                                                      }
                                                                                                                                                      if(_loc8_ && param3)
                                                                                                                                                      {
                                                                                                                                                         continue loop27;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(!(_loc8_ && param3))
                                                                                                                                                      {
                                                                                                                                                         addr241:
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            continue loop31;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc7_ || param1))
                                                                                                                                                         {
                                                                                                                                                            continue loop28;
                                                                                                                                                         }
                                                                                                                                                         _loc6_ = §§pop();
                                                                                                                                                         addr251:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1);
                                                                                                                                                         }
                                                                                                                                                         addr251:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            continue loop38;
                                                                                                                                                         }
                                                                                                                                                         if(_loc8_ && param1)
                                                                                                                                                         {
                                                                                                                                                            continue loop37;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc7_ || param1))
                                                                                                                                                         {
                                                                                                                                                            continue loop36;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            addr270:
                                                                                                                                                            loop24:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop13;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop12;
                                                                                                                                                               }
                                                                                                                                                               _loc6_ = §§pop();
                                                                                                                                                               loop18:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc8_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§9!G§.§3"%§(_loc6_));
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop19;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           break loop18;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop20;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc5_ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc7_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc8_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop().length <= 0)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(null);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue;
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop21;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop22;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop25;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop24;
                                                                                                                                                                     }
                                                                                                                                                                     return §§pop();
                                                                                                                                                                     addr181:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr251);
                                                                                                                                                               }
                                                                                                                                                               addr275:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr251);
                                                                                                                                                }
                                                                                                                                                §§goto(addr241);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr270);
                                                                                                                                       }
                                                                                                                                       §§goto(addr296);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop7;
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
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr383);
                           }
                           §§goto(addr317);
                        }
                        §§goto(addr268);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr337);
               }
               §§goto(addr203);
            }
            §§goto(addr381);
         }
         §§goto(addr251);
      }
      
      public function get §-I§() : Boolean
      {
         return this.§]c§;
      }
      
      private function §4!]§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.dispose();
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§3!H§.onComplete(param1);
         }
         while(true)
         {
            this.§]c§ = true;
            while(_loc2_)
            {
               this.removeEventListeners();
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private function §'!s§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3!H§.§'!s§(param1);
         }
      }
      
      private function §=o§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§3!H§.§=o§(param1);
            do
            {
               this.removeEventListeners();
            }
            while(!_loc2_);
            
         }
      }
      
      public function get §8!P§() : URLLoader
      {
         return this.§=B§;
      }
      
      private function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§=B§)
            {
               loop0:
               while(true)
               {
                  this.§=B§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§'!s§);
                  addr83:
                  loop1:
                  while(true)
                  {
                     this.§=B§.removeEventListener(Event.COMPLETE,this.onComplete);
                     while(!_loc1_)
                     {
                        this.§=B§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=o§);
                        if(!(_loc1_ && this))
                        {
                           if(!_loc1_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr83);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.removeEventListeners();
            while(true)
            {
               if(this.§=B§)
               {
                  loop1:
                  for(; _loc1_; if(_loc1_ || this)
                  {
                     addr24:
                     return;
                     addr66:
                  })
                  {
                     this.§=B§.close();
                     while(true)
                     {
                        this.§=B§ = null;
                        while(!_loc2_)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              this.§3!H§ = null;
                              continue loop1;
                           }
                        }
                     }
                  }
                  continue;
               }
               while(this.§3!H§)
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§goto(addr39);
                  }
                  §§goto(addr59);
               }
               §§goto(addr24);
            }
         }
         §§goto(addr66);
      }
      
      private function §<!H§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(_loc6_)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
   }
}
