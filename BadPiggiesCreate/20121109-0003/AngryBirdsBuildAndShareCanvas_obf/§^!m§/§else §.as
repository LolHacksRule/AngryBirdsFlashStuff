package §^!m§
{
   import §6]§.§,"0§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §else § extends §5+§
   {
       
      
      private var §@!,§:Vector.<URLLoader>;
      
      public function §else §(param1:String, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§@!,§ = new Vector.<URLLoader>();
         }
         do
         {
            super(param1,param2);
         }
         while(!_loc4_);
         
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
         if(_loc5_ || _loc3_)
         {
            if(§6§.§&!2§ != "Google")
            {
               _loc3_ = new URLRequest(§8"&§());
               if(_loc5_ || param2)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  loop0:
                  while(true)
                  {
                     addr168:
                     while(true)
                     {
                        _loc3_.data = this.§7`§(param2);
                        while(true)
                        {
                           if(_loc5_)
                           {
                              _loc3_.data.C = param1;
                              if(!_loc6_)
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
                  §§goto(addr168);
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(_loc5_)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§<n§);
               }
               loop4:
               while(true)
               {
                  _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.set);
                  while(true)
                  {
                     while(true)
                     {
                        _loc4_.load(_loc3_);
                        do
                        {
                           this.§@!,§.push(_loc4_);
                        }
                        while(!_loc5_);
                        
                        if(!(_loc5_ || param1))
                        {
                           break;
                        }
                        if(_loc5_)
                        {
                           if(true)
                           {
                              return;
                           }
                           addr241:
                           continue;
                        }
                        continue loop4;
                     }
                  }
               }
            }
         }
         _loc3_ = new URLRequest(§8"&§() + param1);
         if(!(_loc6_ && param2))
         {
            _loc3_.method = URLRequestMethod.POST;
            if(_loc5_ || param1)
            {
               addr65:
               _loc3_.data = this.§7`§(param2);
            }
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            if(!(_loc6_ && _loc3_))
            {
               _loc4_.addEventListener(Event.COMPLETE,this.§<n§);
               while(true)
               {
                  _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.set);
                  loop11:
                  while(!(_loc6_ && this))
                  {
                     this.§@!,§.push(_loc4_);
                     if(_loc6_ && param2)
                     {
                        continue;
                     }
                     addr98:
                     if(_loc5_ || _loc3_)
                     {
                        if(false)
                        {
                           while(true)
                           {
                              _loc4_.load(_loc3_);
                              continue loop11;
                           }
                           addr144:
                           addr107:
                        }
                        else
                        {
                           §§goto(addr144);
                        }
                        §§goto(addr241);
                     }
                     else
                     {
                        while(true)
                        {
                           §§goto(addr98);
                        }
                        addr136:
                     }
                     §§goto(addr107);
                  }
               }
            }
            §§goto(addr136);
         }
         §§goto(addr65);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §5!K§();
         }
         do
         {
            this.§>G§();
         }
         while(_loc2_ && _loc1_);
         
      }
      
      private function §>G§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§@!,§)
         {
            if(!_loc5_)
            {
               this.§1!7§(_loc1_);
               if(!(_loc5_ && _loc1_))
               {
                  this.§9!d§(_loc1_);
               }
            }
         }
         if(!_loc5_)
         {
            this.§@!,§ = new Vector.<URLLoader>();
         }
      }
      
      private function §7`§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(_loc6_ || param1)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private function §<n§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(!(_loc5_ && _loc2_))
         {
            this.§1!7§(param1.target as URLLoader);
            if(!(_loc5_ && _loc3_))
            {
               addr40:
               this.§9!d§(param1.target as URLLoader);
            }
            for(_loc2_ in (param1.target as URLLoader).data)
            {
               if(!_loc5_)
               {
                  §§push(§,"0§);
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
               §each §(§3! §.§ #§((param1.target as URLLoader).data));
            }
            return;
         }
         §§goto(addr40);
      }
      
      private function set(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§1!7§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         if(_loc3_)
         {
            _loc2_.E = param1.text;
            loop0:
            while(true)
            {
               _loc2_.C = "serverConnectionError";
               while(true)
               {
                  this.§9!d§(param1.target as URLLoader);
                  continue loop0;
                  addr89:
                  loop3:
                  while(_loc3_ || _loc3_)
                  {
                     §,"0§.log("[HTTPConnection] ioError: " + param1.text);
                     while(true)
                     {
                        §'y§(§3! §.§ #§(_loc2_));
                        if(_loc3_ || _loc3_)
                        {
                           if(!(_loc4_ && param1))
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                              addr55:
                           }
                           continue loop3;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      private function §1!7§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§<n§);
            do
            {
               param1.removeEventListener(IOErrorEvent.IO_ERROR,this.set);
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      private function §9!d§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§@!,§.indexOf(param1) > -1)
            {
               if(!_loc2_)
               {
                  addr52:
                  this.§@!,§.splice(this.§@!,§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr52);
      }
   }
}
