package §9!=§
{
   import § !G§.§ #§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §'!8§ extends §%t§
   {
       
      
      private var §7D§:Vector.<URLLoader>;
      
      public function §'!8§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§7D§ = new Vector.<URLLoader>();
            do
            {
               super(param1,param2);
            }
            while(_loc4_ && param1);
            
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
         if(!(_loc5_ && this))
         {
            if(§[!6§.§3![§ == "Google")
            {
               addr40:
               _loc3_ = new URLRequest(§var §() + param1);
               if(_loc6_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(!(_loc5_ && param2))
                  {
                     addr61:
                     _loc3_.data = this.§5M§(param2);
                  }
                  (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                  if(!(_loc5_ && param2))
                  {
                     _loc4_.addEventListener(Event.COMPLETE,this.§5!Y§);
                     while(true)
                     {
                        _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                        loop9:
                        while(!(_loc5_ && _loc3_))
                        {
                           while(true)
                           {
                              loop11:
                              do
                              {
                                 _loc4_.load(_loc3_);
                                 while(!_loc5_)
                                 {
                                    this.§7D§.push(_loc4_);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       continue loop11;
                                    }
                                 }
                                 continue loop9;
                              }
                              while(false);
                              
                              §§goto(addr242);
                           }
                        }
                     }
                  }
                  §§goto(addr127);
               }
               §§goto(addr61);
            }
            else
            {
               _loc3_ = new URLRequest(§var §());
               if(!(_loc5_ && _loc3_))
               {
                  _loc3_.method = URLRequestMethod.POST;
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        _loc3_.data = this.§5M§(param2);
                        do
                        {
                           _loc3_.data.C = param1;
                        }
                        while(!(_loc6_ || _loc3_));
                        
                        if(_loc5_ && this)
                        {
                           break;
                        }
                        while(false)
                        {
                           continue loop1;
                        }
                        (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                        if(!_loc5_)
                        {
                           _loc4_.addEventListener(Event.COMPLETE,this.§5!Y§);
                           while(true)
                           {
                              _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                              loop7:
                              while(_loc6_ || param2)
                              {
                                 this.§7D§.push(_loc4_);
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                                 if(!_loc5_)
                                 {
                                    if(false)
                                    {
                                       while(true)
                                       {
                                          _loc4_.load(_loc3_);
                                          continue loop7;
                                       }
                                       addr205:
                                    }
                                    §§goto(addr242);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                    }
                                    addr234:
                                 }
                                 §§goto(addr205);
                              }
                           }
                        }
                        §§goto(addr234);
                     }
                  }
               }
               §§goto(addr169);
            }
            return;
         }
         §§goto(addr40);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §]V§();
         }
         do
         {
            this.§8!&§();
         }
         while(_loc1_ && this);
         
      }
      
      private function §8!&§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:URLLoader = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§7D§)
         {
            if(_loc4_ || _loc1_)
            {
               this.§-!I§(_loc1_);
               if(!(_loc4_ || _loc1_))
               {
                  continue;
               }
            }
            this.§-!;§(_loc1_);
         }
         if(!(_loc5_ && _loc2_))
         {
            this.§7D§ = new Vector.<URLLoader>();
         }
      }
      
      private function §5M§(param1:Object) : URLVariables
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
      
      private function §5!Y§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_)
         {
            this.§-!I§(param1.target as URLLoader);
            if(!(_loc5_ && param1))
            {
               addr35:
               this.§-!;§(param1.target as URLLoader);
            }
            for(_loc2_ in (param1.target as URLLoader).data)
            {
               if(!_loc5_)
               {
                  §§push(§ #§);
                  §§push(_loc2_ + ": ");
                  if(_loc6_)
                  {
                     §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
                  }
                  §§pop().log(§§pop());
               }
            }
            if(_loc6_ || this)
            {
               §-1§(§#!#§.§`!]§((param1.target as URLLoader).data));
            }
            return;
         }
         §§goto(addr35);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§-!I§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(_loc4_)
         {
            _loc2_.E = param1.text;
         }
         loop0:
         do
         {
            _loc2_.C = "serverConnectionError";
            loop1:
            while(true)
            {
               this.§-!;§(param1.target as URLLoader);
               do
               {
                  § #§.log((param1.target as URLLoader).data);
                  loop3:
                  do
                  {
                     § #§.log("[HTTPConnection] ioError: " + param1.text);
                     while(!_loc3_)
                     {
                        §?9§(§#!#§.§`!]§(_loc2_));
                        if(_loc4_)
                        {
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
                  while(!(_loc4_ || param1));
                  
               }
               while(_loc3_ && param1);
               
               continue loop0;
            }
         }
         while(_loc3_ && param1);
         
      }
      
      private function §-!I§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            param1.removeEventListener(Event.COMPLETE,this.§5!Y§);
         }
         do
         {
            param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         }
         while(!(_loc3_ || param1));
         
      }
      
      private function §-!;§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§7D§.indexOf(param1) > -1)
            {
               if(!_loc3_)
               {
                  this.§7D§.splice(this.§7D§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
