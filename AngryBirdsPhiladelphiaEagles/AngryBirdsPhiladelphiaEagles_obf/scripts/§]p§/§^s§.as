package §]p§
{
   import §1!I§.§1X§;
   import §6g§.§&N§;
   import §;!2§.§,>§;
   import §;f§.§&!$§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §^s§
   {
      
      public static const §<r§:String = "serializationJSON";
      
      public static const §&a§:String = "serializationURLParameters";
      
      public static const §39§:String = "7ad51q648a3a1afb71278a4dz79838e";
      
      public static const §+u§:Vector.<String>;
      
      public static const §]k§:int = 2;
      
      public static var §3!2§:String = "";
      
      public static var §==§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §&a§ = "serializationURLParameters";
            §39§ = "7ad51q648a3a1afb71278a4dz79838e";
            while(true)
            {
               §+u§ = Vector.<String>(["d4a50f26687b5f428e97811edd7d27b5325a90fd","aea80166563c0b964a90fd0c46ad41d6913f2638","5afa60dbdac0c45e39d34d9c99daa7e5926cdf31","723d8a9546afc80a92e799dfaf5bf22d7ff12ef5","3cfe4fadad900f5e07861422b67a32412d6a1a54","23312be24f0d34fbe173c5783e9cdf3eff6ed2a5","52ad3de0bfb259ea023695aa43cf60d05eacf147","0d9842194cde3189e291804879260852bc2fd52d","39bce1b13e75ea0586cb686d0c253ab499dca439","985f9cc1fc339e4f10663619620638fd96a0c2a4","3fc91d906ab9aef282d5f636ae509d725c4ff541","ad401b74134e6491d343edb89f46fa2af6ac15fd","e9014fe4da68abf3c096b5fb539b114aa60dc4a8","4bede192cdbee8ca149a74dc5a7a76f3782c541f","14a744a47f29b8885036d017cbef52ebd7cc11d5","f681cbd682e3d0b2364f98618a9b5037058f2d74"]);
               while(!(_loc1_ && _loc1_))
               {
                  §]k§ = 2;
                  while(!(_loc1_ && _loc1_))
                  {
                     if(!_loc1_)
                     {
                        §3!2§ = "";
                        while(!(_loc1_ && _loc2_))
                        {
                           §==§ = 0;
                           if(!_loc1_)
                           {
                              return;
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private var §5o§:URLLoader;
      
      private var §3;§:§&N§;
      
      private var §9f§:Boolean = false;
      
      public function §^s§(param1:Object, param2:String, param3:§&N§, param4:String)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_)
         {
            super();
         }
         var _loc5_:Date;
         var _loc6_:int = (_loc5_ = new Date()).hours * 60 + _loc5_.minutes;
         if(_loc10_)
         {
            §==§ = _loc6_;
         }
         while(true)
         {
            while(true)
            {
               this.§5o§ = new §&!$§();
               do
               {
                  this.§3;§ = param3;
               }
               while(!(_loc10_ || param2));
               
               if(_loc9_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc7_:URLRequest;
               (_loc7_ = new URLRequest()).method = URLRequestMethod.POST;
               if(_loc10_)
               {
                  this.§5o§.dataFormat = URLLoaderDataFormat.TEXT;
               }
               var _loc8_:* = param4;
               if(_loc10_ || this)
               {
                  §§push(§<r§);
                  if(_loc10_ || this)
                  {
                     §§push(_loc8_);
                     if(_loc10_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc9_ && param1))
                           {
                              §§push(0);
                              if(!_loc10_)
                              {
                                 addr161:
                              }
                           }
                           else
                           {
                              addr153:
                              §§push(1);
                              if(!(_loc9_ && param2))
                              {
                                 §§goto(addr161);
                              }
                           }
                           addr166:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc7_.contentType = "application/json";
                                 if(!_loc9_)
                                 {
                                    addr83:
                                    _loc7_.data = §,>§.encode(param1);
                                    break;
                                 }
                                 return;
                                 addr185:
                              case 1:
                                 _loc7_.data = this.§5w§(param1);
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr83);
                           }
                           this.§5o§.addEventListener(Event.COMPLETE,this.onComplete);
                           this.§5o§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9>§);
                           while(true)
                           {
                              this.§5o§.addEventListener(IOErrorEvent.IO_ERROR,this.§'r§);
                              while(_loc10_ || this)
                              {
                                 _loc7_.url = param2;
                                 do
                                 {
                                    this.§9f§ = false;
                                 }
                                 while(_loc9_);
                                 
                                 this.§5o§.load(_loc7_);
                                 if(_loc9_ && param3)
                                 {
                                    continue;
                                 }
                                 §§goto(addr185);
                              }
                           }
                        }
                        else
                        {
                           addr151:
                           §§push(§&a§);
                           §§push(_loc8_);
                        }
                        §§goto(addr153);
                     }
                     if(§§pop() === §§pop())
                     {
                        §§goto(addr153);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr151);
               }
               §§goto(addr153);
            }
         }
      }
      
      public static function §?0§(param1:String) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§^s§.§39§);
         if(_loc4_ || param1)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= param1.length)
            {
               if(!_loc5_)
               {
                  §§push(_loc2_);
                  if(!(_loc5_ && param1))
                  {
                     break;
                  }
                  addr85:
                  _loc2_ = §§pop();
                  while(true)
                  {
                     _loc3_++;
                  }
                  addr86:
               }
               while(_loc5_)
               {
                  §§goto(addr86);
               }
               continue;
            }
            §§push(§1X§.§null§(param1.substring(_loc3_) + _loc2_));
            if(_loc4_)
            {
               §§push(§§pop());
            }
            §§goto(addr85);
         }
         return §§pop();
      }
      
      public static function §+d§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(!_loc3_)
               {
                  if(§§pop() >= §+u§.length)
                  {
                     if(!(_loc3_ && §^s§))
                     {
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr51);
                           }
                           addr92:
                        }
                        else
                        {
                           addr64:
                           _loc2_++;
                           addr66:
                           if(_loc4_)
                           {
                              continue;
                           }
                           addr80:
                           if(§+u§[_loc2_] != §3!2§)
                           {
                              if(_loc4_)
                              {
                                 §3!2§ = §+u§[_loc2_];
                              }
                              §§goto(addr92);
                           }
                        }
                        §§push(_loc2_);
                        break;
                     }
                     §§goto(addr66);
                  }
                  else
                  {
                     if(§+u§[_loc2_] != param1)
                     {
                        §§goto(addr64);
                     }
                     §§goto(addr80);
                  }
               }
               break;
            }
            addr51:
            return -1;
         }
         return §§pop();
      }
      
      public static function §<I§() : int
      {
         return §+d§(§3!2§);
      }
      
      private static function §null §(param1:Array) : String
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
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§§pop() + String.fromCharCode(_loc3_));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function get §7_§() : Boolean
      {
         return this.§9f§;
      }
      
      private function §[!"§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
            this.§3;§.onComplete(param1);
         }
         while(true)
         {
            this.§9f§ = true;
            while(!_loc3_)
            {
               this.removeEventListeners();
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      private function §9>§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3;§.§9>§(param1);
         }
      }
      
      private function §'r§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§3;§.§'r§(param1);
         }
         do
         {
            this.removeEventListeners();
         }
         while(_loc3_ && _loc3_);
         
      }
      
      public function get §=`§() : URLLoader
      {
         return this.§5o§;
      }
      
      private function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§5o§)
            {
               if(_loc1_)
               {
                  this.§5o§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9>§);
                  addr87:
                  while(true)
                  {
                     this.§5o§.removeEventListener(Event.COMPLETE,this.onComplete);
                     while(_loc1_)
                     {
                        this.§5o§.removeEventListener(IOErrorEvent.IO_ERROR,this.§'r§);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr24);
                        }
                     }
                  }
                  addr87:
               }
               §§goto(addr87);
            }
            addr24:
            return;
         }
         §§goto(addr87);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.removeEventListeners();
         loop0:
         while(true)
         {
            if(this.§5o§)
            {
               this.§5o§.close();
               this.§5o§ = null;
               while(true)
               {
                  addr36:
                  if(!(_loc1_ && _loc2_))
                  {
                     continue loop0;
                  }
               }
               addr68:
            }
            while(this.§3;§)
            {
               §§goto(addr36);
               §§goto(addr68);
            }
            addr18:
            return;
         }
      }
      
      private function §5w§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(_loc7_ || this)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
   }
}
