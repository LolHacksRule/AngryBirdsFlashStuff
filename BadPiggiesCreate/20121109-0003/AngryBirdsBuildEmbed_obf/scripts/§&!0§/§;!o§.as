package §&!0§
{
   import § !r§.§`![§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §;!o§
   {
       
      
      private var §^'§:Function = null;
      
      private var §`!r§:Function = null;
      
      public function §;!o§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      protected static function §^d§(param1:Object) : URLVariables
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
      
      public static function sendRequest(param1:String, param2:Object, param3:String = "POST", param4:Function = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            new §;!o§().§ !k§(param1,§^d§(param2),param3,param4);
         }
      }
      
      protected function § !k§(param1:String, param2:Object, param3:String, param4:Function = null, param5:Function = null, param6:String = null) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || param2)
         {
            this.§^'§ = param4;
            if(!_loc9_)
            {
               this.§`!r§ = param5;
            }
         }
         var _loc7_:URLRequest;
         (_loc7_ = new URLRequest(param1)).method = param3 == "GET" ? URLRequestMethod.GET : URLRequestMethod.POST;
         if(_loc10_)
         {
            _loc7_.data = param2;
            if(_loc10_)
            {
               if(param6 != null)
               {
                  if(_loc10_)
                  {
                     addr72:
                     _loc7_.contentType = param6;
                  }
               }
               var _loc8_:URLLoader;
               (_loc8_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(!_loc9_)
               {
                  _loc8_.addEventListener(Event.COMPLETE,this.§2!a§);
                  if(!_loc9_)
                  {
                     _loc8_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                     if(_loc10_)
                     {
                        _loc8_.load(_loc7_);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr72);
      }
      
      private function §2!a§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = this.readResponse((param1.target as URLLoader).data);
         if(!(_loc3_ && _loc2_))
         {
            if(this.§^'§ != null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr54:
                  this.§^'§(_loc2_);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      protected function readResponse(param1:Object) : Object
      {
         return §6B§.§+2§(param1);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§`![§);
            §§push("IO Error on HTTP Connection!!");
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + param1.toString());
            }
            §§pop().log(§§pop());
            if(!_loc2_)
            {
               §§push(§`![§);
               §§push("Received data:");
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() + param1.target.data.toString());
               }
               §§pop().log(§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  addr76:
                  if(this.§`!r§ != null)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr87:
                        this.§`!r§();
                     }
                  }
               }
               return;
            }
            §§goto(addr76);
         }
         §§goto(addr87);
      }
   }
}
