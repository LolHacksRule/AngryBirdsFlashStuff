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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§^A§ = new Vector.<URLLoader>();
            do
            {
               super(param1,param2);
            }
            while(!_loc3_);
            
         }
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
            if(§5>§.§^!L§ == "Google")
            {
               addr34:
               _loc3_ = new URLRequest(§#!;§() + param1);
               if(!_loc6_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(!_loc6_)
                  {
                     addr50:
                     _loc3_.data = this.§?N§(param2);
                  }
                  (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                  if(_loc5_ || this)
                  {
                     _loc4_.addEventListener(Event.COMPLETE,this.§=!^§);
                  }
                  while(true)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
                     while(true)
                     {
                        §§goto(addr85);
                     }
                     if(!_loc5_)
                     {
                        continue;
                     }
                     this.§^A§.push(_loc4_);
                     if(!(_loc6_ && this))
                     {
                        if(false)
                        {
                           addr85:
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr89);
                  }
               }
               §§goto(addr50);
            }
            else
            {
               _loc3_ = new URLRequest(§#!;§());
               if(!_loc6_)
               {
                  _loc3_.method = URLRequestMethod.POST;
               }
               loop0:
               while(true)
               {
                  addr148:
                  addr167:
                  while(true)
                  {
                     _loc3_.data = this.§?N§(param2);
                     continue loop0;
                  }
                  addr210:
                  (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                  if(!_loc6_)
                  {
                     _loc4_.addEventListener(Event.COMPLETE,this.§=!^§);
                     while(true)
                     {
                        _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
                        loop4:
                        while(true)
                        {
                           addr204:
                           while(true)
                           {
                              _loc4_.load(_loc3_);
                              addr208:
                              while(!_loc6_)
                              {
                              }
                              continue loop4;
                           }
                        }
                        §§goto(addr185);
                     }
                  }
                  while(true)
                  {
                     this.§^A§.push(_loc4_);
                     if(_loc5_)
                     {
                        addr185:
                        if(_loc6_ && this)
                        {
                           continue loop3;
                        }
                        if(false)
                        {
                           §§goto(addr204);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr208);
                  }
               }
            }
            addr124:
            while(true)
            {
               _loc4_.load(_loc3_);
               continue loop9;
            }
            return;
         }
         §§goto(addr34);
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
            while(_loc2_ && _loc1_);
            
         }
      }
      
      private function §&!!§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:URLLoader = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§^A§)
         {
            if(_loc4_)
            {
               this.§&S§(_loc1_);
               if(_loc5_ && _loc1_)
               {
                  continue;
               }
            }
            this.§-!%§(_loc1_);
         }
         if(_loc4_ || _loc2_)
         {
            this.§^A§ = new Vector.<URLLoader>();
         }
      }
      
      private function §?N§(param1:Object) : URLVariables
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
      
      private function §=!^§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(_loc5_ || param1)
         {
            this.§&S§(param1.target as URLLoader);
            if(!_loc6_)
            {
               this.§-!%§(param1.target as URLLoader);
            }
         }
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            if(_loc5_ || param1)
            {
               §§push(§!>§);
               §§push(_loc2_ + ": ");
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
               }
               §§pop().log(§§pop());
            }
         }
         if(_loc5_)
         {
            §6Y§(§^q§.§!$§((param1.target as URLLoader).data));
         }
      }
      
      private function §"[§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§&S§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(!_loc3_)
         {
            _loc2_.E = param1.text;
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               loop1:
               for(; _loc4_ || _loc3_; if(!(_loc4_ || param1))
               {
                  continue;
               },return,addr66:)
               {
                  this.§-!%§(param1.target as URLLoader);
                  while(true)
                  {
                     §!>§.log((param1.target as URLLoader).data);
                     while(_loc4_)
                     {
                        §§push(§!>§);
                        §§push("[HTTPConnection] ioError: ");
                        if(_loc4_ || this)
                        {
                           §§push(§§pop() + param1.text);
                        }
                        §§pop().log(§§pop());
                        while(!(_loc3_ && param1))
                        {
                           §"!6§(§^q§.§!$§(_loc2_));
                           if(!(_loc3_ && _loc2_))
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      private function §&S§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
         if(!(_loc2_ && _loc3_))
         {
            if(this.§^A§.indexOf(param1) > -1)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr47:
                  this.§^A§.splice(this.§^A§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr47);
      }
   }
}
