package §'N§
{
   import §`R§.JPGEncoder;
   import §`R§.PNGEncoder;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Matrix;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class FacebookImageUploader
   {
      
      private static const §1j§:String = "https://graph.facebook.com/";
      
      private static const §&!h§:String = "[USER_ID]/photos";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §1j§ = "https://graph.facebook.com/";
         }
         do
         {
            §&!h§ = "[USER_ID]/photos";
         }
         while(_loc1_);
         
      }
      
      private var §?Y§:Function;
      
      private var §5!U§:Function;
      
      public function FacebookImageUploader(param1:ByteArray, param2:String, param3:String, param4:String, param5:Function, param6:Function)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§?Y§ = param5;
            while(true)
            {
               this.§5!U§ = param6;
               loop2:
               while(true)
               {
                  addr32:
                  while(true)
                  {
                     Security.loadPolicyFile(§1j§ + "/crossdomain.xml");
                     continue loop2;
                  }
                  continue loop0;
               }
               if(!(_loc10_ || this))
               {
                  continue;
               }
               Security.allowDomain(§1j§);
               if(!_loc11_)
               {
                  if(_loc11_)
                  {
                     continue loop0;
                  }
                  if(false)
                  {
                     §§goto(addr32);
                  }
                  §§push(§1j§);
                  if(_loc10_ || param3)
                  {
                     §§push(§§pop() + §&!h§ + "?access_token=");
                     if(!_loc11_)
                     {
                        §§push(§§pop() + param3);
                     }
                     §§push(§§pop());
                  }
                  var _loc7_:* = §§pop();
                  if(!_loc11_)
                  {
                     §§push(_loc7_);
                     if(!_loc11_)
                     {
                        §§push(§§pop().replace("[USER_ID]",param4));
                     }
                     _loc7_ = §§pop();
                     if(!_loc11_)
                     {
                        §§push(Log);
                        §§push("Uploading image; URL:");
                        if(_loc10_)
                        {
                           §§push(§§pop() + _loc7_);
                        }
                        §§pop().log(§§pop());
                     }
                  }
                  param1 = this.§;N§(param1,param2);
                  var _loc8_:URLRequest = new URLRequest(_loc7_);
                  if(_loc10_)
                  {
                     _loc8_.method = URLRequestMethod.POST;
                     addr142:
                     _loc8_.contentType = "multipart/form-data; boundary=" + this.§+1§();
                     if(!_loc11_)
                     {
                        _loc8_.data = param1;
                        if(_loc10_)
                        {
                           addr140:
                           if(false)
                           {
                              §§goto(addr142);
                           }
                           var _loc9_:URLLoader = new URLLoader();
                           if(_loc10_ || param3)
                           {
                              _loc9_.dataFormat = URLLoaderDataFormat.BINARY;
                              _loc9_.addEventListener(Event.COMPLETE,this.onComplete);
                              _loc9_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                              _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                              _loc9_.load(_loc8_);
                              addr238:
                              addr232:
                              addr222:
                              if(_loc10_)
                              {
                                 if(_loc10_)
                                 {
                                    if(_loc10_)
                                    {
                                       if(!(_loc10_ || param3))
                                       {
                                          §§goto(addr238);
                                       }
                                       return;
                                       addr192:
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr222);
                              }
                              addr212:
                              §§goto(addr212);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr142);
                     }
                     addr157:
                     §§goto(addr157);
                  }
                  §§goto(addr140);
               }
               §§goto(addr41);
            }
         }
      }
      
      public static function §4p§(param1:DisplayObject, param2:int, param3:int, param4:Number, param5:String, param6:String, param7:Function, param8:Function = null) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc9_:BitmapData = new BitmapData(param2,param3);
         if(_loc12_ || FacebookImageUploader)
         {
            _loc9_.draw(param1,new Matrix());
         }
         var _loc10_:JPGEncoder = new JPGEncoder(param4);
         var _loc11_:ByteArray = _loc10_.encode(_loc9_);
         if(!_loc13_)
         {
            new FacebookImageUploader(_loc11_,"image1.jpg",param5,param6,param7,param8);
         }
      }
      
      public static function §0q§(param1:BitmapData, param2:String, param3:String, param4:Function, param5:Function = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:BitmapData = param1;
         var _loc7_:ByteArray = PNGEncoder.encode(_loc6_);
         if(_loc8_ || FacebookImageUploader)
         {
            new FacebookImageUploader(_loc7_,"image1.png",param2,param3,param4,param5);
         }
      }
      
      public function §+1§() : String
      {
         return "AaB03y";
      }
      
      public function §;N§(param1:ByteArray, param2:String) : ByteArray
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = Number(0);
         var _loc4_:ByteArray = new ByteArray();
         if(_loc8_ || this)
         {
            _loc4_.endian = Endian.BIG_ENDIAN;
         }
         §§push(this.§+1§());
         if(_loc8_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         var _loc6_:ByteArray = new ByteArray();
         if(_loc8_)
         {
            _loc6_.writeShort(11565);
            do
            {
               _loc3_ = Number(0);
            }
            while(_loc9_ && _loc3_);
            
         }
         while(true)
         {
            §§push(_loc3_);
            if(_loc8_ || _loc3_)
            {
               if(_loc8_ || _loc3_)
               {
                  if(§§pop() >= _loc5_.length)
                  {
                     while(true)
                     {
                        if(_loc8_ || this)
                        {
                           continue;
                        }
                     }
                     addr117:
                     continue;
                  }
                  _loc6_.writeByte(_loc5_.charCodeAt(_loc3_));
                  §§push(_loc3_);
                  if(!_loc9_)
                  {
                     §§push(§§pop() + 1);
                  }
               }
               §§push(Number(§§pop()));
            }
            _loc3_ = §§pop();
            §§goto(addr117);
         }
         var _loc7_:* = "Content-Disposition: form-data; name=\"Filename\"";
         if(_loc8_)
         {
            §§push(0);
            while(true)
            {
               §§push(Number(§§pop()));
               loop5:
               while(true)
               {
                  _loc3_ = §§pop();
                  loop6:
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        §§push(_loc3_);
                        loop8:
                        while(true)
                        {
                           §§push(_loc7_);
                           loop9:
                           while(true)
                           {
                              if(§§pop() >= §§pop().length)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    _loc4_.writeShort(3338);
                                    loop11:
                                    while(true)
                                    {
                                       _loc4_.writeShort(3338);
                                       loop12:
                                       while(true)
                                       {
                                          §§push(param2);
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             addr834:
                                             while(true)
                                             {
                                                _loc7_ = §§pop();
                                                loop15:
                                                while(_loc8_ || this)
                                                {
                                                   §§push(0);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr822:
                                                      while(!(_loc9_ && this))
                                                      {
                                                         _loc3_ = §§pop();
                                                         while(true)
                                                         {
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               addr786:
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                                  addr787:
                                                                  while(!_loc9_)
                                                                  {
                                                                     if(§§pop() >= §§pop().length)
                                                                     {
                                                                        while(_loc8_ || param2)
                                                                        {
                                                                           _loc4_.writeShort(3338);
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              _loc4_.writeBytes(_loc6_,0,_loc6_.length);
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc8_ || _loc3_)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       break;
                                                                                       addr756:
                                                                                    }
                                                                                    _loc4_.writeShort(3338);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          continue loop24;
                                                                                       }
                                                                                       if(!(_loc8_ || _loc3_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push("Content-Disposition: form-data; name=\"Filedata\"; filename=\"");
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + param2);
                                                                                          if(!(_loc9_ && param2))
                                                                                          {
                                                                                             §§push(§§pop() + "\"");
                                                                                          }
                                                                                          addr748:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             addr749:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                addr750:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop16;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                                 continue loop23;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                        addr791:
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc4_.writeByte(_loc7_.charCodeAt(_loc3_));
                                                                        addr807:
                                                                        _loc3_++;
                                                                        addr818:
                                                                     }
                                                                     continue loop19;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop10;
                                             }
                                             addr369:
                                             if(_loc9_ && param2)
                                             {
                                                continue;
                                             }
                                             _loc7_ = §§pop();
                                             loop66:
                                             while(true)
                                             {
                                                if(!(_loc9_ && param1))
                                                {
                                                   addr384:
                                                   §§push(0);
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop67:
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            loop68:
                                                            while(true)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     loop69:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc8_)
                                                                        {
                                                                           addr209:
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              addr218:
                                                                              §§push(_loc7_);
                                                                              if(_loc8_ || this)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(§§pop() >= §§pop().length)
                                                                                       {
                                                                                          loop70:
                                                                                          while(!(_loc9_ && param2))
                                                                                          {
                                                                                             _loc4_.writeShort(3338);
                                                                                             while(_loc8_ || _loc3_)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   break loop68;
                                                                                                   addr884:
                                                                                                }
                                                                                                _loc4_.writeBytes(_loc6_,0,_loc6_.length);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      continue loop70;
                                                                                                   }
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   addr692:
                                                                                                   loop59:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            addr525:
                                                                                                            if(!(_loc9_ && _loc3_))
                                                                                                            {
                                                                                                               loop60:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  addr402:
                                                                                                                  addr873:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           §§push(_loc7_);
                                                                                                                           loop62:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 if(§§pop() >= §§pop().length)
                                                                                                                                 {
                                                                                                                                    while(_loc8_)
                                                                                                                                    {
                                                                                                                                       _loc4_.writeShort(3338);
                                                                                                                                       while(!(_loc9_ && param2))
                                                                                                                                       {
                                                                                                                                          _loc4_.writeShort(3338);
                                                                                                                                          break loop70;
                                                                                                                                       }
                                                                                                                                       loop56:
                                                                                                                                       while(_loc8_)
                                                                                                                                       {
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             addr503:
                                                                                                                                             §§push(0);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   loop58:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                            continue loop59;
                                                                                                                                                         }
                                                                                                                                                         addr611:
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                            addr614:
                                                                                                                                                            if(!(_loc9_ && param2))
                                                                                                                                                            {
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  addr623:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     break loop58;
                                                                                                                                                                     §§goto(addr623);
                                                                                                                                                                  }
                                                                                                                                                                  addr593:
                                                                                                                                                               }
                                                                                                                                                               addr715:
                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                               if(_loc8_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr704:
                                                                                                                                                                  _loc3_ = Number(§§pop() + 1);
                                                                                                                                                                  addr705:
                                                                                                                                                                  loop33:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     addr665:
                                                                                                                                                                     while(_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() < §§pop().length)
                                                                                                                                                                           {
                                                                                                                                                                              _loc4_.writeByte(_loc7_.charCodeAt(_loc3_));
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc8_ || param2))
                                                                                                                                                                           {
                                                                                                                                                                              break loop59;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop33;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop12;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr756);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr715);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr715);
                                                                                                                                                                  }
                                                                                                                                                                  addr703:
                                                                                                                                                                  addr663:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr786);
                                                                                                                                                            }
                                                                                                                                                            addr609:
                                                                                                                                                            §§goto(addr611);
                                                                                                                                                            §§push(Number(_loc3_ + 1));
                                                                                                                                                            addr633:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr704);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                      §§goto(addr209);
                                                                                                                                                   }
                                                                                                                                                   while(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                      break loop62;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr807);
                                                                                                                                                   addr511:
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                                §§goto(addr384);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                addr637:
                                                                                                                                                while(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   _loc3_ = §§pop();
                                                                                                                                                   while(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr593);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr750);
                                                                                                                                                }
                                                                                                                                                continue loop8;
                                                                                                                                                §§goto(addr503);
                                                                                                                                             }
                                                                                                                                             addr503:
                                                                                                                                             addr636:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc4_.writeShort(3338);
                                                                                                                                             addr577:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc4_.writeShort(3338);
                                                                                                                                                break loop56;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc4_.writeBytes(_loc6_,0,_loc6_.length);
                                                                                                                                          addr565:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc4_.writeShort(3338);
                                                                                                                                             addr554:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§push("Content-Disposition: form-data; name=\"Upload\"");
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc9_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc7_ = §§pop();
                                                                                                                                                            §§goto(addr544);
                                                                                                                                                            addr354:
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(_loc9_ && param2)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            addr362:
                                                                                                                                                            if(_loc8_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr369);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr650:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc8_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc7_ = §§pop();
                                                                                                                                                                        while(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr636);
                                                                                                                                                                           §§push(0);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop7;
                                                                                                                                                                        addr660:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr834);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                                  §§goto(addr362);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr749);
                                                                                                                                                               addr650:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§push("Submit Query");
                                                                                                                                                      addr399:
                                                                                                                                                      break;
                                                                                                                                                      if(!(_loc8_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr354);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr650);
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr737);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                      §§goto(addr535);
                                                                                                                                                   }
                                                                                                                                                   addr535:
                                                                                                                                                   §§goto(addr748);
                                                                                                                                                   addr645:
                                                                                                                                                }
                                                                                                                                                §§goto(addr818);
                                                                                                                                             }
                                                                                                                                             §§goto(addr807);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr544:
                                                                                                                                    }
                                                                                                                                    §§goto(addr791);
                                                                                                                                    addr416:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    _loc4_.writeByte(_loc7_.charCodeAt(_loc3_));
                                                                                                                                    addr496:
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          if(_loc8_ || param1)
                                                                                                                                          {
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc9_ && param1))
                                                                                                                                                {
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      addr460:
                                                                                                                                                      if(_loc8_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc8_ || _loc3_))
                                                                                                                                                         {
                                                                                                                                                            break loop68;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + 1);
                                                                                                                                                         if(_loc8_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr483:
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                               continue loop60;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr822);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr807);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                            break loop69;
                                                                                                                                                            §§goto(addr460);
                                                                                                                                                         }
                                                                                                                                                         addr733:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr703);
                                                                                                                                                }
                                                                                                                                                §§goto(addr665);
                                                                                                                                             }
                                                                                                                                             §§goto(addr609);
                                                                                                                                          }
                                                                                                                                          §§goto(addr483);
                                                                                                                                       }
                                                                                                                                       §§goto(addr660);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr554);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                              §§goto(addr218);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop() < §§pop().length)
                                                                                                                              {
                                                                                                                                 _loc4_.writeByte(_loc7_.charCodeAt(_loc3_));
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              while(!_loc9_)
                                                                                                                              {
                                                                                                                                 _loc4_.writeShort(3338);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc4_.writeShort(3338);
                                                                                                                                    addr592:
                                                                                                                                    addr392:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc4_.writeBytes(param1,0,param1.length);
                                                                                                                                       §§goto(addr586);
                                                                                                                                    }
                                                                                                                                    if(_loc9_ && param1)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§goto(addr399);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr640);
                                                                                                                           }
                                                                                                                           §§goto(addr633);
                                                                                                                           addr412:
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr475);
                                                                                                                  }
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr614);
                                                                                                      }
                                                                                                      §§goto(addr600);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr645);
                                                                                                      §§goto(addr525);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr830);
                                                                                                if(!(_loc8_ || this))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!(_loc9_ && param1))
                                                                                                {
                                                                                                   if(!(_loc9_ && param2))
                                                                                                   {
                                                                                                      return _loc4_;
                                                                                                   }
                                                                                                   §§goto(addr486);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr324:
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc8_ || param1)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               §§push(§§pop() + 1);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  addr274:
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     continue loop67;
                                                                                                                  }
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     addr279:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ && this))
                                                                                                                        {
                                                                                                                           _loc3_ = §§pop();
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr807);
                                                                                                                     }
                                                                                                                     §§goto(addr637);
                                                                                                                  }
                                                                                                                  §§goto(addr402);
                                                                                                               }
                                                                                                               §§goto(addr279);
                                                                                                            }
                                                                                                            §§goto(addr614);
                                                                                                         }
                                                                                                         §§goto(addr483);
                                                                                                      }
                                                                                                      §§goto(addr274);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr592);
                                                                                             }
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                continue loop68;
                                                                                             }
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                continue loop66;
                                                                                             }
                                                                                             if(!(_loc9_ && _loc3_))
                                                                                             {
                                                                                                if(_loc9_ && param2)
                                                                                                {
                                                                                                   break loop69;
                                                                                                }
                                                                                                if(_loc8_ || param1)
                                                                                                {
                                                                                                   continue loop69;
                                                                                                }
                                                                                                continue loop6;
                                                                                             }
                                                                                             §§goto(addr496);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§goto(addr392);
                                                                                             }
                                                                                             §§goto(addr432);
                                                                                             §§goto(addr232);
                                                                                          }
                                                                                          addr232:
                                                                                          §§goto(addr650);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc4_.writeByte(_loc7_.charCodeAt(_loc3_));
                                                                                       }
                                                                                       §§goto(addr324);
                                                                                    }
                                                                                    §§goto(addr787);
                                                                                 }
                                                                                 §§goto(addr668);
                                                                              }
                                                                              §§goto(addr412);
                                                                           }
                                                                           §§goto(addr511);
                                                                        }
                                                                        §§goto(addr279);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr663);
                                                                     }
                                                                  }
                                                                  §§goto(addr565);
                                                               }
                                                               §§goto(addr416);
                                                            }
                                                            addr872:
                                                            §§goto(addr873);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr503);
                                                }
                                                §§goto(addr577);
                                             }
                                             §§goto(addr718);
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 _loc4_.writeByte(_loc7_.charCodeAt(_loc3_));
                                 §§goto(addr884);
                              }
                              §§goto(addr872);
                           }
                        }
                     }
                  }
               }
               if(!(_loc8_ || param2))
               {
                  continue;
               }
               §§goto(addr733);
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr688);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = JSON.parse(param1.target.data.toString() as String);
         if(!(_loc3_ && this))
         {
            this.§?Y§(_loc2_.id);
         }
      }
      
      public function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Log);
            §§push("Error!! ");
            if(_loc3_ || this)
            {
               §§push(§§pop() + param1.toString());
            }
            §§pop().log(§§pop());
         }
         loop0:
         while(true)
         {
            §§push(Log);
            §§push("Data?");
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() + param1.target.data.toString());
            }
            §§pop().log(§§pop());
            do
            {
               if(!_loc2_)
               {
                  if(this.§5!U§ == null)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            while(if(!_loc2_)
            {
               this.§5!U§();
            }, !_loc3_);
            
            return;
         }
      }
   }
}
