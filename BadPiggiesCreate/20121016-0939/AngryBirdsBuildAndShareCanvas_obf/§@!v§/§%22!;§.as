package §@!v§
{
   import §=!M§.§9!P§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §"!;§ extends §`y§
   {
       
      
      private var §&"3§:Vector.<URLLoader>;
      
      public function §"!;§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§&"3§ = new Vector.<URLLoader>();
         }
         do
         {
            super(param1,param2);
         }
         while(!_loc3_);
         
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:URLLoader = null;
         if(!_loc6_)
         {
            super.sendRequest(param1,param2);
         }
         var _loc3_:URLRequest = null;
         if(_loc5_)
         {
            if(§6!Q§.§7G§ == "Google")
            {
               addr34:
               _loc3_ = new URLRequest(§-"8§() + param1);
               if(!(_loc6_ && param1))
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(!(_loc6_ && param2))
                  {
                     _loc3_.data = this.§'"=§(param2);
                  }
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(_loc5_ || param1)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§9"$§);
               }
               while(true)
               {
                  _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§]Z§);
                  loop10:
                  while(true)
                  {
                     addr95:
                     addr139:
                     while(true)
                     {
                        _loc4_.load(_loc3_);
                        continue loop10;
                     }
                  }
                  if(_loc6_ && this)
                  {
                     continue;
                  }
                  this.§&"3§.push(_loc4_);
                  if(_loc5_ || this)
                  {
                     if(false)
                     {
                        §§goto(addr95);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr99);
               }
            }
            else
            {
               _loc3_ = new URLRequest(§-"8§());
               if(_loc5_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  loop0:
                  while(true)
                  {
                     addr163:
                     while(true)
                     {
                        _loc3_.data = this.§'"=§(param2);
                        continue loop0;
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr163);
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(!_loc6_)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§9"$§);
                  while(true)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§]Z§);
                     while(!(_loc6_ && param2))
                     {
                        loop6:
                        while(true)
                        {
                           _loc4_.load(_loc3_);
                           do
                           {
                              this.§&"3§.push(_loc4_);
                           }
                           while(_loc6_ && this);
                           
                           if(!(_loc6_ && param2))
                           {
                              while(false)
                              {
                                 continue loop6;
                              }
                              addr251:
                              return;
                              addr212:
                           }
                           break;
                        }
                     }
                  }
               }
               §§goto(addr212);
            }
            §§goto(addr251);
         }
         §§goto(addr34);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §0!P§();
            do
            {
               this.§!c§();
            }
            while(!_loc1_);
            
         }
      }
      
      private function §!c§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§&"3§)
         {
            if(!(_loc5_ && this))
            {
               this.§8m§(_loc1_);
               if(!(_loc4_ || this))
               {
                  continue;
               }
            }
            this.§,!l§(_loc1_);
         }
         if(_loc4_)
         {
            this.§&"3§ = new Vector.<URLLoader>();
         }
      }
      
      private function §'"=§(param1:Object) : URLVariables
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
      
      private function §9"$§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(!(_loc5_ && this))
         {
            this.§8m§(param1.target as URLLoader);
            if(_loc6_)
            {
               addr35:
               this.§,!l§(param1.target as URLLoader);
            }
            for(_loc2_ in (param1.target as URLLoader).data)
            {
               if(!(_loc5_ && this))
               {
                  §§push(§9!P§);
                  §§push(_loc2_ + ": ");
                  if(!_loc5_)
                  {
                     §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
                  }
                  §§pop().log(§§pop());
               }
            }
            if(!(_loc5_ && param1))
            {
               §2!i§(§6!N§.§]n§((param1.target as URLLoader).data));
            }
            return;
         }
         §§goto(addr35);
      }
      
      private function §]Z§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§8m§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(_loc4_)
         {
            _loc2_.E = param1.text;
            loop0:
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               loop1:
               while(true)
               {
                  this.§,!l§(param1.target as URLLoader);
                  while(!_loc3_)
                  {
                     §9!P§.log((param1.target as URLLoader).data);
                     loop3:
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           §9!P§.log("[HTTPConnection] ioError: " + param1.text);
                           do
                           {
                              §+""§(§6!N§.§]n§(_loc2_));
                           }
                           while(_loc3_ && _loc2_);
                           
                           if(!_loc3_)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr87);
      }
      
      private function §8m§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            param1.removeEventListener(Event.COMPLETE,this.§9"$§);
         }
         do
         {
            param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§]Z§);
         }
         while(_loc3_ && _loc2_);
         
      }
      
      private function §,!l§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§&"3§.indexOf(param1) > -1)
            {
               if(!_loc2_)
               {
                  this.§&"3§.splice(this.§&"3§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
