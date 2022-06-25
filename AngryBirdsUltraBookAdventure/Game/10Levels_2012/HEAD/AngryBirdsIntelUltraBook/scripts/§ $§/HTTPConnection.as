package § $§
{
   import §'N§.Log;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class HTTPConnection extends §]E§
   {
       
      
      private var §?!@§:Vector.<URLLoader>;
      
      public function HTTPConnection(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§?!@§ = new Vector.<URLLoader>();
         }
         do
         {
            super(param1,param2);
         }
         while(_loc4_);
         
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
         if(!_loc6_)
         {
            if(Server.§!!B§ != "Google")
            {
               _loc3_ = new URLRequest(§&!e§());
               if(_loc5_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        _loc3_.data = this.§@!^§(param2);
                        do
                        {
                           _loc3_.data.C = param1;
                        }
                        while(_loc6_ && param2);
                        
                        if(!(_loc5_ || param2))
                        {
                           break;
                        }
                        while(false)
                        {
                           continue loop1;
                        }
                        _loc4_ = new URLLoader();
                        if(!(_loc6_ && param1))
                        {
                           _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
                           while(true)
                           {
                              _loc4_.addEventListener(Event.COMPLETE,this.§8!C§);
                              addr260:
                              while(true)
                              {
                                 _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§`!W§);
                              }
                              addr212:
                              if(_loc5_ || _loc3_)
                              {
                                 if(false)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       _loc4_.load(_loc3_);
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             this.§?!@§.push(_loc4_);
                                             if(_loc6_ && param2)
                                             {
                                                continue;
                                             }
                                             §§goto(addr212);
                                          }
                                          addr250:
                                          while(true)
                                          {
                                             continue loop7;
                                          }
                                       }
                                       §§goto(addr260);
                                    }
                                 }
                                 §§goto(addr267);
                              }
                           }
                        }
                        §§goto(addr250);
                     }
                  }
               }
               §§goto(addr172);
            }
         }
         _loc3_ = new URLRequest(§&!e§() + param1);
         if(!(_loc6_ && this))
         {
            _loc3_.method = URLRequestMethod.POST;
            if(_loc5_)
            {
               addr58:
               _loc3_.data = this.§@!^§(param2);
            }
            _loc4_ = new URLLoader();
            if(!(_loc6_ && param2))
            {
               _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
               while(true)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§8!C§);
                  loop10:
                  while(!(_loc6_ && param1))
                  {
                     while(true)
                     {
                        _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§`!W§);
                        while(true)
                        {
                           while(true)
                           {
                              _loc4_.load(_loc3_);
                              do
                              {
                                 this.§?!@§.push(_loc4_);
                              }
                              while(_loc6_ && param2);
                              
                              if(!_loc5_)
                              {
                                 break;
                              }
                              if(_loc5_)
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                                 addr267:
                              }
                              continue loop10;
                              return;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr136);
         }
         §§goto(addr58);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §65§();
            do
            {
               this.§-F§();
            }
            while(_loc1_);
            
         }
      }
      
      private function §-F§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:URLLoader = null;
         var _loc3_:* = this.§?!@§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc3_)
            {
               this.§^5§(_loc1_);
               if(_loc5_ && _loc3_)
               {
                  continue;
               }
            }
            this.§%!&§(_loc1_);
         }
         if(!_loc5_)
         {
            this.§?!@§ = new Vector.<URLLoader>();
         }
      }
      
      private function §@!^§(param1:Object) : URLVariables
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
      
      private function §8!C§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_)
         {
            this.§^5§(param1.target as URLLoader);
            if(!(_loc5_ && this))
            {
               addr37:
               this.§%!&§(param1.target as URLLoader);
            }
            for(_loc2_ in (param1.target as URLLoader).data)
            {
               if(_loc6_)
               {
                  §§push(Log);
                  §§push(_loc2_ + ": ");
                  if(_loc6_)
                  {
                     §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
                  }
                  §§pop().log(§§pop());
               }
            }
            if(_loc6_)
            {
               §!!>§(MessageFactory.§7!#§((param1.target as URLLoader).data));
            }
            return;
         }
         §§goto(addr37);
      }
      
      private function §`!W§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§^5§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(_loc4_ || _loc2_)
         {
            _loc2_.E = param1.text;
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               loop1:
               while(!_loc3_)
               {
                  this.§%!&§(param1.target as URLLoader);
                  while(true)
                  {
                     Log.log((param1.target as URLLoader).data);
                     addr70:
                     if(!(_loc3_ && this))
                     {
                        return;
                        addr77:
                     }
                  }
                  while(true)
                  {
                     if(!(_loc3_ && this))
                     {
                        continue;
                     }
                     continue loop1;
                  }
                  §§goto(addr133);
               }
            }
         }
         §§goto(addr123);
      }
      
      private function §^5§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§8!C§);
            do
            {
               param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§`!W§);
            }
            while(!_loc2_);
            
         }
      }
      
      private function §%!&§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§?!@§.indexOf(param1) > -1)
            {
               if(_loc2_ || param1)
               {
                  addr41:
                  this.§?!@§.splice(this.§?!@§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr41);
      }
   }
}
