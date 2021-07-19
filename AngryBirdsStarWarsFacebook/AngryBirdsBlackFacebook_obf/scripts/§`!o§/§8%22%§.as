package §`!o§
{
   import §5t§.Log;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §8"%§ extends §^!f§
   {
       
      
      private var §;"&§:Vector.<URLLoader>;
      
      public function §8"%§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§;"&§ = new Vector.<URLLoader>();
         }
         do
         {
            super(param1,param2);
         }
         while(!_loc3_);
         
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:URLLoader = null;
         if(_loc6_ || _loc3_)
         {
            super.sendRequest(param1,param2);
         }
         var _loc3_:URLRequest = null;
         if(!_loc5_)
         {
            if(§6",§.§#"7§ == "Google")
            {
               addr40:
               _loc3_ = new URLRequest(§@"X§() + param1);
               if(!_loc5_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(!(_loc5_ && param2))
                  {
                     _loc3_.data = this.§@J§(param2);
                  }
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(!_loc5_)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§`#3§);
                  while(true)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
                     loop10:
                     for(; _loc6_; while(true)
                     {
                        this.§;"&§.push(_loc4_);
                        if(_loc5_ && _loc3_)
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           continue loop10;
                        }
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr93);
                     },return)
                     {
                        while(true)
                        {
                           _loc4_.load(_loc3_);
                           continue loop10;
                        }
                     }
                  }
               }
               §§goto(addr97);
            }
            else
            {
               _loc3_ = new URLRequest(§@"X§());
               if(!(_loc5_ && param2))
               {
                  _loc3_.method = URLRequestMethod.POST;
                  loop0:
                  while(true)
                  {
                     addr154:
                     while(true)
                     {
                        _loc3_.data = this.§@J§(param2);
                        addr160:
                        while(!_loc5_)
                        {
                        }
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  _loc3_.data.C = param1;
                  if(_loc6_ || _loc3_)
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
               if(!_loc5_)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§`#3§);
                  loop4:
                  while(true)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
                     loop5:
                     while(true)
                     {
                        addr193:
                        while(true)
                        {
                           _loc4_.load(_loc3_);
                           addr197:
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 continue loop4;
                              }
                              continue loop5;
                           }
                        }
                     }
                  }
               }
               §§goto(addr191);
            }
         }
         §§goto(addr40);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §,#U§();
         }
         do
         {
            this.§0!&§();
         }
         while(_loc1_);
         
      }
      
      private function §0!&§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:URLLoader = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§;"&§)
         {
            if(!_loc4_)
            {
               this.§?!H§(_loc1_);
               if(!(_loc5_ || _loc2_))
               {
                  continue;
               }
            }
            this.§>S§(_loc1_);
         }
         if(!(_loc4_ && _loc2_))
         {
            this.§;"&§ = new Vector.<URLLoader>();
         }
      }
      
      private function §@J§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(_loc7_ || _loc3_)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private function §`#3§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(!_loc5_)
         {
            this.§?!H§(param1.target as URLLoader);
            if(!(_loc5_ && this))
            {
               this.§>S§(param1.target as URLLoader);
            }
         }
         var _loc3_:int = 0;
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            if(_loc6_ || _loc3_)
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
         if(_loc6_ || this)
         {
            §'i§(§"!^§.§-#Z§((param1.target as URLLoader).data));
         }
      }
      
      private function §=!'§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§?!H§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(!(_loc3_ && this))
         {
            _loc2_.E = param1.text;
            loop0:
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               while(true)
               {
                  this.§>S§(param1.target as URLLoader);
                  continue loop0;
                  addr73:
                  if(!(_loc3_ && param1))
                  {
                     return;
                     addr80:
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      private function §?!H§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§`#3§);
         }
         do
         {
            param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
         }
         while(_loc3_);
         
      }
      
      private function §>S§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§;"&§.indexOf(param1) > -1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this.§;"&§.splice(this.§;"&§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
