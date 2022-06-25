package §^!7§
{
   import §<u§.Log;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class HTTPConnection extends §=]§
   {
       
      
      private var §;_§:Vector.<URLLoader>;
      
      public function HTTPConnection(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§;_§ = new Vector.<URLLoader>();
            do
            {
               super(param1,param2);
            }
            while(_loc4_ && _loc3_);
            
         }
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:URLLoader = null;
         if(_loc6_)
         {
            super.sendRequest(param1,param2);
         }
         var _loc3_:URLRequest = null;
         if(_loc6_ || _loc3_)
         {
            if(Server.§^!G§ == "Google")
            {
               addr42:
               _loc3_ = new URLRequest(§>?§() + param1);
               if(!_loc5_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(_loc6_)
                  {
                     addr59:
                     _loc3_.data = this.§8d§(param2);
                  }
                  _loc4_ = new URLLoader();
                  if(!_loc5_)
                  {
                     _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
                     loop8:
                     while(true)
                     {
                        _loc4_.addEventListener(Event.COMPLETE,this.§3!P§);
                        while(true)
                        {
                           _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§8!3§);
                           while(!_loc5_)
                           {
                              continue loop8;
                              loop11:
                              while(true)
                              {
                                 _loc4_.load(_loc3_);
                                 do
                                 {
                                    this.§;_§.push(_loc4_);
                                 }
                                 while(!_loc6_);
                                 
                                 if(_loc6_ || param2)
                                 {
                                    while(false)
                                    {
                                       continue loop11;
                                    }
                                    addr258:
                                    return;
                                    addr86:
                                 }
                                 break;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr86);
               }
               §§goto(addr59);
            }
            else
            {
               _loc3_ = new URLRequest(§>?§());
               if(_loc6_ || param2)
               {
                  _loc3_.method = URLRequestMethod.POST;
               }
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     _loc3_.data = this.§8d§(param2);
                     while(!_loc5_)
                     {
                        _loc3_.data.C = param1;
                        if(!(_loc5_ && this))
                        {
                           if(true)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
                  _loc4_ = new URLLoader();
                  if(!(_loc5_ && _loc3_))
                  {
                     _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
                  }
                  while(true)
                  {
                     _loc4_.addEventListener(Event.COMPLETE,this.§3!P§);
                     loop4:
                     for(; !_loc5_; while(_loc6_)
                     {
                        this.§;_§.push(_loc4_);
                        if(!(_loc6_ || param1))
                        {
                           continue;
                        }
                        if(_loc6_)
                        {
                           if(false)
                           {
                           }
                           §§goto(addr258);
                        }
                        else
                        {
                           §§goto(addr239);
                        }
                     })
                     {
                        _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§8!3§);
                        while(true)
                        {
                           addr212:
                           while(true)
                           {
                              _loc4_.load(_loc3_);
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr258);
         }
         §§goto(addr42);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=!&§();
         }
         do
         {
            this.§<!h§();
         }
         while(_loc1_);
         
      }
      
      private function §<!h§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§;_§)
         {
            if(!_loc4_)
            {
               this.§ r§(_loc1_);
               if(!(_loc4_ && this))
               {
                  this.§4-§(_loc1_);
               }
            }
         }
         if(!_loc4_)
         {
            this.§;_§ = new Vector.<URLLoader>();
         }
      }
      
      private function §8d§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(!(_loc7_ && this))
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private function §3!P§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(_loc5_ || _loc2_)
         {
            this.§ r§(param1.target as URLLoader);
            if(_loc5_)
            {
               this.§4-§(param1.target as URLLoader);
            }
         }
         var _loc3_:int = 0;
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            if(_loc5_ || this)
            {
               §§push(Log);
               §§push(_loc2_ + ": ");
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
               }
               §§pop().log(§§pop());
            }
         }
         if(!_loc6_)
         {
            §<!F§(MessageFactory.§2Q§((param1.target as URLLoader).data));
         }
      }
      
      private function §8!3§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§ r§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(!(_loc3_ && param1))
         {
            _loc2_.E = param1.text;
            loop0:
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               while(true)
               {
                  this.§4-§(param1.target as URLLoader);
                  loop2:
                  while(_loc4_ || _loc2_)
                  {
                     while(true)
                     {
                        Log.log((param1.target as URLLoader).data);
                        while(true)
                        {
                           §§push(Log);
                           §§push("[HTTPConnection] ioError: ");
                           if(_loc4_)
                           {
                              §§push(§§pop() + param1.text);
                           }
                           §§pop().log(§§pop());
                           continue loop0;
                           addr68:
                           if(_loc4_ || _loc3_)
                           {
                              if(_loc4_)
                              {
                                 return;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr135);
      }
      
      private function § r§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            param1.removeEventListener(Event.COMPLETE,this.§3!P§);
         }
         do
         {
            param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§8!3§);
         }
         while(!(_loc2_ || param1));
         
      }
      
      private function §4-§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§;_§.indexOf(param1) > -1)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr47:
                  this.§;_§.splice(this.§;_§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr47);
      }
   }
}
