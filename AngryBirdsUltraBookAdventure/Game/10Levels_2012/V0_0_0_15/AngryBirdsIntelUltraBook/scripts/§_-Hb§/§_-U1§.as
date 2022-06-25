package §_-Hb§
{
   import §_-0BH§.§_-FK§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §_-U1§ extends §_-9V§
   {
       
      
      private var §_-gr§:Vector.<URLLoader>;
      
      public function §_-U1§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§_-gr§ = new Vector.<URLLoader>();
         }
         do
         {
            super(param1,param2);
         }
         while(_loc4_);
         
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
         if(!(_loc5_ && _loc3_))
         {
            if(§_-ok§.§_-FF§ == "Google")
            {
               addr40:
               _loc3_ = new URLRequest(§_-Os§() + param1);
               if(!(_loc5_ && param2))
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(_loc6_ || param1)
                  {
                     _loc3_.data = this.§_-34§(param2);
                  }
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(!_loc5_)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§_-ua§);
                  while(true)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-ba§);
                     addr127:
                     loop10:
                     while(true)
                     {
                        addr98:
                        while(true)
                        {
                           _loc4_.load(_loc3_);
                           continue loop10;
                        }
                     }
                  }
                  addr134:
               }
               while(true)
               {
                  this.§_-gr§.push(_loc4_);
                  if(_loc6_ || param1)
                  {
                     if(!_loc5_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr98);
                     }
                     else
                     {
                        §§goto(addr134);
                     }
                  }
                  §§goto(addr102);
               }
            }
            else
            {
               _loc3_ = new URLRequest(§_-Os§());
               if(_loc6_ || this)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  loop0:
                  while(true)
                  {
                     addr164:
                     while(true)
                     {
                        _loc3_.data = this.§_-34§(param2);
                        while(true)
                        {
                           if(_loc6_)
                           {
                              _loc3_.data.C = param1;
                              if(!(_loc5_ && param2))
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr164);
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(_loc6_ || param2)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§_-ua§);
                  while(true)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-ba§);
                     loop5:
                     for(; !(_loc5_ && param1); do
                     {
                        _loc4_.load(_loc3_);
                        do
                        {
                           this.§_-gr§.push(_loc4_);
                        }
                        while(_loc5_ && param1);
                        
                        if(_loc6_ || this)
                        {
                           continue;
                        }
                        continue loop5;
                     }
                     while(false);
                     ,return)
                     {
                        while(true)
                        {
                           continue loop5;
                        }
                     }
                  }
               }
               §§goto(addr244);
            }
            §§goto(addr252);
         }
         §§goto(addr40);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §_-03a§();
         }
         do
         {
            this.§_-rt§();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      private function §_-rt§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:URLLoader = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§_-gr§)
         {
            if(!(_loc4_ && _loc2_))
            {
               this.§_-uT§(_loc1_);
               if(_loc5_ || this)
               {
                  this.§_-GS§(_loc1_);
               }
            }
         }
         if(!_loc4_)
         {
            this.§_-gr§ = new Vector.<URLLoader>();
         }
      }
      
      private function §_-34§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(_loc7_)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private function §_-ua§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_)
         {
            this.§_-uT§(param1.target as URLLoader);
            if(_loc6_ || this)
            {
               this.§_-GS§(param1.target as URLLoader);
            }
         }
         var _loc3_:int = 0;
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            if(!(_loc5_ && this))
            {
               §§push(§_-FK§);
               §§push(_loc2_ + ": ");
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
               }
               §§pop().log(§§pop());
            }
         }
         if(!(_loc5_ && _loc3_))
         {
            §_-DD§(§_-0DQ§.§_-Rw§((param1.target as URLLoader).data));
         }
      }
      
      private function §_-ba§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§_-uT§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(_loc3_)
         {
            _loc2_.E = param1.text;
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               addr118:
               addr77:
               while(true)
               {
                  this.§_-GS§(param1.target as URLLoader);
               }
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               §_-K3§(§_-0DQ§.§_-Rw§(_loc2_));
               if(_loc3_)
               {
                  if(_loc4_)
                  {
                     §§goto(addr118);
                  }
                  return;
                  addr60:
               }
               loop4:
               while(true)
               {
                  if(!(_loc4_ && param1))
                  {
                     §§goto(addr77);
                  }
                  else
                  {
                     loop3:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           §§push(§_-FK§);
                           §§push("[HTTPConnection] ioError: ");
                           if(!_loc4_)
                           {
                              §§push(§§pop() + param1.text);
                           }
                           §§pop().log(§§pop());
                           continue loop4;
                        }
                        addr113:
                        while(true)
                        {
                           §_-FK§.log((param1.target as URLLoader).data);
                           continue loop3;
                        }
                        §§goto(addr60);
                     }
                  }
               }
               addr94:
               §§goto(addr118);
            }
         }
         §§goto(addr113);
      }
      
      private function §_-uT§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§_-ua§);
            do
            {
               param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-ba§);
            }
            while(_loc2_);
            
         }
      }
      
      private function §_-GS§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§_-gr§.indexOf(param1) > -1)
            {
               if(!_loc2_)
               {
                  this.§_-gr§.splice(this.§_-gr§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
