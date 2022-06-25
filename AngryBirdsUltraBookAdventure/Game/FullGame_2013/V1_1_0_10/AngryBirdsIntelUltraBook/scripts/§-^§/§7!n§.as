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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§%!m§ = new Vector.<URLLoader>();
            do
            {
               super(param1,param2);
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:URLLoader = null;
         if(!(_loc5_ && this))
         {
            super.sendRequest(param1,param2);
         }
         var _loc3_:URLRequest = null;
         if(_loc6_ || _loc3_)
         {
            if(§?7§.§!!y§ == "Google")
            {
               addr45:
               _loc3_ = new URLRequest(§ !§() + param1);
               if(_loc6_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(!(_loc5_ && _loc3_))
                  {
                     addr66:
                     _loc3_.data = this.§+!T§(param2);
                  }
                  (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                  if(_loc6_)
                  {
                     _loc4_.addEventListener(Event.COMPLETE,this.§-<§);
                     loop9:
                     while(true)
                     {
                        _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§%""§);
                        while(true)
                        {
                           addr100:
                           while(true)
                           {
                              _loc4_.load(_loc3_);
                              do
                              {
                                 this.§%!m§.push(_loc4_);
                              }
                              while(!_loc6_);
                              
                              if(_loc5_)
                              {
                                 break;
                              }
                              continue loop9;
                           }
                        }
                     }
                  }
                  while(false)
                  {
                     §§goto(addr100);
                  }
                  §§goto(addr242);
               }
               §§goto(addr66);
            }
            else
            {
               _loc3_ = new URLRequest(§ !§());
               if(!(_loc5_ && this))
               {
                  _loc3_.method = URLRequestMethod.POST;
                  loop0:
                  while(true)
                  {
                     addr154:
                     while(true)
                     {
                        _loc3_.data = this.§+!T§(param2);
                        addr160:
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
                     §§goto(addr154);
                  }
                  §§goto(addr160);
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(_loc6_ || this)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§-<§);
                  loop4:
                  while(true)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§%""§);
                     while(true)
                     {
                        addr215:
                        addr196:
                        while(true)
                        {
                           _loc4_.load(_loc3_);
                           continue loop4;
                        }
                        if(!(_loc6_ || _loc3_))
                        {
                           continue;
                        }
                        if(false)
                        {
                           §§goto(addr215);
                        }
                        else
                        {
                           §§goto(addr242);
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§%!m§.push(_loc4_);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§goto(addr196);
                  }
                  §§goto(addr219);
               }
            }
            addr242:
            return;
         }
         §§goto(addr45);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>"§();
         }
         do
         {
            this.§%T§();
         }
         while(!_loc1_);
         
      }
      
      private function §%T§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:URLLoader = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§%!m§)
         {
            if(!(_loc4_ && _loc1_))
            {
               this.§1k§(_loc1_);
               if(_loc4_)
               {
                  continue;
               }
            }
            this.§+!w§(_loc1_);
         }
         if(!(_loc4_ && _loc2_))
         {
            this.§%!m§ = new Vector.<URLLoader>();
         }
      }
      
      private function §+!T§(param1:Object) : URLVariables
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
      
      private function §-<§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_)
         {
            this.§1k§(param1.target as URLLoader);
            if(_loc6_ || _loc3_)
            {
               addr35:
               this.§+!w§(param1.target as URLLoader);
            }
            for(_loc2_ in (param1.target as URLLoader).data)
            {
               if(_loc6_ || param1)
               {
                  §§push(§<m§);
                  §§push(_loc2_ + ": ");
                  if(_loc6_)
                  {
                     §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
                  }
                  §§pop().log(§§pop());
               }
            }
            if(!(_loc5_ && _loc2_))
            {
               §false§(§`l§.§5[§((param1.target as URLLoader).data));
            }
            return;
         }
         §§goto(addr35);
      }
      
      private function §%""§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§1k§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(!_loc4_)
         {
            _loc2_.E = param1.text;
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               while(_loc3_)
               {
                  this.§+!w§(param1.target as URLLoader);
                  loop2:
                  while(!(_loc4_ && _loc3_))
                  {
                     while(true)
                     {
                        §<m§.log((param1.target as URLLoader).data);
                        do
                        {
                           §§push(§<m§);
                           §§push("[HTTPConnection] ioError: ");
                           if(!_loc4_)
                           {
                              §§push(§§pop() + param1.text);
                           }
                           §§pop().log(§§pop());
                           do
                           {
                              §[3§(§`l§.§5[§(_loc2_));
                           }
                           while(_loc4_);
                           
                        }
                        while(!(_loc3_ || this));
                        
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      private function §1k§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§-<§);
         }
         do
         {
            param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§%""§);
         }
         while(_loc3_);
         
      }
      
      private function §+!w§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§%!m§.indexOf(param1) > -1)
            {
               if(_loc3_ || this)
               {
                  addr47:
                  this.§%!m§.splice(this.§%!m§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr47);
      }
   }
}
