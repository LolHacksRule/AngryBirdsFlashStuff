package §-^§
{
   import §1!B§.§<m§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §7!n§ extends §#J§
   {
       
      
      private var §%!m§:Vector.<URLLoader>;
      
      public function §7!n§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§%!m§ = new Vector.<URLLoader>();
         }
         do
         {
            super(param1,param2);
         }
         while(_loc3_ && _loc3_);
         
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
         if(_loc6_ || _loc3_)
         {
            if(§?7§.§!!y§ == "Google")
            {
               addr40:
               _loc3_ = new URLRequest(§ !§() + param1);
               if(!_loc5_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(_loc6_)
                  {
                     addr56:
                     _loc3_.data = this.§+!T§(param2);
                  }
                  (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                  if(_loc6_)
                  {
                     _loc4_.addEventListener(Event.COMPLETE,this.§-<§);
                  }
                  while(true)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§%""§);
                     while(!_loc5_)
                     {
                        while(true)
                        {
                           _loc4_.load(_loc3_);
                           do
                           {
                              this.§%!m§.push(_loc4_);
                           }
                           while(!(_loc6_ || _loc3_));
                           
                           if(!(_loc6_ || _loc3_))
                           {
                              break;
                           }
                           if(true)
                           {
                              return;
                           }
                           addr232:
                        }
                     }
                  }
               }
               §§goto(addr56);
            }
            else
            {
               _loc3_ = new URLRequest(§ !§());
               if(!(_loc5_ && _loc3_))
               {
                  _loc3_.method = URLRequestMethod.POST;
                  loop0:
                  while(true)
                  {
                     addr149:
                     while(true)
                     {
                        _loc3_.data = this.§+!T§(param2);
                        addr155:
                        while(_loc6_)
                        {
                        }
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  _loc3_.data.C = param1;
                  if(_loc6_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr155);
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(_loc6_ || param1)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§-<§);
                  loop4:
                  while(true)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§%""§);
                     while(true)
                     {
                        addr205:
                        addr186:
                        while(true)
                        {
                           _loc4_.load(_loc3_);
                           continue loop4;
                        }
                        if(!(_loc6_ || param2))
                        {
                           continue;
                        }
                        while(false)
                        {
                           §§goto(addr205);
                        }
                        §§goto(addr232);
                     }
                  }
               }
               §§goto(addr203);
            }
         }
         §§goto(addr40);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>"§();
            do
            {
               this.§%T§();
            }
            while(_loc2_);
            
         }
      }
      
      private function §%T§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§%!m§)
         {
            if(_loc4_)
            {
               this.§1k§(_loc1_);
               if(_loc4_)
               {
                  this.§+!w§(_loc1_);
               }
            }
         }
         if(!_loc5_)
         {
            this.§%!m§ = new Vector.<URLLoader>();
         }
      }
      
      private function §+!T§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(_loc7_ || param1)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private function §-<§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(!(_loc6_ && param1))
         {
            this.§1k§(param1.target as URLLoader);
            if(!_loc6_)
            {
               addr34:
               this.§+!w§(param1.target as URLLoader);
            }
            for(_loc2_ in (param1.target as URLLoader).data)
            {
               if(_loc5_)
               {
                  §§push(§<m§);
                  §§push(_loc2_ + ": ");
                  if(_loc5_)
                  {
                     §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
                  }
                  §§pop().log(§§pop());
               }
            }
            if(_loc5_)
            {
               §false§(§`l§.§5[§((param1.target as URLLoader).data));
            }
            return;
         }
         §§goto(addr34);
      }
      
      private function §%""§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§1k§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(_loc3_)
         {
            _loc2_.E = param1.text;
            loop0:
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               while(true)
               {
                  this.§+!w§(param1.target as URLLoader);
                  while(_loc3_)
                  {
                     if(_loc3_ || this)
                     {
                        return;
                        addr65:
                     }
                  }
                  continue loop0;
                  addr101:
                  while(!(_loc4_ && this))
                  {
                     §§push(§<m§);
                     §§push("[HTTPConnection] ioError: ");
                     if(!_loc4_)
                     {
                        §§push(§§pop() + param1.text);
                     }
                     §§pop().log(§§pop());
                     while(_loc3_ || _loc3_)
                     {
                        §[3§(§`l§.§5[§(_loc2_));
                        if(!_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr48);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §<m§.log((param1.target as URLLoader).data);
            §§goto(addr101);
         }
         §§goto(addr65);
      }
      
      private function §1k§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§-<§);
            do
            {
               param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§%""§);
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      private function §+!w§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§%!m§.indexOf(param1) > -1)
            {
               if(!_loc2_)
               {
                  this.§%!m§.splice(this.§%!m§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
