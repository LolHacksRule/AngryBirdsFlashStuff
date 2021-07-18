package §+!h§
{
   import §0N§.§2!@§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §+!_§ extends §4"2§
   {
       
      
      private var §;y§:Vector.<URLLoader>;
      
      public function §+!_§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§;y§ = new Vector.<URLLoader>();
         }
         do
         {
            super(param1,param2);
         }
         while(_loc4_ && this);
         
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:URLLoader = null;
         if(_loc5_ || param2)
         {
            super.sendRequest(param1,param2);
         }
         var _loc3_:URLRequest = null;
         if(!(_loc6_ && _loc3_))
         {
            if(§#V§.§?B§ != "Google")
            {
               _loc3_ = new URLRequest(§!!,§());
               if(!_loc6_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  loop0:
                  while(true)
                  {
                     addr160:
                     while(true)
                     {
                        _loc3_.data = this.§!!d§(param2);
                        continue loop0;
                     }
                  }
                  addr171:
               }
               while(true)
               {
                  _loc3_.data.C = param1;
                  if(!_loc5_)
                  {
                     continue;
                  }
                  if(!_loc6_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr171);
                  }
                  §§goto(addr160);
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(_loc5_ || param1)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§>!K§);
               }
               loop3:
               while(true)
               {
                  _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§[G§);
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        _loc4_.load(_loc3_);
                        do
                        {
                           this.§;y§.push(_loc4_);
                        }
                        while(!(_loc5_ || this));
                        
                        if(_loc5_)
                        {
                           if(!_loc6_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop3;
                        }
                        continue loop4;
                     }
                     §§goto(addr236);
                  }
               }
            }
         }
         _loc3_ = new URLRequest(§!!,§() + param1);
         if(!(_loc6_ && param1))
         {
            _loc3_.method = URLRequestMethod.POST;
            if(!_loc6_)
            {
               _loc3_.data = this.§!!d§(param2);
            }
         }
         (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
         if(_loc5_)
         {
            _loc4_.addEventListener(Event.COMPLETE,this.§>!K§);
            loop7:
            while(true)
            {
               _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§[G§);
               loop8:
               while(true)
               {
                  addr102:
                  while(true)
                  {
                     _loc4_.load(_loc3_);
                     continue loop8;
                  }
                  continue loop7;
               }
            }
         }
         while(false)
         {
            §§goto(addr102);
         }
         addr236:
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §6"5§();
            do
            {
               this.§9!W§();
            }
            while(!_loc1_);
            
         }
      }
      
      private function §9!W§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:URLLoader = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§;y§)
         {
            if(_loc5_ || this)
            {
               this.§0!u§(_loc1_);
               if(_loc5_ || _loc2_)
               {
                  this.§?"!§(_loc1_);
               }
            }
         }
         if(!(_loc4_ && _loc2_))
         {
            this.§;y§ = new Vector.<URLLoader>();
         }
      }
      
      private function §!!d§(param1:Object) : URLVariables
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
      
      private function §>!K§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(_loc5_)
         {
            this.§0!u§(param1.target as URLLoader);
            if(!_loc6_)
            {
               addr29:
               this.§?"!§(param1.target as URLLoader);
            }
            for(_loc2_ in (param1.target as URLLoader).data)
            {
               if(!_loc6_)
               {
                  §§push(§2!@§);
                  §§push(_loc2_ + ": ");
                  if(_loc5_)
                  {
                     §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
                  }
                  §§pop().log(§§pop());
               }
            }
            if(!_loc6_)
            {
               §=!N§(§&"H§.§6<§((param1.target as URLLoader).data));
            }
            return;
         }
         §§goto(addr29);
      }
      
      private function §[G§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§0!u§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(_loc4_ || _loc2_)
         {
            _loc2_.E = param1.text;
            loop0:
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               while(true)
               {
                  this.§?"!§(param1.target as URLLoader);
                  while(_loc4_)
                  {
                     §2!@§.log((param1.target as URLLoader).data);
                     while(!_loc3_)
                     {
                     }
                     continue loop0;
                     if(_loc4_ || _loc3_)
                     {
                        return;
                        addr71:
                     }
                  }
               }
            }
         }
         while(true)
         {
            §2!@§.log("[HTTPConnection] ioError: " + param1.text);
            while(_loc4_)
            {
               §?g§(§&"H§.§6<§(_loc2_));
               if(_loc3_)
               {
                  continue;
               }
               §§goto(addr64);
            }
            §§goto(addr90);
         }
         §§goto(addr71);
      }
      
      private function §0!u§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§>!K§);
         }
         do
         {
            param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§[G§);
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      private function §?"!§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§;y§.indexOf(param1) > -1)
            {
               if(!_loc3_)
               {
                  this.§;y§.splice(this.§;y§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
