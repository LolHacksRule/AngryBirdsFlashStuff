package §;f§
{
   import §`K§.§ L§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §6w§ extends §00§
   {
       
      
      private var §^!N§:Vector.<URLLoader>;
      
      public function §6w§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§^!N§ = new Vector.<URLLoader>();
            do
            {
               super(param1,param2);
            }
            while(!(_loc3_ || param2));
            
         }
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
         if(!(_loc6_ && param2))
         {
            if(§7P§.§7v§ == "Google")
            {
               addr44:
               _loc3_ = new URLRequest(§`P§() + param1);
               if(_loc5_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  if(_loc5_)
                  {
                     _loc3_.data = this.§5w§(param2);
                  }
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(!_loc6_)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§0!!§);
                  while(true)
                  {
                     _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§'r§);
                     loop9:
                     while(true)
                     {
                        addr90:
                        while(true)
                        {
                           _loc4_.load(_loc3_);
                           continue loop9;
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§^!N§.push(_loc4_);
                  if(_loc5_ || param1)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr94);
               }
            }
            else
            {
               _loc3_ = new URLRequest(§`P§());
               if(!_loc6_)
               {
                  _loc3_.method = URLRequestMethod.POST;
                  loop0:
                  while(true)
                  {
                     addr153:
                     while(true)
                     {
                        _loc3_.data = this.§5w§(param2);
                        continue loop0;
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr153);
               }
               (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               if(_loc5_)
               {
                  _loc4_.addEventListener(Event.COMPLETE,this.§0!!§);
               }
               loop4:
               while(true)
               {
                  _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§'r§);
                  loop5:
                  while(true)
                  {
                     addr204:
                     while(true)
                     {
                        _loc4_.load(_loc3_);
                        continue loop5;
                     }
                     continue loop4;
                  }
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      override public function closeConnection() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §`h§();
            do
            {
               this.§9u§();
            }
            while(_loc1_ && this);
            
         }
      }
      
      private function §9u§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§^!N§)
         {
            if(_loc5_)
            {
               this.§3e§(_loc1_);
               if(_loc5_)
               {
                  this.§!!'§(_loc1_);
               }
            }
         }
         if(_loc5_ || _loc1_)
         {
            this.§^!N§ = new Vector.<URLLoader>();
         }
      }
      
      private function §5w§(param1:Object) : URLVariables
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
      
      private function §0!!§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(!(_loc5_ && param1))
         {
            this.§3e§(param1.target as URLLoader);
            if(_loc6_)
            {
               this.§!!'§(param1.target as URLLoader);
            }
         }
         var _loc3_:int = 0;
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            if(!_loc5_)
            {
               §§push(§ L§);
               §§push(_loc2_ + ": ");
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() + (param1.target as URLLoader).data[_loc2_]);
               }
               §§pop().log(§§pop());
            }
         }
         if(!(_loc5_ && this))
         {
            §#?§(§=!<§.§]D§((param1.target as URLLoader).data));
         }
      }
      
      private function §'r§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§3e§(param1.target as URLLoader);
         }
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         do
         {
            this.§!!'§(param1.target as URLLoader);
            § L§.log((param1.target as URLLoader).data);
            §§push(§ L§);
            §§push("[HTTPConnection] ioError: ");
            if(!_loc3_)
            {
               §§push(§§pop() + param1.text);
            }
            §§pop().log(§§pop());
         }
         while(!(_loc4_ || this));
         
         §>!D§(§=!<§.§]D§(_loc2_));
      }
      
      private function §3e§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            param1.removeEventListener(Event.COMPLETE,this.§0!!§);
         }
         do
         {
            param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§'r§);
         }
         while(_loc2_);
         
      }
      
      private function §!!'§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§^!N§.indexOf(param1) > -1)
            {
               if(_loc2_)
               {
                  addr41:
                  this.§^!N§.splice(this.§^!N§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr41);
      }
   }
}
