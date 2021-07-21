package §&!0§
{
   import § !r§.§`![§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §&!u§ extends §2a§
   {
       
      
      private var §[!h§:Vector.<URLLoader>;
      
      public function §&!u§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§[!h§ = new Vector.<URLLoader>();
            if(_loc3_)
            {
               super(param1,param2);
            }
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
         if(!_loc5_)
         {
            if(§%!`§.§87§ == "Google")
            {
               addr35:
               _loc3_ = new URLRequest(§'!k§() + param1);
               if(!_loc5_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(_loc6_)
                  {
                     _loc3_.data = this.§^d§(param2);
                  }
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(!_loc5_)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§2!a§);
                  if(_loc6_)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                     if(!(_loc5_ && _loc3_))
                     {
                        _loc4_.load(_loc3_);
                        if(_loc5_)
                        {
                        }
                        addr202:
                        return;
                        addr106:
                     }
                     §§goto(addr106);
                  }
                  this.§[!h§.push(_loc4_);
               }
               §§goto(addr106);
            }
            else
            {
               _loc3_ = new URLRequest(§'!k§());
               if(_loc6_ || _loc3_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(!(_loc5_ && param2))
                  {
                     _loc3_.data = this.§^d§(param2);
                     if(_loc5_)
                     {
                     }
                     addr142:
                     (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                     if(!(_loc5_ && _loc3_))
                     {
                        _loc4_.addEventListener(Event.COMPLETE,this.§2!a§);
                        if(!(_loc5_ && _loc3_))
                        {
                           _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                           if(_loc5_ && this)
                           {
                           }
                           §§goto(addr202);
                        }
                        _loc4_.load(_loc3_);
                        if(_loc6_)
                        {
                           this.§[!h§.push(_loc4_);
                        }
                     }
                     §§goto(addr202);
                  }
                  _loc3_.data.C = param1;
               }
               §§goto(addr142);
            }
         }
         §§goto(addr35);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § for§();
            if(!_loc1_)
            {
               addr23:
               this.§8§();
            }
            return;
         }
         §§goto(addr23);
      }
      
      private function §8§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:URLLoader = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§[!h§)
         {
            if(_loc4_)
            {
               this.§6!^§(_loc1_);
               if(_loc4_)
               {
                  this.§4!>§(_loc1_);
               }
            }
         }
         if(!(_loc5_ && _loc2_))
         {
            this.§[!h§ = new Vector.<URLLoader>();
         }
      }
      
      private function §^d§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(_loc6_ || param1)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private function §2!a§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(!_loc6_)
         {
            this.§6!^§(param1.target as URLLoader);
            if(!(_loc6_ && this))
            {
               addr34:
               this.§4!>§(param1.target as URLLoader);
            }
            for(_loc2_ in (param1.target as URLLoader).data)
            {
               if(!_loc6_)
               {
                  §§push(§`![§);
                  §§push(_loc2_ + ": ");
                  if(_loc5_)
                  {
                     §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
                  }
                  §§pop().log(§§pop());
               }
            }
            if(!(_loc6_ && param1))
            {
               §,;§(§6B§.§+2§((param1.target as URLLoader).data));
            }
            return;
         }
         §§goto(addr34);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§6!^§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         if(_loc3_)
         {
            this.§4!>§(param1.target as URLLoader);
            §`![§.log((param1.target as URLLoader).data);
            §§push(§`![§);
            §§push("[HTTPConnection] ioError: ");
            if(_loc3_)
            {
               §§push(§§pop() + param1.text);
            }
            §§pop().log(§§pop());
         }
         §#!A§(§6B§.§+2§(_loc2_));
      }
      
      private function §6!^§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            param1.removeEventListener(Event.COMPLETE,this.§2!a§);
            if(!(_loc3_ && _loc2_))
            {
               addr46:
               param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            }
            return;
         }
         §§goto(addr46);
      }
      
      private function §4!>§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§[!h§.indexOf(param1) > -1)
            {
               if(_loc2_)
               {
                  this.§[!h§.splice(this.§[!h§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
