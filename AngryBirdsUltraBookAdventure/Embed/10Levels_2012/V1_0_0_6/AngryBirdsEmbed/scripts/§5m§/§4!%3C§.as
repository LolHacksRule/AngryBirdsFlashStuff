package §5m§
{
   import §>K§.§9X§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §4!<§ extends §0"§
   {
       
      
      private var §2Z§:Vector.<URLLoader>;
      
      public function §4!<§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§2Z§ = new Vector.<URLLoader>();
            if(!(_loc4_ && param1))
            {
               super(param1,param2);
            }
         }
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:URLLoader = null;
         if(_loc5_ || _loc3_)
         {
            super.sendRequest(param1,param2);
         }
         var _loc3_:URLRequest = null;
         if(!(_loc6_ && this))
         {
            if(§2!&§.§2"§ == "Google")
            {
               addr44:
               _loc3_ = new URLRequest(§0j§() + param1);
               if(!(_loc6_ && this))
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(!_loc6_)
                  {
                     addr65:
                     _loc3_.data = this.§&N§(param2);
                  }
                  (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                  if(_loc5_ || param1)
                  {
                     _loc4_.addEventListener(Event.COMPLETE,this.§%!!§);
                     if(_loc5_ || param2)
                     {
                        _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                        if(!(_loc6_ && _loc3_))
                        {
                           addr121:
                           _loc4_.load(_loc3_);
                           if(!(_loc6_ && param1))
                           {
                              addr131:
                              this.§2Z§.push(_loc4_);
                           }
                        }
                        §§goto(addr221);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr131);
               }
               §§goto(addr65);
            }
            else
            {
               _loc3_ = new URLRequest(§0j§());
               if(_loc5_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(!(_loc6_ && param2))
                  {
                     _loc3_.data = this.§&N§(param2);
                     if(_loc6_ && param1)
                     {
                     }
                     addr171:
                     (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                     if(!(_loc6_ && param2))
                     {
                        _loc4_.addEventListener(Event.COMPLETE,this.§%!!§);
                        if(_loc5_)
                        {
                           _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                           if(_loc5_)
                           {
                              addr212:
                              _loc4_.load(_loc3_);
                              if(!_loc5_)
                              {
                              }
                              §§goto(addr221);
                           }
                           this.§2Z§.push(_loc4_);
                           §§goto(addr221);
                        }
                     }
                     §§goto(addr212);
                  }
                  _loc3_.data.C = param1;
               }
               §§goto(addr171);
            }
         }
         §§goto(addr44);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §<D§();
            if(!(_loc1_ && _loc2_))
            {
               this.§`-§();
            }
         }
      }
      
      private function §`-§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:URLLoader = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§2Z§)
         {
            if(_loc5_ || _loc2_)
            {
               this.§ ?§(_loc1_);
               if(_loc5_)
               {
                  this.§?!8§(_loc1_);
               }
            }
         }
         if(!(_loc4_ && this))
         {
            this.§2Z§ = new Vector.<URLLoader>();
         }
      }
      
      private function §&N§(param1:Object) : URLVariables
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
      
      private function §%!!§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(!(_loc5_ && _loc2_))
         {
            this.§ ?§(param1.target as URLLoader);
            if(_loc6_)
            {
               addr35:
               this.§?!8§(param1.target as URLLoader);
            }
            for(_loc2_ in (param1.target as URLLoader).data)
            {
               if(_loc6_ || param1)
               {
                  §§push(§9X§);
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
               §@5§(§"!E§.§'6§((param1.target as URLLoader).data));
            }
            return;
         }
         §§goto(addr35);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§ ?§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         if(_loc4_ || _loc2_)
         {
            _loc2_.C = "serverConnectionError";
            if(_loc4_)
            {
               this.§?!8§(param1.target as URLLoader);
               §9X§.log((param1.target as URLLoader).data);
            }
         }
         §§push(§9X§);
         §§push("[HTTPConnection] ioError: ");
         if(!_loc3_)
         {
            §§push(§§pop() + param1.text);
         }
         §§pop().log(§§pop());
         if(!(_loc3_ && param1))
         {
            §7-§(§"!E§.§'6§(_loc2_));
         }
      }
      
      private function § ?§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§%!!§);
            if(_loc2_ || _loc3_)
            {
               addr41:
               param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            }
            return;
         }
         §§goto(addr41);
      }
      
      private function §?!8§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§2Z§.indexOf(param1) > -1)
            {
               if(_loc2_)
               {
                  this.§2Z§.splice(this.§2Z§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
