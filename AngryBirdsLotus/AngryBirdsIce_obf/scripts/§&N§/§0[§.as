package §&N§
{
   import §;8§.§3f§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §0[§ extends §=>§
   {
       
      
      private var §3Z§:Vector.<URLLoader>;
      
      public function §0[§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§3Z§ = new Vector.<URLLoader>();
            do
            {
               super(param1,param2);
            }
            while(_loc4_);
            
         }
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:URLLoader = null;
         if(!(_loc6_ && this))
         {
            super.sendRequest(param1,param2);
         }
         var _loc3_:URLRequest = null;
         if(!(_loc6_ && param1))
         {
            if(§[-§.§1K§ == "Google")
            {
               addr44:
               _loc3_ = new URLRequest(§4y§() + param1);
               if(_loc5_ || _loc3_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(_loc5_)
                  {
                     _loc3_.data = this.§-s§(param2);
                  }
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(_loc5_)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§>s§);
               }
               while(true)
               {
                  _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                  loop10:
                  while(true)
                  {
                     addr90:
                     addr129:
                     while(true)
                     {
                        _loc4_.load(_loc3_);
                        continue loop10;
                     }
                  }
                  if(!_loc5_)
                  {
                     continue;
                  }
                  this.§3Z§.push(_loc4_);
                  if(_loc5_)
                  {
                     if(false)
                     {
                        §§goto(addr90);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr94);
               }
            }
            else
            {
               _loc3_ = new URLRequest(§4y§());
               if(_loc5_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  loop0:
                  while(true)
                  {
                     addr148:
                     while(true)
                     {
                        _loc3_.data = this.§-s§(param2);
                        continue loop0;
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr148);
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(!(_loc6_ && param2))
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§>s§);
                  while(true)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                     loop5:
                     while(_loc5_)
                     {
                        do
                        {
                           _loc4_.load(_loc3_);
                           do
                           {
                              this.§3Z§.push(_loc4_);
                           }
                           while(_loc6_ && _loc3_);
                           
                           if(_loc5_ || _loc3_)
                           {
                              continue;
                           }
                           continue loop5;
                        }
                        while(false);
                        
                        return;
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr214);
               }
            }
            §§goto(addr236);
         }
         §§goto(addr44);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^%§();
         }
         do
         {
            this.§-$§();
         }
         while(!(_loc1_ || this));
         
      }
      
      private function §-$§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:URLLoader = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§3Z§)
         {
            if(_loc4_ || _loc2_)
            {
               this.§!!<§(_loc1_);
               if(!_loc5_)
               {
                  this.§[[§(_loc1_);
               }
            }
         }
         if(_loc4_ || _loc2_)
         {
            this.§3Z§ = new Vector.<URLLoader>();
         }
      }
      
      private function §-s§(param1:Object) : URLVariables
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
      
      private function §>s§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(_loc5_)
         {
            this.§!!<§(param1.target as URLLoader);
            if(!_loc6_)
            {
               addr29:
               this.§[[§(param1.target as URLLoader);
            }
            for(_loc2_ in (param1.target as URLLoader).data)
            {
               if(!(_loc6_ && param1))
               {
                  §§push(§3f§);
                  §§push(_loc2_ + ": ");
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
                  }
                  §§pop().log(§§pop());
               }
            }
            if(_loc5_)
            {
               §+]§(§2z§.§2=§((param1.target as URLLoader).data));
            }
            return;
         }
         §§goto(addr29);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§!!<§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(!(_loc3_ && param1))
         {
            _loc2_.E = param1.text;
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               §§goto(addr111);
            }
         }
         addr111:
         while(true)
         {
            this.§[[§(param1.target as URLLoader);
            §3f§.log((param1.target as URLLoader).data);
            if(_loc4_ || _loc2_)
            {
               break;
            }
            continue loop0;
         }
         §§push(§3f§);
         §§push("[HTTPConnection] ioError: ");
         if(_loc4_ || param1)
         {
            §§push(§§pop() + param1.text);
         }
         §§pop().log(§§pop());
         §,!3§(§2z§.§2=§(_loc2_));
      }
      
      private function §!!<§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            param1.removeEventListener(Event.COMPLETE,this.§>s§);
         }
         do
         {
            param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         }
         while(!(_loc2_ || this));
         
      }
      
      private function §[[§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§3Z§.indexOf(param1) > -1)
            {
               if(!(_loc2_ && this))
               {
                  addr47:
                  this.§3Z§.splice(this.§3Z§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr47);
      }
   }
}
