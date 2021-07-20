package §3@§
{
   import §>^§.§!6§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §5$§ extends §+!W§
   {
       
      
      private var §^z§:Vector.<URLLoader>;
      
      public function §5$§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§^z§ = new Vector.<URLLoader>();
            do
            {
               super(param1,param2);
            }
            while(_loc3_);
            
         }
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:URLLoader = null;
         if(!_loc5_)
         {
            super.sendRequest(param1,param2);
         }
         var _loc3_:URLRequest = null;
         if(_loc6_)
         {
            if(§>#§.§<!'§ != "Google")
            {
               _loc3_ = new URLRequest(§@5§());
               if(!_loc5_)
               {
                  _loc3_.method = URLRequestMethod.POST;
               }
               while(true)
               {
                  while(true)
                  {
                     _loc3_.data = this.§""§(param2);
                     do
                     {
                        _loc3_.data.C = param1;
                     }
                     while(_loc5_);
                     
                     if(!_loc6_)
                     {
                        break;
                     }
                     if(false)
                     {
                        continue;
                     }
                     (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                     if(!(_loc5_ && param2))
                     {
                        _loc4_.addEventListener(Event.COMPLETE,this.§8o§);
                        while(true)
                        {
                           _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                           loop4:
                           for(; !(_loc5_ && this); do
                           {
                              _loc4_.load(_loc3_);
                              do
                              {
                                 this.§^z§.push(_loc4_);
                              }
                              while(_loc5_);
                              
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              continue loop4;
                           }
                           while(false);
                           ,return)
                           {
                              while(true)
                              {
                                 continue loop4;
                              }
                           }
                        }
                     }
                     §§goto(addr219);
                  }
               }
            }
         }
         _loc3_ = new URLRequest(§@5§() + param1);
         if(_loc6_ || param2)
         {
            _loc3_.method = URLRequestMethod.POST;
            if(!_loc5_)
            {
               _loc3_.data = this.§""§(param2);
            }
         }
         (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
         if(!(_loc5_ && this))
         {
            _loc4_.addEventListener(Event.COMPLETE,this.§8o§);
            while(true)
            {
               _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
               loop9:
               for(; !(_loc5_ && param1); while(true)
               {
                  _loc4_.load(_loc3_);
                  do
                  {
                     this.§^z§.push(_loc4_);
                  }
                  while(!(_loc6_ || this));
                  
                  if(!_loc6_)
                  {
                     break;
                  }
                  if(false)
                  {
                     continue;
                  }
                  §§goto(addr227);
               })
               {
                  while(true)
                  {
                     continue loop9;
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §2!I§();
            do
            {
               this.§[!8§();
            }
            while(_loc2_);
            
         }
      }
      
      private function §[!8§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:URLLoader = null;
         var _loc3_:* = this.§^z§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc1_)
            {
               this.§!!h§(_loc1_);
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
            }
            this.§]!I§(_loc1_);
         }
         if(!_loc5_)
         {
            this.§^z§ = new Vector.<URLLoader>();
         }
      }
      
      private function §""§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(_loc6_ || _loc3_)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private function §8o§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(!_loc5_)
         {
            this.§!!h§(param1.target as URLLoader);
            if(_loc6_)
            {
               addr30:
               this.§]!I§(param1.target as URLLoader);
            }
            for(_loc2_ in (param1.target as URLLoader).data)
            {
               if(_loc6_ || param1)
               {
                  §§push(§!6§);
                  §§push(_loc2_ + ": ");
                  if(_loc6_)
                  {
                     §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
                  }
                  §§pop().log(§§pop());
               }
            }
            if(!_loc5_)
            {
               §4E§(§^W§.§`7§((param1.target as URLLoader).data));
            }
            return;
         }
         §§goto(addr30);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§!!h§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(_loc3_ || param1)
         {
            _loc2_.E = param1.text;
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               loop1:
               while(_loc3_ || this)
               {
                  while(true)
                  {
                     this.§]!I§(param1.target as URLLoader);
                     while(!_loc4_)
                     {
                        §!6§.log((param1.target as URLLoader).data);
                        while(_loc3_)
                        {
                           §!6§.log("[HTTPConnection] ioError: " + param1.text);
                           do
                           {
                              §`3§(§^W§.§`7§(_loc2_));
                           }
                           while(_loc4_);
                           
                           if(!_loc4_)
                           {
                              return;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      private function §!!h§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§8o§);
         }
         do
         {
            param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      private function §]!I§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§^z§.indexOf(param1) > -1)
            {
               if(!(_loc3_ && param1))
               {
                  this.§^z§.splice(this.§^z§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
