package §1!`§
{
   import each.§!!'§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §,!5§ extends § !a§
   {
       
      
      private var §=!'§:Vector.<URLLoader>;
      
      public function §,!5§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§=!'§ = new Vector.<URLLoader>();
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
         if(_loc6_ || param1)
         {
            super.sendRequest(param1,param2);
         }
         var _loc3_:URLRequest = null;
         if(!_loc5_)
         {
            if(§8!s§.§3!t§ == "Google")
            {
               addr40:
               _loc3_ = new URLRequest(§=U§() + param1);
               if(!(_loc5_ && this))
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(_loc6_ || _loc3_)
                  {
                     addr66:
                     _loc3_.data = this.§<!H§(param2);
                  }
                  (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
                  if(!(_loc5_ && _loc3_))
                  {
                     _loc4_.addEventListener(Event.COMPLETE,this.§!F§);
                     while(true)
                     {
                        _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§=o§);
                        loop11:
                        while(!(_loc5_ && this))
                        {
                           this.§=!'§.push(_loc4_);
                           if(!(_loc6_ || param1))
                           {
                              continue;
                           }
                           if(!_loc5_)
                           {
                              if(false)
                              {
                                 while(true)
                                 {
                                    _loc4_.load(_loc3_);
                                    continue loop11;
                                 }
                                 addr140:
                                 addr103:
                              }
                              else
                              {
                                 §§goto(addr140);
                              }
                              §§goto(addr237);
                           }
                           else
                           {
                              addr132:
                           }
                           while(true)
                           {
                           }
                           §§goto(addr103);
                        }
                     }
                  }
                  §§goto(addr132);
               }
               §§goto(addr66);
            }
            else
            {
               _loc3_ = new URLRequest(§=U§());
               if(_loc6_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  loop0:
                  while(true)
                  {
                     addr164:
                     while(true)
                     {
                        _loc3_.data = this.§<!H§(param2);
                        continue loop0;
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr164);
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(_loc6_)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§!F§);
                  while(true)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§=o§);
                     addr217:
                     loop5:
                     while(_loc6_)
                     {
                        while(true)
                        {
                           _loc4_.load(_loc3_);
                           continue loop5;
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§=!'§.push(_loc4_);
                  if(_loc5_)
                  {
                     continue;
                  }
                  if(_loc6_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr217);
                  }
                  §§goto(addr205);
               }
            }
            addr237:
            return;
         }
         §§goto(addr40);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §4f§();
         }
         do
         {
            this.§+!l§();
         }
         while(!_loc1_);
         
      }
      
      private function §+!l§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§=!'§)
         {
            if(!_loc5_)
            {
               this.§"!m§(_loc1_);
               if(_loc4_)
               {
                  this.§<;§(_loc1_);
               }
            }
         }
         if(_loc4_ || _loc1_)
         {
            this.§=!'§ = new Vector.<URLLoader>();
         }
      }
      
      private function §<!H§(param1:Object) : URLVariables
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
      
      private function §!F§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(!_loc6_)
         {
            this.§"!m§(param1.target as URLLoader);
            if(!_loc6_)
            {
               addr29:
               this.§<;§(param1.target as URLLoader);
            }
            var _loc3_:int = 0;
            for(_loc2_ in (param1.target as URLLoader).data)
            {
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§!!'§);
                  §§push(_loc2_ + ": ");
                  if(!_loc6_)
                  {
                     §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
                  }
                  §§pop().log(§§pop());
               }
            }
            if(_loc5_)
            {
               §!8§(§#i§.§>"$§((param1.target as URLLoader).data));
            }
            return;
         }
         §§goto(addr29);
      }
      
      private function §=o§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§"!m§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(!(_loc4_ && _loc2_))
         {
            _loc2_.E = param1.text;
            loop0:
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               loop1:
               while(true)
               {
                  this.§<;§(param1.target as URLLoader);
                  loop2:
                  while(_loc3_)
                  {
                     §!!'§.log((param1.target as URLLoader).data);
                     while(true)
                     {
                        §!!'§.log("[HTTPConnection] ioError: " + param1.text);
                        do
                        {
                           §7[§(§#i§.§>"$§(_loc2_));
                        }
                        while(!(_loc3_ || this));
                        
                        if(!(_loc4_ && param1))
                        {
                           if(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr96);
      }
      
      private function §"!m§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§!F§);
            do
            {
               param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§=o§);
            }
            while(_loc2_);
            
         }
      }
      
      private function §<;§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§=!'§.indexOf(param1) > -1)
            {
               if(_loc2_ || param1)
               {
                  this.§=!'§.splice(this.§=!'§.indexOf(param1),1);
               }
            }
         }
      }
   }
}
