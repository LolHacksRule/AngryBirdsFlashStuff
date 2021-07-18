package §@!v§
{
   import §=!M§.§9!P§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §?t§
   {
       
      
      private var §1!<§:Function = null;
      
      private var §`!P§:Function = null;
      
      public function §?t§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      protected static function §'"=§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(_loc7_ || param1)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      public static function sendRequest(param1:String, param2:Object, param3:String = "POST", param4:Function = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            new §?t§().§<!S§(param1,§'"=§(param2),param3,param4);
         }
      }
      
      protected function §<!S§(param1:String, param2:Object, param3:String, param4:Function = null, param5:Function = null, param6:String = null) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!_loc10_)
         {
            this.§1!<§ = param4;
            if(!_loc10_)
            {
               addr23:
               this.§`!P§ = param5;
            }
            var _loc7_:URLRequest;
            (_loc7_ = new URLRequest(param1)).method = param3 == "GET" ? URLRequestMethod.GET : URLRequestMethod.POST;
            if(!(_loc10_ && param2))
            {
               _loc7_.data = param2;
               if(!(_loc10_ && param1))
               {
                  if(param6 != null)
                  {
                     if(!_loc9_)
                     {
                     }
                     addr79:
                     var _loc8_:URLLoader;
                     (_loc8_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                     if(_loc9_)
                     {
                        _loc8_.addEventListener(Event.COMPLETE,this.§9"$§);
                     }
                     while(true)
                     {
                        _loc8_.addEventListener(IOErrorEvent.IO_ERROR,this.§]Z§);
                        while(_loc9_)
                        {
                           _loc8_.load(_loc7_);
                           if(!_loc10_)
                           {
                              return;
                           }
                        }
                     }
                  }
                  §§goto(addr79);
               }
               _loc7_.contentType = param6;
            }
            §§goto(addr79);
         }
         §§goto(addr23);
      }
      
      private function §9"$§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.readResponse((param1.target as URLLoader).data);
         if(!_loc4_)
         {
            if(this.§1!<§ != null)
            {
               if(_loc3_ || param1)
               {
                  addr58:
                  this.§1!<§(_loc2_);
               }
            }
            return;
         }
         §§goto(addr58);
      }
      
      protected function readResponse(param1:Object) : Object
      {
         return §6!N§.§]n§(param1);
      }
      
      private function §]Z§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §9!P§.log("IO Error on HTTP Connection!!" + param1.toString());
            while(true)
            {
               §9!P§.log("Received data:" + param1.target.data.toString());
               loop1:
               while(_loc2_)
               {
                  while(this.§`!P§ != null)
                  {
                     if(!(_loc3_ && param1))
                     {
                        this.§`!P§();
                     }
                     if(!(_loc2_ || _loc3_))
                     {
                        continue loop1;
                     }
                     §§goto(addr19);
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr76);
      }
   }
}
