package §_-bz§
{
   import §_-e3§.§_-54§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §_-5m§ extends §_-fh§
   {
       
      
      private var §_-HC§:Vector.<URLLoader>;
      
      public function §_-5m§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§_-HC§ = new Vector.<URLLoader>();
            if(!_loc4_)
            {
               addr30:
               super(param1,param2);
            }
            return;
         }
         §§goto(addr30);
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
         if(!_loc5_)
         {
            if(§_-uC§.§_-fg§ == "Google")
            {
               addr32:
               _loc3_ = new URLRequest(§_-05§() + param1);
               if(_loc6_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(!(_loc5_ && param1))
                  {
                     addr53:
                     _loc3_.data = this.§_-0V§(param2);
                  }
                  (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                  if(!(_loc5_ && param2))
                  {
                     _loc4_.addEventListener(Event.COMPLETE,this.§_-mK§);
                     if(!_loc5_)
                     {
                        _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
                        if(!(_loc5_ && this))
                        {
                           addr101:
                           _loc4_.load(_loc3_);
                           if(_loc6_ || param1)
                           {
                              addr111:
                              this.§_-HC§.push(_loc4_);
                           }
                        }
                        §§goto(addr198);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr101);
               }
               §§goto(addr53);
            }
            else
            {
               _loc3_ = new URLRequest(§_-05§());
               if(!_loc5_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(!(_loc5_ && param1))
                  {
                     _loc3_.data = this.§_-0V§(param2);
                     if(_loc6_ || _loc3_)
                     {
                        addr147:
                        _loc3_.data.C = param1;
                     }
                  }
                  (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                  if(!_loc5_)
                  {
                     _loc4_.addEventListener(Event.COMPLETE,this.§_-mK§);
                     if(_loc6_)
                     {
                        _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
                        if(!(_loc5_ && param2))
                        {
                           _loc4_.load(_loc3_);
                           if(_loc5_)
                           {
                           }
                           §§goto(addr198);
                        }
                     }
                     this.§_-HC§.push(_loc4_);
                  }
                  §§goto(addr198);
               }
               §§goto(addr147);
            }
         }
         §§goto(addr32);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-u0§();
            if(_loc2_ || this)
            {
               addr32:
               this.§_-ZX§();
            }
            return;
         }
         §§goto(addr32);
      }
      
      private function §_-ZX§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:URLLoader = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§_-HC§)
         {
            if(!(_loc5_ && this))
            {
               this.§_-bi§(_loc1_);
               if(_loc4_ || _loc2_)
               {
                  this.§_-0g§(_loc1_);
               }
            }
         }
         if(_loc4_)
         {
            this.§_-HC§ = new Vector.<URLLoader>();
         }
      }
      
      private function §_-0V§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(_loc6_)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private function §_-mK§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(!_loc6_)
         {
            this.§_-bi§(param1.target as URLLoader);
            if(!(_loc6_ && _loc3_))
            {
               this.§_-0g§(param1.target as URLLoader);
            }
         }
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            if(!_loc6_)
            {
               §§push(§_-54§);
               §§push(_loc2_ + ": ");
               if(!_loc6_)
               {
                  §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
               }
               §§pop().log(§§pop());
            }
         }
         if(!_loc6_)
         {
            §_-wD§(§_-Iq§.§_-th§((param1.target as URLLoader).data));
         }
      }
      
      private function §_-qT§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§_-bi§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§_-0g§(param1.target as URLLoader);
         §_-54§.log((param1.target as URLLoader).data);
         if(!(_loc4_ && this))
         {
            §_-54§.log("[HTTPConnection] ioError: " + param1.text);
            if(!(_loc4_ && _loc3_))
            {
               addr79:
               §_-7d§(§_-Iq§.§_-th§(_loc2_));
            }
            return;
         }
         §§goto(addr79);
      }
      
      private function §_-bi§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§_-mK§);
            if(!_loc3_)
            {
               param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
            }
         }
      }
      
      private function §_-0g§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§_-HC§.indexOf(param1) > -1)
            {
               if(_loc2_ || this)
               {
                  this.§_-HC§.splice(this.§_-HC§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
