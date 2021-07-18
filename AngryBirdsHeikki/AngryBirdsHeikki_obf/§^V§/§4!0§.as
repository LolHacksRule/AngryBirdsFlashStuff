package §^V§
{
   import §@R§.§4,§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §4!0§ extends §"e§
   {
       
      
      private var §9!§:Vector.<URLLoader>;
      
      public function §4!0§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§9!§ = new Vector.<URLLoader>();
         }
         do
         {
            super(param1,param2);
         }
         while(!_loc3_);
         
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
         if(!(_loc5_ && _loc3_))
         {
            if(§4!H§.§=!M§ == "Google")
            {
               addr40:
               _loc3_ = new URLRequest(§%!'§() + param1);
               if(_loc6_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(!_loc5_)
                  {
                     addr56:
                     _loc3_.data = this.§9o§(param2);
                  }
                  (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                  if(!_loc5_)
                  {
                     _loc4_.addEventListener(Event.COMPLETE,this.§&Z§);
                     while(true)
                     {
                        _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§'z§);
                        loop10:
                        while(!(_loc5_ && param2))
                        {
                           while(true)
                           {
                              _loc4_.load(_loc3_);
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    this.§9!§.push(_loc4_);
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop10;
                              }
                              §§goto(addr79);
                           }
                        }
                     }
                  }
                  addr79:
                  §§goto(addr222);
               }
               §§goto(addr56);
            }
            else
            {
               _loc3_ = new URLRequest(§%!'§());
               if(_loc6_ || this)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        _loc3_.data = this.§9o§(param2);
                        do
                        {
                           _loc3_.data.C = param1;
                        }
                        while(_loc5_ && _loc3_);
                        
                        if(!(_loc6_ || param2))
                        {
                           break;
                        }
                        while(false)
                        {
                           continue loop1;
                        }
                        (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                        if(_loc6_)
                        {
                           _loc4_.addEventListener(Event.COMPLETE,this.§&Z§);
                           while(true)
                           {
                              _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§'z§);
                              addr214:
                              loop5:
                              while(true)
                              {
                                 addr190:
                                 while(true)
                                 {
                                    _loc4_.load(_loc3_);
                                    addr194:
                                    while(!_loc5_)
                                    {
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           addr221:
                        }
                        while(true)
                        {
                           this.§9!§.push(_loc4_);
                           if(_loc6_)
                           {
                              if(!_loc5_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr190);
                              }
                              else
                              {
                                 §§goto(addr221);
                              }
                           }
                           §§goto(addr194);
                        }
                        §§goto(addr222);
                     }
                  }
               }
               §§goto(addr154);
            }
            return;
         }
         §§goto(addr40);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §&,§();
            do
            {
               this.§%_§();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private function §%_§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§9!§)
         {
            if(_loc5_)
            {
               this.§8!4§(_loc1_);
               if(_loc4_)
               {
                  continue;
               }
            }
            this.§'!d§(_loc1_);
         }
         if(!_loc4_)
         {
            this.§9!§ = new Vector.<URLLoader>();
         }
      }
      
      private function §9o§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(!_loc7_)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private function §&Z§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(_loc5_ || this)
         {
            this.§8!4§(param1.target as URLLoader);
            if(_loc5_ || _loc3_)
            {
               this.§'!d§(param1.target as URLLoader);
            }
         }
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            if(_loc5_ || _loc2_)
            {
               §§push(§4,§);
               §§push(_loc2_ + ": ");
               if(_loc5_)
               {
                  §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
               }
               §§pop().log(§§pop());
            }
         }
         if(_loc5_ || _loc2_)
         {
            §7'§(§@!T§.§,!§((param1.target as URLLoader).data));
         }
      }
      
      private function §'z§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§8!4§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(_loc4_)
         {
            _loc2_.E = param1.text;
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               addr78:
               if(!(_loc4_ || this))
               {
                  continue;
               }
               §[!P§(§@!T§.§,!§(_loc2_));
               addr85:
               if(_loc4_)
               {
                  addr44:
                  if(!(_loc3_ && _loc2_))
                  {
                     addr51:
                     if(!(_loc4_ || _loc3_))
                     {
                        loop2:
                        while(true)
                        {
                           §4,§.log((param1.target as URLLoader).data);
                           addr94:
                           while(true)
                           {
                              §4,§.log("[HTTPConnection] ioError: " + param1.text);
                              addr76:
                              addr117:
                              while(!_loc3_)
                              {
                                 §§goto(addr78);
                                 §§goto(addr85);
                              }
                              while(true)
                              {
                                 this.§'!d§(param1.target as URLLoader);
                                 continue loop2;
                              }
                              §§goto(addr44);
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr94);
               }
               §§goto(addr76);
            }
         }
         §§goto(addr117);
      }
      
      private function §8!4§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§&Z§);
         }
         do
         {
            param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§'z§);
         }
         while(!_loc3_);
         
      }
      
      private function §'!d§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§9!§.indexOf(param1) > -1)
            {
               if(_loc3_ || _loc2_)
               {
                  addr52:
                  this.§9!§.splice(this.§9!§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr52);
      }
   }
}
