package §7X§
{
   import §"x§.§-8§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §^t§ extends §!!%§
   {
       
      
      private var §<N§:Vector.<URLLoader>;
      
      public function §^t§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§<N§ = new Vector.<URLLoader>();
         }
         do
         {
            super(param1,param2);
         }
         while(!_loc3_);
         
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:URLLoader = null;
         if(_loc5_)
         {
            super.sendRequest(param1,param2);
         }
         var _loc3_:URLRequest = null;
         if(_loc5_ || this)
         {
            if(§^"§.§+^§ != "Google")
            {
               _loc3_ = new URLRequest(§&!j§());
               if(_loc5_)
               {
                  _loc3_.method = URLRequestMethod.POST;
               }
               while(true)
               {
                  while(true)
                  {
                     _loc3_.data = this.§>c§(param2);
                     do
                     {
                        _loc3_.data.C = param1;
                     }
                     while(!(_loc5_ || _loc3_));
                     
                     if(_loc5_ || param2)
                     {
                        if(true)
                        {
                           (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                           if(_loc5_)
                           {
                              _loc4_.addEventListener(Event.COMPLETE,this.§>!?§);
                              loop3:
                              while(true)
                              {
                                 _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§9s§);
                                 loop4:
                                 while(true)
                                 {
                                    addr204:
                                    loop5:
                                    while(true)
                                    {
                                       _loc4_.load(_loc3_);
                                       while(!_loc6_)
                                       {
                                          this.§<N§.push(_loc4_);
                                          if(_loc6_)
                                          {
                                             continue;
                                          }
                                          if(_loc6_)
                                          {
                                             break loop5;
                                          }
                                       }
                                       continue loop4;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           while(false)
                           {
                              §§goto(addr204);
                           }
                        }
                        else
                        {
                           addr226:
                        }
                        continue;
                        return;
                     }
                     break;
                  }
               }
            }
         }
         _loc3_ = new URLRequest(§&!j§() + param1);
         if(_loc5_)
         {
            _loc3_.method = URLRequestMethod.POST;
            if(_loc5_ || this)
            {
               _loc3_.data = this.§>c§(param2);
            }
         }
         (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
         if(_loc5_)
         {
            _loc4_.addEventListener(Event.COMPLETE,this.§>!?§);
            while(true)
            {
               _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§9s§);
               addr119:
               loop9:
               while(!_loc6_)
               {
                  while(true)
                  {
                     _loc4_.load(_loc3_);
                     continue loop9;
                     addr95:
                     if(false)
                     {
                        continue;
                     }
                     addr129:
                     §§goto(addr226);
                  }
               }
            }
         }
         while(true)
         {
            this.§<N§.push(_loc4_);
            if(!(_loc5_ || this))
            {
               continue;
            }
            if(!(_loc6_ && _loc3_))
            {
               §§goto(addr95);
            }
            else
            {
               §§goto(addr119);
            }
         }
         §§goto(addr129);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §;l§();
            do
            {
               this.§=!h§();
            }
            while(!_loc2_);
            
         }
      }
      
      private function §=!h§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:URLLoader = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§<N§)
         {
            if(!(_loc4_ && _loc2_))
            {
               this.§4!Y§(_loc1_);
               if(_loc5_)
               {
                  this.§5!R§(_loc1_);
               }
            }
         }
         if(_loc5_)
         {
            this.§<N§ = new Vector.<URLLoader>();
         }
      }
      
      private function §>c§(param1:Object) : URLVariables
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
      
      private function §>!?§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(!_loc6_)
         {
            this.§4!Y§(param1.target as URLLoader);
            if(!(_loc6_ && this))
            {
               addr34:
               this.§5!R§(param1.target as URLLoader);
            }
            var _loc3_:int = 0;
            for(_loc2_ in (param1.target as URLLoader).data)
            {
               if(_loc5_)
               {
                  §§push(§-8§);
                  §§push(_loc2_ + ": ");
                  if(!_loc6_)
                  {
                     §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
                  }
                  §§pop().log(§§pop());
               }
            }
            if(_loc5_ || _loc3_)
            {
               §%!1§(§2T§.§8!L§((param1.target as URLLoader).data));
            }
            return;
         }
         §§goto(addr34);
      }
      
      private function §9s§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§4!Y§(param1.target as URLLoader);
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
                  this.§5!R§(param1.target as URLLoader);
                  loop2:
                  while(_loc4_ || _loc3_)
                  {
                     §-8§.log((param1.target as URLLoader).data);
                     while(!_loc3_)
                     {
                        §§push(§-8§);
                        §§push("[HTTPConnection] ioError: ");
                        if(_loc4_)
                        {
                           §§push(§§pop() + param1.text);
                        }
                        §§pop().log(§§pop());
                        do
                        {
                           §`#§(§2T§.§8!L§(_loc2_));
                        }
                        while(!(_loc4_ || param1));
                        
                        if(_loc4_)
                        {
                           if(!_loc3_)
                           {
                              return;
                              addr68:
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      private function §4!Y§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§>!?§);
         }
         do
         {
            param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§9s§);
         }
         while(!_loc2_);
         
      }
      
      private function §5!R§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§<N§.indexOf(param1) > -1)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr42:
                  this.§<N§.splice(this.§<N§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr42);
      }
   }
}
