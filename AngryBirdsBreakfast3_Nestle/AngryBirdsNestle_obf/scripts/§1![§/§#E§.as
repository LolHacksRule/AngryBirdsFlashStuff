package §1![§
{
   import §,L§.§^4§;
   import §,j§.§'u§;
   import §2!&§.§;"%§;
   import §4[§.§2P§;
   import com.angrybirds.utils.§30§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §#E§
   {
      
      public static const §3b§:String = "serializationJSON";
      
      public static const §0§:String = "serializationURLParameters";
      
      public static const §^!+§:String = "09sb85etmnspa89j3mx7han3689ngp9a";
      
      public static const §@]§:String = "3v9a8crja089ph7st8oh7apr9cm8ja43";
      
      private static const §,H§:String = "|";
      
      private static const §8w§:int = 500;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3b§ = "serializationJSON";
            while(true)
            {
               §0§ = "serializationURLParameters";
               addr86:
               while(_loc2_)
               {
                  §^!+§ = "09sb85etmnspa89j3mx7han3689ngp9a";
               }
            }
         }
         do
         {
            §@]§ = "3v9a8crja089ph7st8oh7apr9cm8ja43";
            loop3:
            do
            {
               §,H§ = "|";
               while(!_loc1_)
               {
                  §8w§ = 500;
                  if(!(_loc1_ && _loc2_))
                  {
                     continue loop3;
                  }
               }
               §§goto(addr86);
            }
            while(!(_loc2_ || _loc2_));
            
         }
         while(!_loc2_);
         
      }
      
      private var §]o§:URLLoader;
      
      private var §^!u§:§30§;
      
      private var §1!S§:Boolean = false;
      
      public function §#E§(param1:Object, param2:String, param3:§30§, param4:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param3)
         {
            super();
         }
         while(true)
         {
            while(true)
            {
               this.§]o§ = new §;"%§();
               do
               {
                  this.§^!u§ = param3;
               }
               while(!_loc8_);
               
               if(_loc7_ && param1)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc5_:URLRequest;
               (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
               if(_loc8_ || this)
               {
                  this.§]o§.dataFormat = URLLoaderDataFormat.TEXT;
               }
               var _loc6_:* = param4;
               if(_loc8_)
               {
                  §§push(§3b§);
                  if(_loc8_)
                  {
                     §§push(_loc6_);
                     if(!_loc7_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc7_ && param2))
                           {
                              addr137:
                              §§push(0);
                              if(_loc7_)
                              {
                                 addr152:
                              }
                           }
                           else
                           {
                              addr144:
                              §§push(1);
                              if(!(_loc7_ && param3))
                              {
                                 §§goto(addr152);
                              }
                           }
                           addr157:
                           loop10:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc5_.contentType = "application/json";
                                 if(_loc8_ || param3)
                                 {
                                    addr77:
                                    _loc5_.data = §'u§.encode(param1);
                                    if(_loc7_)
                                    {
                                    }
                                    this.§]o§.addEventListener(Event.COMPLETE,this.onComplete);
                                    while(true)
                                    {
                                       this.§]o§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?!§);
                                       loop4:
                                       for(; _loc8_ || param2; while(_loc8_ || param2)
                                       {
                                          while(true)
                                          {
                                             this.§1!S§ = false;
                                             §§goto(addr185);
                                          }
                                       })
                                       {
                                          this.§]o§.addEventListener(IOErrorEvent.IO_ERROR,this.§'![§);
                                          while(true)
                                          {
                                             _loc5_.url = param2;
                                             continue loop4;
                                             addr185:
                                             while(true)
                                             {
                                                if(_loc8_ || param3)
                                                {
                                                   break loop10;
                                                }
                                                break;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 break;
                              case 1:
                                 _loc5_.data = this.§6!P§(param1);
                                 if(!_loc7_)
                                 {
                                    if(false)
                                    {
                                    }
                                    §§goto(addr77);
                                 }
                                 §§goto(addr204);
                              default:
                                 §§goto(addr77);
                           }
                           continue loop9;
                        }
                        addr143:
                        if(§0§ === _loc6_)
                        {
                           §§goto(addr144);
                        }
                        else
                        {
                           §§push(2);
                        }
                        §§goto(addr157);
                        §§goto(addr144);
                     }
                  }
                  §§goto(addr143);
               }
               §§goto(addr137);
            }
         }
      }
      
      public static function §6!K§(param1:Object) : String
      {
         return §^4§.§<f§([param1.levelId,param1.score,§2P§.§8!e§.id,§^!+§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §0"$§(param1:Array) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Object = null;
         var _loc2_:* = "";
         for each(_loc3_ in param1)
         {
            if(_loc6_)
            {
               §§push(_loc2_);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() + (_loc3_.levelId + "|"));
               }
               _loc2_ = §§pop();
            }
         }
         if(_loc6_ || §#E§)
         {
            §§push(_loc2_);
            if(!(_loc7_ && param1))
            {
               §§push(§§pop() + §^!+§);
               if(!_loc7_)
               {
                  addr94:
                  _loc2_ = §§pop();
                  return §^4§.§<f§(_loc2_);
               }
            }
         }
         §§goto(addr94);
      }
      
      public static function §`"2§(param1:String, param2:Array) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:Object = null;
         §§push(§@]§);
         if(_loc9_ || param1)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc9_ || param1)
         {
            §§push(§^4§.§<f§(param1 + §,H§ + _loc3_));
            if(!_loc8_)
            {
               §§push(§§pop());
            }
            _loc3_ = §§pop();
         }
         var _loc4_:* = "";
         for each(_loc5_ in param2)
         {
            if(_loc9_)
            {
               §§push(_loc4_);
               if(!(_loc8_ && param2))
               {
                  §§push(§§pop() + (_loc5_.type + _loc5_.count));
                  if(!_loc8_)
                  {
                     addr91:
                     _loc4_ = §§pop();
                     if(_loc9_ || _loc3_)
                     {
                        addr99:
                        §§push(§^4§.§<f§(_loc3_ + §,H§ + _loc4_.toString()));
                        if(!(_loc8_ && _loc3_))
                        {
                           addr124:
                           §§push(§§pop());
                        }
                        _loc3_ = §§pop();
                     }
                     continue;
                  }
                  §§goto(addr124);
               }
               §§goto(addr91);
            }
            §§goto(addr99);
         }
         return _loc3_;
      }
      
      public static function §;2§(param1:Object) : String
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:* = null;
         var _loc7_:Array = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = 0;
         var _loc2_:Array = [];
         if(!_loc14_)
         {
            _loc2_.push(param1.levelId);
            while(true)
            {
               _loc2_.push(param1.score + "");
               loop3:
               while(!(_loc14_ && param1))
               {
                  _loc2_.push(§^!+§);
                  if(_loc14_ && _loc3_)
                  {
                     continue;
                  }
                  addr50:
                  if(_loc13_ || _loc3_)
                  {
                     if(false)
                     {
                        while(true)
                        {
                           _loc2_.push(param1.stars + "");
                           continue loop3;
                        }
                        addr87:
                        var _loc3_:String = param1.gamePlay;
                        var _loc4_:Array = _loc3_.split(":");
                        var _loc11_:* = 0;
                        var _loc12_:* = _loc4_;
                        addr59:
                     }
                     else
                     {
                        §§goto(addr87);
                     }
                     for each(_loc5_ in _loc12_)
                     {
                        if(!(_loc14_ && _loc3_))
                        {
                           _loc2_.push(_loc5_);
                        }
                     }
                     if(_loc13_ || param1)
                     {
                        _loc2_.push(param1.userId);
                     }
                     §§push(param1.blocks);
                     if(_loc13_ || param1)
                     {
                        §§push(_loc6_ = §§pop());
                     }
                     _loc7_ = §§pop().split(",");
                     if(_loc13_)
                     {
                        §§push(0);
                        if(_loc13_)
                        {
                           _loc11_ = §§pop();
                           if(!_loc14_)
                           {
                              for each(_loc5_ in _loc7_)
                              {
                                 if(!_loc14_)
                                 {
                                    _loc2_.push(_loc5_);
                                 }
                              }
                           }
                           if(_loc13_ || _loc3_)
                           {
                              §§push("");
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 addr365:
                                 loop21:
                                 while(true)
                                 {
                                    §§push("");
                                    if(!(_loc13_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    _loc9_ = §§pop();
                                    loop22:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop23:
                                       while(true)
                                       {
                                          _loc10_ = §§pop();
                                          loop24:
                                          while(true)
                                          {
                                             addr327:
                                             loop8:
                                             while(true)
                                             {
                                                §§push(_loc10_);
                                                if(!(_loc14_ && §#E§))
                                                {
                                                   if(!(_loc14_ && param1))
                                                   {
                                                      if(§§pop() >= _loc2_.length)
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            if(!_loc14_)
                                                            {
                                                               if(_loc14_ && param1)
                                                               {
                                                                  continue loop22;
                                                               }
                                                               addr232:
                                                               §§push(§8w§);
                                                               if(_loc14_ && param1)
                                                               {
                                                                  continue loop23;
                                                               }
                                                               if(§§pop() < _loc2_.length)
                                                               {
                                                                  if(_loc13_ || param1)
                                                                  {
                                                                     addr249:
                                                                     if(!(_loc14_ && §#E§))
                                                                     {
                                                                        §§push(§^4§.§<f§(_loc8_ + _loc9_));
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§push(§§pop());
                                                                        }
                                                                        loop10:
                                                                        while(_loc13_ || param1)
                                                                        {
                                                                           _loc9_ = §§pop();
                                                                           while(_loc13_ || _loc3_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    return §§pop();
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              if(_loc13_ || _loc3_)
                                                                              {
                                                                                 §§push(§^4§.§<f§(_loc8_ + _loc9_));
                                                                                 if(_loc13_ || param1)
                                                                                 {
                                                                                    if(!(_loc14_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       break loop10;
                                                                                    }
                                                                                    addr331:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + _loc2_[_loc10_]);
                                                                                       addr336:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc8_ = §§pop();
                                                                                          addr337:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             addr287:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() <= §8w§)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                addr280:
                                                                                                loop12:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc10_++;
                                                                                                   addr282:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         addr284:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc13_ || param1)
                                                                                                            {
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            continue loop24;
                                                                                                         }
                                                                                                         §§goto(addr327);
                                                                                                         addr319:
                                                                                                      }
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   continue loop24;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 break loop10;
                                                                              }
                                                                              continue loop21;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                              _loc9_ = §§pop();
                                                                              §§goto(addr319);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr336);
                                                                           }
                                                                        }
                                                                        §§goto(addr280);
                                                                     }
                                                                     §§goto(addr337);
                                                                  }
                                                                  §§goto(addr272);
                                                               }
                                                               §§goto(addr194);
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                         §§goto(addr249);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc8_);
                                                      }
                                                      §§goto(addr331);
                                                   }
                                                   §§goto(addr287);
                                                }
                                                §§goto(addr232);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr284);
                        }
                        §§goto(addr287);
                     }
                     §§goto(addr365);
                  }
                  else
                  {
                     while(true)
                     {
                        §§goto(addr50);
                     }
                     addr81:
                  }
                  §§goto(addr59);
               }
            }
         }
         §§goto(addr81);
      }
      
      private static function getText(param1:Array) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:* = "";
         for each(_loc3_ in param1)
         {
            if(!_loc6_)
            {
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(§§pop() + String.fromCharCode(_loc3_));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function get §<"#§() : Boolean
      {
         return this.§1!S§;
      }
      
      private function §-6§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.dispose();
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^!u§.onComplete(param1);
            do
            {
               this.§1!S§ = true;
               do
               {
                  this.removeEventListeners();
               }
               while(_loc3_);
               
            }
            while(_loc3_);
            
         }
      }
      
      private function §?!§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§^!u§.§?!§(param1);
         }
      }
      
      private function §'![§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^!u§.§'![§(param1);
         }
         do
         {
            this.removeEventListeners();
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      public function get §9"-§() : URLLoader
      {
         return this.§]o§;
      }
      
      private function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§]o§)
            {
               loop0:
               while(true)
               {
                  this.§]o§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?!§);
                  addr92:
                  while(true)
                  {
                     this.§]o§.removeEventListener(Event.COMPLETE,this.onComplete);
                     while(!(_loc2_ && this))
                     {
                        continue loop0;
                        this.§]o§.removeEventListener(IOErrorEvent.IO_ERROR,this.§'![§);
                        if(_loc1_)
                        {
                           §§goto(addr24);
                        }
                     }
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr92);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.removeEventListeners();
            while(true)
            {
               if(this.§]o§)
               {
                  loop1:
                  while(true)
                  {
                     this.§]o§.close();
                     addr88:
                     while(true)
                     {
                        this.§]o§ = null;
                        continue loop1;
                     }
                  }
               }
               while(this.§^!u§)
               {
                  §§goto(addr27);
               }
               addr19:
               return;
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr19);
            }
         }
         §§goto(addr70);
      }
      
      private function §6!P§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(!(_loc6_ && _loc2_))
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
   }
}
