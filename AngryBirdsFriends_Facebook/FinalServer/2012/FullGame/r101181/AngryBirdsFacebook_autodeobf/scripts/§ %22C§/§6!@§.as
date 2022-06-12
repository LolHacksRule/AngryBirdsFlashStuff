package § "C§
{
   import §6o§.§+!k§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §6!@§ extends §5!e§
   {
       
      
      private var §`a§:Vector.<URLLoader>;
      
      public function §6!@§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§`a§ = new Vector.<URLLoader>();
         }
         do
         {
            super(param1,param2);
         }
         while(!(_loc3_ || this));
         
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
         if(_loc6_)
         {
            if(§2"=§.§^;§ == "Google")
            {
               addr35:
               _loc3_ = new URLRequest(§""%§() + param1);
               if(!(_loc5_ && this))
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(_loc6_)
                  {
                     addr56:
                     _loc3_.data = this.§do§(param2);
                  }
                  (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                  if(!_loc5_)
                  {
                     _loc4_.addEventListener(Event.COMPLETE,this.§??§);
                  }
                  loop9:
                  while(true)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§>0§);
                     loop10:
                     while(true)
                     {
                        addr93:
                        while(true)
                        {
                           _loc4_.load(_loc3_);
                           continue loop10;
                        }
                        continue loop9;
                     }
                  }
               }
               §§goto(addr56);
            }
            else
            {
               _loc3_ = new URLRequest(§""%§());
               if(_loc6_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  loop0:
                  while(true)
                  {
                     addr149:
                     while(true)
                     {
                        _loc3_.data = this.§do§(param2);
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
                  if(!_loc5_)
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
               if(_loc6_ || _loc3_)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§??§);
                  while(true)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§>0§);
                     loop5:
                     for(; _loc6_; while(!(_loc5_ && param2))
                     {
                     })
                     {
                        while(true)
                        {
                           _loc4_.load(_loc3_);
                           continue loop5;
                           addr191:
                           if(false)
                           {
                              continue;
                           }
                           §§goto(addr232);
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§`a§.push(_loc4_);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§goto(addr191);
                  }
                  §§goto(addr207);
               }
            }
            §§goto(addr232);
         }
         §§goto(addr35);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §=!6§();
         }
         do
         {
            this.§+"A§();
         }
         while(_loc1_);
         
      }
      
      private function §+"A§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:URLLoader = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§`a§)
         {
            if(!(_loc5_ && _loc2_))
            {
               this.§5"=§(_loc1_);
               if(!_loc5_)
               {
                  this.§#!@§(_loc1_);
               }
            }
         }
         if(!(_loc5_ && _loc2_))
         {
            this.§`a§ = new Vector.<URLLoader>();
         }
      }
      
      private function §do§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(_loc6_ || _loc3_)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private function §??§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_ || _loc2_)
         {
            this.§5"=§(param1.target as URLLoader);
            if(_loc6_)
            {
               this.§#!@§(param1.target as URLLoader);
            }
         }
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            if(_loc6_)
            {
               §§push(§+!k§);
               §§push(_loc2_ + ": ");
               if(!_loc5_)
               {
                  §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
               }
               §§pop().log(§§pop());
            }
         }
         if(_loc6_)
         {
            §&"6§(§#!#§.§&!F§((param1.target as URLLoader).data));
         }
      }
      
      private function §>0§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§5"=§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(_loc4_)
         {
            _loc2_.E = param1.text;
            loop0:
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               while(true)
               {
                  this.§#!@§(param1.target as URLLoader);
                  loop2:
                  while(_loc4_)
                  {
                     §+!k§.log((param1.target as URLLoader).data);
                     while(true)
                     {
                        §§push(§+!k§);
                        §§push("[HTTPConnection] ioError: ");
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop() + param1.text);
                        }
                        §§pop().log(§§pop());
                        loop4:
                        while(!(_loc3_ && _loc2_))
                        {
                           if(!_loc4_)
                           {
                              continue loop2;
                              while(true)
                              {
                                 §,!B§(§#!#§.§&!F§(_loc2_));
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop0;
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      private function §5"=§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§??§);
         }
         do
         {
            param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§>0§);
         }
         while(!_loc3_);
         
      }
      
      private function §#!@§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§`a§.indexOf(param1) > -1)
            {
               if(_loc2_)
               {
                  this.§`a§.splice(this.§`a§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
