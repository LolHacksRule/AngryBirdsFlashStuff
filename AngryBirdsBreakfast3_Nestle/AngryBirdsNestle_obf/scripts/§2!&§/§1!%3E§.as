package §2!&§
{
   import §24§.;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §1!>§ extends §<!B§
   {
       
      
      private var §?!n§:Vector.<URLLoader>;
      
      public function §1!>§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§?!n§ = new Vector.<URLLoader>();
            do
            {
               super(param1,param2);
            }
            while(!(_loc3_ || param1));
            
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
         if(!_loc6_)
         {
            if(§+h§.§-z§ != "Google")
            {
               _loc3_ = new URLRequest(§8!=§());
               if(_loc5_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  loop0:
                  while(true)
                  {
                     addr150:
                     while(true)
                     {
                        _loc3_.data = this.§6!P§(param2);
                        continue loop0;
                     }
                  }
                  addr161:
               }
               while(true)
               {
                  _loc3_.data.C = param1;
                  if(_loc6_)
                  {
                     continue;
                  }
                  if(!_loc6_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr161);
                  }
                  §§goto(addr150);
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(!(_loc6_ && _loc3_))
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§ s§);
                  loop3:
                  while(true)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§'![§);
                     while(true)
                     {
                        addr194:
                        loop5:
                        while(true)
                        {
                           _loc4_.load(_loc3_);
                           while(!_loc6_)
                           {
                              this.§?!n§.push(_loc4_);
                              if(_loc6_ && param1)
                              {
                                 continue;
                              }
                              if(!_loc5_)
                              {
                                 break loop5;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr194);
               }
               §§goto(addr226);
            }
         }
         _loc3_ = new URLRequest(§8!=§() + param1);
         if(!(_loc6_ && this))
         {
            _loc3_.method = URLRequestMethod.POST;
            if(_loc5_ || param2)
            {
               addr60:
               _loc3_.data = this.§6!P§(param2);
            }
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            if(!(_loc6_ && _loc3_))
            {
               _loc4_.addEventListener(Event.COMPLETE,this.§ s§);
               while(true)
               {
                  _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§'![§);
               }
               addr128:
            }
            while(true)
            {
               while(true)
               {
                  _loc4_.load(_loc3_);
                  do
                  {
                     this.§?!n§.push(_loc4_);
                  }
                  while(_loc6_ && this);
                  
                  if(_loc6_)
                  {
                     break;
                  }
                  if(!_loc6_)
                  {
                     if(true)
                     {
                        addr226:
                     }
                     continue;
                     return;
                  }
                  §§goto(addr128);
               }
            }
         }
         §§goto(addr60);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&"1§();
         }
         do
         {
            this.§7b§();
         }
         while(!(_loc1_ || this));
         
      }
      
      private function §7b§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:URLLoader = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§?!n§)
         {
            if(!(_loc4_ && this))
            {
               this.§+!K§(_loc1_);
               if(_loc4_)
               {
                  continue;
               }
            }
            this.§=T§(_loc1_);
         }
         if(!(_loc4_ && _loc2_))
         {
            this.§?!n§ = new Vector.<URLLoader>();
         }
      }
      
      private function §6!P§(param1:Object) : URLVariables
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
      
      private function § s§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(!_loc6_)
         {
            this.§+!K§(param1.target as URLLoader);
            if(!(_loc6_ && this))
            {
               this.§=T§(param1.target as URLLoader);
            }
         }
         var _loc3_:int = 0;
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            if(_loc5_)
            {
               §§push(§#7§);
               §§push(_loc2_ + ": ");
               if(_loc5_)
               {
                  §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
               }
               §§pop().log(§§pop());
            }
         }
         if(_loc5_ || _loc3_)
         {
            §=!#§(§`!+§.§^!`§((param1.target as URLLoader).data));
         }
      }
      
      private function §'![§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§+!K§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(_loc4_ || _loc3_)
         {
            _loc2_.E = param1.text;
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               addr127:
               while(true)
               {
                  this.§=T§(param1.target as URLLoader);
                  addr69:
                  if(!(_loc3_ && this))
                  {
                     return;
                     addr76:
                  }
               }
               addr97:
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
               §#7§.log("[HTTPConnection] ioError: " + param1.text);
               while(!_loc3_)
               {
                  §4^§(§`!+§.§^!`§(_loc2_));
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  §§goto(addr69);
               }
               loop3:
               while(true)
               {
                  if(_loc4_)
                  {
                     §§goto(addr97);
                  }
                  addr112:
                  while(true)
                  {
                     §#7§.log((param1.target as URLLoader).data);
                     continue loop3;
                  }
                  §§goto(addr76);
               }
               §§goto(addr127);
            }
         }
         §§goto(addr112);
      }
      
      private function §+!K§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§ s§);
         }
         do
         {
            param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§'![§);
         }
         while(_loc2_);
         
      }
      
      private function §=T§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§?!n§.indexOf(param1) > -1)
            {
               if(_loc3_)
               {
                  this.§?!n§.splice(this.§?!n§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
