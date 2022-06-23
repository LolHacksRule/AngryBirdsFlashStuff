package §6!F§
{
   import §3a§.§7!+§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §@S§ extends §2!?§
   {
       
      
      private var §;;§:Vector.<URLLoader>;
      
      public function §@S§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§;;§ = new Vector.<URLLoader>();
            if(_loc3_)
            {
               super(param1,param2);
            }
         }
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:URLLoader = null;
         if(_loc6_ || param2)
         {
            super.sendRequest(param1,param2);
         }
         var _loc3_:URLRequest = null;
         if(_loc6_)
         {
            if(§9A§.§-[§ == "Google")
            {
               addr40:
               _loc3_ = new URLRequest(§0S§() + param1);
               if(_loc6_ || param1)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(!(_loc5_ && param2))
                  {
                     addr66:
                     _loc3_.data = this.§9!,§(param2);
                  }
                  (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                  if(_loc6_ || _loc3_)
                  {
                     _loc4_.addEventListener(Event.COMPLETE,this.§&Y§);
                     if(_loc6_ || param2)
                     {
                        addr109:
                        _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                        if(_loc6_ || _loc3_)
                        {
                           §§goto(addr122);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr109);
               }
               §§goto(addr66);
            }
            else
            {
               _loc3_ = new URLRequest(§0S§());
               if(_loc6_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(!(_loc5_ && param1))
                  {
                     _loc3_.data = this.§9!,§(param2);
                     if(_loc6_)
                     {
                        addr158:
                        _loc3_.data.C = param1;
                     }
                  }
                  (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                  if(_loc6_ || param1)
                  {
                     _loc4_.addEventListener(Event.COMPLETE,this.§&Y§);
                     if(!_loc5_)
                     {
                        _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                        if(_loc6_)
                        {
                           _loc4_.load(_loc3_);
                           if(!_loc6_)
                           {
                           }
                           §§goto(addr122);
                        }
                     }
                     §§goto(addr122);
                  }
                  this.§;;§.push(_loc4_);
                  §§goto(addr122);
               }
               §§goto(addr158);
            }
            return;
         }
         §§goto(addr40);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §7!C§();
            if(!(_loc2_ && this))
            {
               addr27:
               this.§,m§();
            }
            return;
         }
         §§goto(addr27);
      }
      
      private function §,m§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:URLLoader = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§;;§)
         {
            if(!(_loc4_ && _loc2_))
            {
               this.§=!6§(_loc1_);
               if(!_loc5_)
               {
                  continue;
               }
            }
            this.§?b§(_loc1_);
         }
         if(_loc5_)
         {
            this.§;;§ = new Vector.<URLLoader>();
         }
      }
      
      private function §9!,§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(!(_loc7_ && param1))
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private function §&Y§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(!(_loc6_ && param1))
         {
            this.§=!6§(param1.target as URLLoader);
            if(_loc5_ || this)
            {
               addr39:
               this.§?b§(param1.target as URLLoader);
            }
            var _loc3_:int = 0;
            for(_loc2_ in (param1.target as URLLoader).data)
            {
               if(_loc5_)
               {
                  §§push(§7!+§);
                  §§push(_loc2_ + ": ");
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
                  }
                  §§pop().log(§§pop());
               }
            }
            if(_loc5_ || param1)
            {
               § !L§(§"!-§.§?$§((param1.target as URLLoader).data));
            }
            return;
         }
         §§goto(addr39);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§=!6§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(_loc4_)
         {
            _loc2_.E = param1.text;
            _loc2_.C = "serverConnectionError";
            if(_loc4_ || _loc2_)
            {
               this.§?b§(param1.target as URLLoader);
               if(_loc4_ || _loc2_)
               {
                  addr78:
                  §7!+§.log((param1.target as URLLoader).data);
                  §§push(§7!+§);
                  §§push("[HTTPConnection] ioError: ");
                  if(_loc4_)
                  {
                     §§push(§§pop() + param1.text);
                  }
                  §§pop().log(§§pop());
                  if(!_loc4_)
                  {
                  }
                  §§goto(addr100);
               }
               §]Y§(§"!-§.§?$§(_loc2_));
               addr100:
               return;
            }
         }
         §§goto(addr78);
      }
      
      private function §=!6§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            param1.removeEventListener(Event.COMPLETE,this.§&Y§);
            if(!(_loc3_ && param1))
            {
               param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            }
         }
      }
      
      private function §?b§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§;;§.indexOf(param1) > -1)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr42:
                  this.§;;§.splice(this.§;;§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr42);
      }
   }
}
