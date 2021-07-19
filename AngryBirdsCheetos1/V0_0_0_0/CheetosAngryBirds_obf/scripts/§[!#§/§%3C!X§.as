package §[!#§
{
   import §@,§.§4h§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §<!X§ extends §]R§
   {
       
      
      private var §4!"§:Vector.<URLLoader>;
      
      public function §<!X§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§4!"§ = new Vector.<URLLoader>();
         }
         do
         {
            super(param1,param2);
         }
         while(!_loc4_);
         
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:URLLoader = null;
         if(!(_loc5_ && param1))
         {
            super.sendRequest(param1,param2);
         }
         var _loc3_:URLRequest = null;
         if(_loc6_ || param1)
         {
            if(§6v§.§%0§ != "Google")
            {
               _loc3_ = new URLRequest(§#F§());
               if(_loc6_)
               {
                  _loc3_.method = URLRequestMethod.POST;
               }
               while(true)
               {
                  while(true)
                  {
                     _loc3_.data = this.§#,§(param2);
                     do
                     {
                        _loc3_.data.C = param1;
                     }
                     while(!(_loc6_ || param1));
                     
                     if(_loc5_)
                     {
                        break;
                     }
                     if(false)
                     {
                        continue;
                     }
                     (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                     if(_loc6_)
                     {
                        _loc4_.addEventListener(Event.COMPLETE,this.§@M§);
                        while(true)
                        {
                           _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                        }
                        addr226:
                     }
                     while(true)
                     {
                        addr195:
                        §§goto(addr227);
                     }
                  }
               }
            }
         }
         _loc3_ = new URLRequest(§#F§() + param1);
         if(!_loc5_)
         {
            _loc3_.method = URLRequestMethod.POST;
            if(_loc6_)
            {
               _loc3_.data = this.§#,§(param2);
            }
         }
         (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
         if(_loc6_ || param2)
         {
            _loc4_.addEventListener(Event.COMPLETE,this.§@M§);
            while(true)
            {
               _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
               loop8:
               while(true)
               {
                  addr91:
                  while(true)
                  {
                     _loc4_.load(_loc3_);
                     continue loop8;
                  }
               }
               if(!_loc6_)
               {
                  continue;
               }
               this.§4!"§.push(_loc4_);
               if(_loc6_)
               {
                  while(false)
                  {
                     §§goto(addr91);
                  }
                  addr227:
                  while(true)
                  {
                     _loc4_.load(_loc3_);
                     while(_loc6_)
                     {
                        this.§4!"§.push(_loc4_);
                        if(_loc6_)
                        {
                           continue loop4;
                        }
                     }
                     §§goto(addr226);
                  }
                  return;
                  addr89:
               }
               §§goto(addr95);
            }
         }
         §§goto(addr89);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §=!U§();
         }
         do
         {
            this.§-!6§();
         }
         while(_loc2_);
         
      }
      
      private function §-!6§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:URLLoader = null;
         var _loc3_:* = this.§4!"§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_)
            {
               this.§'!!§(_loc1_);
               if(_loc5_ && this)
               {
                  continue;
               }
            }
            this.§%!2§(_loc1_);
         }
         if(_loc4_ || _loc3_)
         {
            this.§4!"§ = new Vector.<URLLoader>();
         }
      }
      
      private function §#,§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(!_loc6_)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private function §@M§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_)
         {
            this.§'!!§(param1.target as URLLoader);
            if(!(_loc5_ && this))
            {
               addr35:
               this.§%!2§(param1.target as URLLoader);
            }
            var _loc3_:int = 0;
            for(_loc2_ in (param1.target as URLLoader).data)
            {
               if(!(_loc5_ && param1))
               {
                  §§push(§4h§);
                  §§push(_loc2_ + ": ");
                  if(_loc6_ || _loc3_)
                  {
                     §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
                  }
                  §§pop().log(§§pop());
               }
            }
            if(_loc6_)
            {
               §]L§(§2X§.§!!%§((param1.target as URLLoader).data));
            }
            return;
         }
         §§goto(addr35);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§'!!§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(!_loc3_)
         {
            _loc2_.E = param1.text;
         }
         loop0:
         while(true)
         {
            _loc2_.C = "serverConnectionError";
            loop1:
            while(true)
            {
               this.§%!2§(param1.target as URLLoader);
               while(true)
               {
                  §4h§.log((param1.target as URLLoader).data);
                  while(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_)
                        {
                           §4h§.log("[HTTPConnection] ioError: " + param1.text);
                           do
                           {
                              §+2§(§2X§.§!!%§(_loc2_));
                           }
                           while(_loc3_ && param1);
                           
                           if(!(_loc3_ && _loc3_))
                           {
                              return;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §'!!§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            param1.removeEventListener(Event.COMPLETE,this.§@M§);
         }
         do
         {
            param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         }
         while(_loc2_ && this);
         
      }
      
      private function §%!2§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§4!"§.indexOf(param1) > -1)
            {
               if(_loc2_)
               {
                  this.§4!"§.splice(this.§4!"§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
