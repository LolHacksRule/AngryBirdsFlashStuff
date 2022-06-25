package §;!5§
{
   import §^_§.§!>§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §#!L§ extends §9!H§
   {
       
      
      private var §^A§:Vector.<URLLoader>;
      
      public function §#!L§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§^A§ = new Vector.<URLLoader>();
         }
         do
         {
            super(param1,param2);
         }
         while(_loc3_ && param1);
         
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:URLLoader = null;
         if(!(_loc6_ && param1))
         {
            super.sendRequest(param1,param2);
         }
         var _loc3_:URLRequest = null;
         if(_loc5_)
         {
            if(§5>§.§^!L§ == "Google")
            {
               addr39:
               _loc3_ = new URLRequest(§#!;§() + param1);
               if(!(_loc6_ && _loc3_))
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(!(_loc6_ && this))
                  {
                     _loc3_.data = this.§?N§(param2);
                  }
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(_loc5_ || param2)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§=!^§);
                  while(true)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
                     loop9:
                     for(; _loc5_ || this; while(true)
                     {
                        _loc4_.load(_loc3_);
                        do
                        {
                           this.§^A§.push(_loc4_);
                        }
                        while(_loc6_ && param1);
                        
                        if(!(_loc5_ || param2))
                        {
                           break;
                        }
                        if(false)
                        {
                           continue;
                        }
                        §§goto(addr246);
                     })
                     {
                        while(true)
                        {
                           continue loop9;
                        }
                     }
                  }
               }
               §§goto(addr136);
            }
            else
            {
               _loc3_ = new URLRequest(§#!;§());
               if(!(_loc6_ && this))
               {
                  _loc3_.method = URLRequestMethod.POST;
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        _loc3_.data = this.§?N§(param2);
                        do
                        {
                           _loc3_.data.C = param1;
                        }
                        while(!(_loc5_ || param2));
                        
                        if(!_loc5_)
                        {
                           break;
                        }
                        while(false)
                        {
                           continue loop1;
                        }
                        (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                        if(!(_loc6_ && this))
                        {
                           _loc4_.addEventListener(Event.COMPLETE,this.§=!^§);
                           while(true)
                           {
                              _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
                              addr238:
                              loop5:
                              while(true)
                              {
                                 addr226:
                                 while(true)
                                 {
                                    _loc4_.load(_loc3_);
                                    continue loop5;
                                 }
                              }
                           }
                           addr245:
                        }
                        while(true)
                        {
                           this.§^A§.push(_loc4_);
                           if(_loc6_)
                           {
                              continue;
                           }
                           if(!_loc6_)
                           {
                              if(!_loc6_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr245);
                              }
                              §§goto(addr226);
                           }
                           §§goto(addr238);
                        }
                        §§goto(addr246);
                     }
                  }
               }
               §§goto(addr173);
            }
            return;
         }
         §§goto(addr39);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §97§();
            do
            {
               this.§&!!§();
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      private function §&!!§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:URLLoader = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§^A§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               this.§&S§(_loc1_);
               if(!(_loc5_ || _loc2_))
               {
                  continue;
               }
            }
            this.§-!%§(_loc1_);
         }
         if(_loc5_ || _loc2_)
         {
            this.§^A§ = new Vector.<URLLoader>();
         }
      }
      
      private function §?N§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(!(_loc6_ && this))
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private function §=!^§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(!_loc5_)
         {
            this.§&S§(param1.target as URLLoader);
            if(_loc6_ || param1)
            {
               this.§-!%§(param1.target as URLLoader);
            }
         }
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            if(_loc6_)
            {
               §§push(§!>§);
               §§push(_loc2_ + ": ");
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
               }
               §§pop().log(§§pop());
            }
         }
         if(_loc6_)
         {
            §6Y§(§^q§.§!$§((param1.target as URLLoader).data));
         }
      }
      
      private function §"[§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§&S§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(!_loc3_)
         {
            _loc2_.E = param1.text;
            loop0:
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               loop1:
               while(true)
               {
                  this.§-!%§(param1.target as URLLoader);
                  while(true)
                  {
                     §!>§.log((param1.target as URLLoader).data);
                     loop4:
                     while(!(_loc3_ && _loc2_))
                     {
                        continue loop0;
                        §"!6§(§^q§.§!$§(_loc2_));
                        if(_loc4_)
                        {
                           addr49:
                           if(_loc3_ && _loc3_)
                           {
                              while(true)
                              {
                                 §§push(§!>§);
                                 §§push("[HTTPConnection] ioError: ");
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() + param1.text);
                                 }
                                 §§pop().log(§§pop());
                                 continue loop4;
                                 §§goto(addr49);
                              }
                              return;
                           }
                           addr116:
                           addr73:
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      private function §&S§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            param1.removeEventListener(Event.COMPLETE,this.§=!^§);
         }
         do
         {
            param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
         }
         while(!_loc2_);
         
      }
      
      private function §-!%§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§^A§.indexOf(param1) > -1)
            {
               if(!_loc2_)
               {
                  this.§^A§.splice(this.§^A§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
