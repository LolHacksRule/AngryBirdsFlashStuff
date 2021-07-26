package §2<§
{
   import §+!c§.§;!=§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §51§ extends §@d§
   {
       
      
      private var §#?§:Vector.<URLLoader>;
      
      public function §51§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§#?§ = new Vector.<URLLoader>();
            do
            {
               super(param1,param2);
            }
            while(_loc3_ && this);
            
         }
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:URLLoader = null;
         if(!_loc6_)
         {
            super.sendRequest(param1,param2);
         }
         var _loc3_:URLRequest = null;
         if(_loc5_)
         {
            if(§8M§.§+s§ == "Google")
            {
               addr34:
               _loc3_ = new URLRequest(§="J§() + param1);
               if(!_loc6_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(!_loc6_)
                  {
                     addr50:
                     _loc3_.data = this.§>M§(param2);
                  }
                  (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                  if(_loc5_ || param1)
                  {
                     _loc4_.addEventListener(Event.COMPLETE,this.§+G§);
                     while(true)
                     {
                        _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
                        while(_loc5_)
                        {
                           loop10:
                           while(true)
                           {
                              _loc4_.load(_loc3_);
                              do
                              {
                                 this.§#?§.push(_loc4_);
                              }
                              while(!(_loc5_ || param1));
                              
                              if(!_loc6_)
                              {
                                 while(false)
                                 {
                                    continue loop10;
                                 }
                                 addr231:
                                 return;
                                 addr85:
                              }
                              break;
                           }
                        }
                     }
                  }
                  §§goto(addr85);
               }
               §§goto(addr50);
            }
            else
            {
               _loc3_ = new URLRequest(§="J§());
               if(_loc5_)
               {
                  _loc3_.method = URLRequestMethod.POST;
               }
               loop0:
               while(true)
               {
                  addr143:
                  addr162:
                  while(true)
                  {
                     _loc3_.data = this.§>M§(param2);
                     continue loop0;
                  }
                  (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                  if(_loc5_)
                  {
                     _loc4_.addEventListener(Event.COMPLETE,this.§+G§);
                     loop3:
                     while(true)
                     {
                        _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
                        while(true)
                        {
                           addr204:
                           addr185:
                           while(true)
                           {
                              _loc4_.load(_loc3_);
                              continue loop3;
                           }
                           if(_loc6_ && param1)
                           {
                              continue;
                           }
                           while(false)
                           {
                              §§goto(addr204);
                           }
                           §§goto(addr231);
                        }
                     }
                  }
                  §§goto(addr202);
               }
            }
            §§goto(addr231);
         }
         §§goto(addr34);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §1!k§();
         }
         do
         {
            this.§4!R§();
         }
         while(!(_loc1_ || this));
         
      }
      
      private function §4!R§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§#?§)
         {
            if(!(_loc5_ && this))
            {
               this.§<! §(_loc1_);
               if(_loc5_ && _loc1_)
               {
                  continue;
               }
            }
            this.§>"D§(_loc1_);
         }
         if(_loc4_)
         {
            this.§#?§ = new Vector.<URLLoader>();
         }
      }
      
      private function §>M§(param1:Object) : URLVariables
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
      
      private function §+G§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(_loc5_)
         {
            this.§<! §(param1.target as URLLoader);
            if(!_loc6_)
            {
               addr29:
               this.§>"D§(param1.target as URLLoader);
            }
            for(_loc2_ in (param1.target as URLLoader).data)
            {
               if(_loc5_)
               {
                  §§push(§;!=§);
                  §§push(_loc2_ + ": ");
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
                  }
                  §§pop().log(§§pop());
               }
            }
            if(_loc5_ || this)
            {
               §#"N§(§0$§.§`B§((param1.target as URLLoader).data));
            }
            return;
         }
         §§goto(addr29);
      }
      
      private function §]!^§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§<! §(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(!_loc4_)
         {
            _loc2_.E = param1.text;
            while(true)
            {
               _loc2_.C = "serverConnectionError";
            }
            addr118:
         }
         loop1:
         while(true)
         {
            this.§>"D§(param1.target as URLLoader);
            loop2:
            do
            {
               §;!=§.log((param1.target as URLLoader).data);
               while(!_loc4_)
               {
                  §§push(§;!=§);
                  §§push("[HTTPConnection] ioError: ");
                  if(!_loc4_)
                  {
                     §§push(§§pop() + param1.text);
                  }
                  §§pop().log(§§pop());
                  while(!_loc4_)
                  {
                     continue loop1;
                     §6"<§(§0$§.§`B§(_loc2_));
                     if(!(_loc4_ && _loc2_))
                     {
                        continue loop2;
                     }
                  }
               }
               §§goto(addr118);
            }
            while(!(_loc3_ || _loc2_));
            
            return;
         }
      }
      
      private function §<! §(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            param1.removeEventListener(Event.COMPLETE,this.§+G§);
            do
            {
               param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
            }
            while(_loc3_);
            
         }
      }
      
      private function §>"D§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§#?§.indexOf(param1) > -1)
            {
               if(!_loc2_)
               {
                  this.§#?§.splice(this.§#?§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
