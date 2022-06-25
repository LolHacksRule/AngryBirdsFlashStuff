package §[H§
{
   import §0!<§.§#y§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §5!E§ extends §++§
   {
       
      
      private var §%!+§:Vector.<URLLoader>;
      
      public function §5!E§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§%!+§ = new Vector.<URLLoader>();
            if(_loc4_)
            {
               addr27:
               super(param1,param2);
            }
            return;
         }
         §§goto(addr27);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:URLLoader = null;
         if(_loc6_ || param2)
         {
            super.sendRequest(param1,param2);
         }
         var _loc3_:URLRequest = null;
         if(_loc6_)
         {
            if(§7P§.§1V§ == "Google")
            {
               addr40:
               _loc3_ = new URLRequest(§,f§() + param1);
               if(_loc6_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(!_loc5_)
                  {
                     _loc3_.data = this.set(param2);
                  }
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(_loc6_ || _loc3_)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§,>§);
                  if(!_loc5_)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                     if(_loc6_ || param1)
                     {
                        _loc4_.load(_loc3_);
                        if(_loc6_ || this)
                        {
                           this.§%!+§.push(_loc4_);
                        }
                     }
                  }
               }
            }
            else
            {
               _loc3_ = new URLRequest(§,f§());
               if(!_loc5_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(_loc6_)
                  {
                     _loc3_.data = this.set(param2);
                     if(!(_loc5_ && this))
                     {
                        _loc3_.data.C = param1;
                     }
                  }
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(_loc6_)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§,>§);
                  if(!_loc5_)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                     if(!_loc6_)
                     {
                     }
                  }
                  §§goto(addr202);
               }
               _loc4_.load(_loc3_);
               if(_loc6_ || param2)
               {
                  this.§%!+§.push(_loc4_);
               }
            }
            addr202:
            return;
         }
         §§goto(addr40);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §=b§();
            if(_loc1_)
            {
               addr27:
               this.§[A§();
            }
            return;
         }
         §§goto(addr27);
      }
      
      private function §[A§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§%!+§)
         {
            if(!_loc4_)
            {
               this.§6!!§(_loc1_);
               if(_loc4_ && _loc1_)
               {
                  continue;
               }
            }
            this.§`!C§(_loc1_);
         }
         if(!_loc4_)
         {
            this.§%!+§ = new Vector.<URLLoader>();
         }
      }
      
      private function set(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(_loc6_ || this)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private function §,>§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_)
         {
            this.§6!!§(param1.target as URLLoader);
            if(!_loc5_)
            {
               this.§`!C§(param1.target as URLLoader);
            }
         }
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            if(!(_loc5_ && this))
            {
               §§push(§#y§);
               §§push(_loc2_ + ": ");
               if(!_loc5_)
               {
                  §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
               }
               §§pop().log(§§pop());
            }
         }
         if(!_loc5_)
         {
            §^X§(§;7§.§'G§((param1.target as URLLoader).data));
         }
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§6!!§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         if(!_loc4_)
         {
            _loc2_.C = "serverConnectionError";
         }
         this.§`!C§(param1.target as URLLoader);
         if(_loc3_ || param1)
         {
            §#y§.log((param1.target as URLLoader).data);
            if(!(_loc4_ && param1))
            {
               §§push(§#y§);
               §§push("[HTTPConnection] ioError: ");
               if(_loc3_ || this)
               {
                  §§push(§§pop() + param1.text);
               }
               §§pop().log(§§pop());
               §2!>§(§;7§.§'G§(_loc2_));
            }
         }
      }
      
      private function §6!!§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            param1.removeEventListener(Event.COMPLETE,this.§,>§);
            if(_loc2_)
            {
               param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            }
         }
      }
      
      private function §`!C§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§%!+§.indexOf(param1) > -1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr41:
                  this.§%!+§.splice(this.§%!+§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr41);
      }
   }
}
