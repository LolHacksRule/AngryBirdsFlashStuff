package §4!C§
{
   import §6z§.§[g§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §!U§ extends §-!i§
   {
       
      
      private var §2Y§:Vector.<URLLoader>;
      
      public function §!U§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§2Y§ = new Vector.<URLLoader>();
         }
         do
         {
            super(param1,param2);
         }
         while(!(_loc4_ || this));
         
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
         if(_loc5_)
         {
            if(§,!l§.§%T§ != "Google")
            {
               _loc3_ = new URLRequest(§8! §());
               if(_loc5_ || this)
               {
                  _loc3_.method = URLRequestMethod.POST;
               }
               while(true)
               {
                  while(true)
                  {
                     _loc3_.data = this.§^e§(param2);
                     do
                     {
                        _loc3_.data.C = param1;
                     }
                     while(_loc6_ && param1);
                     
                     if(!(_loc5_ || this))
                     {
                        break;
                     }
                     if(false)
                     {
                        continue;
                     }
                     (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                     if(!_loc6_)
                     {
                        _loc4_.addEventListener(Event.COMPLETE,this.§!M§);
                        while(true)
                        {
                           _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§<@§);
                           addr228:
                           loop4:
                           while(true)
                           {
                              addr216:
                              while(true)
                              {
                                 _loc4_.load(_loc3_);
                                 continue loop4;
                              }
                           }
                           addr207:
                           if(_loc5_ || param2)
                           {
                              if(false)
                              {
                                 §§goto(addr216);
                              }
                              §§goto(addr236);
                           }
                        }
                     }
                     while(true)
                     {
                        this.§2Y§.push(_loc4_);
                        if(!(_loc5_ || param2))
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           §§goto(addr207);
                        }
                        §§goto(addr228);
                     }
                     §§goto(addr236);
                  }
               }
            }
         }
         _loc3_ = new URLRequest(§8! §() + param1);
         if(_loc5_)
         {
            _loc3_.method = URLRequestMethod.POST;
            if(_loc5_ || param1)
            {
               _loc3_.data = this.§^e§(param2);
            }
         }
         (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
         if(_loc5_)
         {
            _loc4_.addEventListener(Event.COMPLETE,this.§!M§);
            loop7:
            while(true)
            {
               _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§<@§);
               while(true)
               {
                  loop9:
                  while(true)
                  {
                     _loc4_.load(_loc3_);
                     do
                     {
                        this.§2Y§.push(_loc4_);
                     }
                     while(_loc6_ && _loc3_);
                     
                     if(!(_loc5_ || param1))
                     {
                        break;
                     }
                     if(_loc5_)
                     {
                        while(false)
                        {
                           continue loop9;
                        }
                        addr236:
                     }
                     continue loop7;
                     return;
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0s§();
            do
            {
               this.§#!#§();
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      private function §#!#§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:URLLoader = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§2Y§)
         {
            if(_loc5_)
            {
               this.§`!]§(_loc1_);
               if(!_loc4_)
               {
                  this.§!!#§(_loc1_);
               }
            }
         }
         if(!(_loc4_ && _loc2_))
         {
            this.§2Y§ = new Vector.<URLLoader>();
         }
      }
      
      private function §^e§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(!(_loc6_ && _loc3_))
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private function §!M§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_)
         {
            this.§`!]§(param1.target as URLLoader);
            if(_loc6_)
            {
               addr30:
               this.§!!#§(param1.target as URLLoader);
            }
            for(_loc2_ in (param1.target as URLLoader).data)
            {
               if(_loc6_)
               {
                  §§push(§[g§);
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
               §7!7§(§8!]§.§9!W§((param1.target as URLLoader).data));
            }
            return;
         }
         §§goto(addr30);
      }
      
      private function §<@§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.§`!]§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(!_loc3_)
         {
            _loc2_.E = param1.text;
            loop0:
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               do
               {
                  this.§!!#§(param1.target as URLLoader);
                  do
                  {
                     §[g§.log((param1.target as URLLoader).data);
                     loop3:
                     do
                     {
                        §§push(§[g§);
                        §§push("[HTTPConnection] ioError: ");
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop() + param1.text);
                        }
                        §§pop().log(§§pop());
                        while(_loc4_)
                        {
                           § G§(§8!]§.§9!W§(_loc2_));
                           if(_loc4_)
                           {
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                     while(_loc3_);
                     
                  }
                  while(!_loc4_);
                  
               }
               while(_loc3_ && _loc2_);
               
            }
         }
      }
      
      private function §`!]§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§!M§);
            do
            {
               param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§<@§);
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      private function §!!#§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§2Y§.indexOf(param1) > -1)
            {
               if(!_loc2_)
               {
                  addr37:
                  this.§2Y§.splice(this.§2Y§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr37);
      }
   }
}
