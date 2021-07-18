package §^!m§
{
   import §6]§.§,"0§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §;?§
   {
       
      
      private var §+s§:Function = null;
      
      private var §6!c§:Function = null;
      
      public function §;?§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      protected static function §7`§(param1:Object) : URLVariables
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
      
      public static function sendRequest(param1:String, param2:Object, param3:String = "POST", param4:Function = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            new §;?§().§3!n§(param1,§7`§(param2),param3,param4);
         }
      }
      
      protected function §3!n§(param1:String, param2:Object, param3:String, param4:Function = null, param5:Function = null, param6:String = null) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || param1)
         {
            this.§+s§ = param4;
            if(_loc10_)
            {
               this.§6!c§ = param5;
            }
         }
         var _loc7_:URLRequest;
         (_loc7_ = new URLRequest(param1)).method = param3 == "GET" ? URLRequestMethod.GET : URLRequestMethod.POST;
         if(!_loc9_)
         {
            _loc7_.data = param2;
            if(_loc10_)
            {
               if(param6 != null)
               {
                  if(_loc10_ || param3)
                  {
                  }
                  addr80:
                  var _loc8_:URLLoader;
                  (_loc8_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                  if(_loc10_ || param3)
                  {
                     _loc8_.addEventListener(Event.COMPLETE,this.§<n§);
                     while(true)
                     {
                        _loc8_.addEventListener(IOErrorEvent.IO_ERROR,this.set);
                        while(!_loc9_)
                        {
                           _loc8_.load(_loc7_);
                           if(_loc9_)
                           {
                              continue;
                           }
                           return;
                           addr106:
                        }
                     }
                  }
                  §§goto(addr106);
               }
               §§goto(addr80);
            }
            _loc7_.contentType = param6;
         }
         §§goto(addr80);
      }
      
      private function §<n§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = this.readResponse((param1.target as URLLoader).data);
         if(!_loc3_)
         {
            if(this.§+s§ != null)
            {
               if(_loc4_ || param1)
               {
                  addr59:
                  this.§+s§(_loc2_);
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      protected function readResponse(param1:Object) : Object
      {
         return §3! §.§ #§(param1);
      }
      
      private function set(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §,"0§.log("IO Error on HTTP Connection!!" + param1.toString());
            loop0:
            while(true)
            {
               §,"0§.log("Received data:" + param1.target.data.toString());
               loop1:
               while(this.§6!c§ != null)
               {
                  if(_loc2_ || param1)
                  {
                     while(true)
                     {
                        this.§6!c§();
                     }
                     addr45:
                  }
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
               addr19:
               return;
            }
         }
         §§goto(addr45);
      }
   }
}
