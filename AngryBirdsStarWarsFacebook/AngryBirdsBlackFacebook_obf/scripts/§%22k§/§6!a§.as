package §"k§
{
   import §1!i§.§8"x§;
   import §]Q§.§2T§;
   import §`!o§.§##[§;
   import §`!o§.§2,§;
   import §`!o§.§<9§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §6!a§ extends EventDispatcher
   {
       
      
      protected var §%4§:Array;
      
      protected var §&"7§:String;
      
      protected var §>##§:Number = -1;
      
      protected var §4!0§:§6N§;
      
      protected var §4"_§:Vector.<§6N§>;
      
      public function §6!a§(param1:String, param2:Array = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§%4§ = [];
            loop0:
            while(true)
            {
               this.§4"_§ = new Vector.<§6N§>(0);
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     this.§&"7§ = param1;
                     addr74:
                     while(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           if(param2 == null)
                           {
                              return;
                           }
                           addr19:
                           continue;
                        }
                        continue loop0;
                     }
                     continue loop1;
                     addr54:
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     §§goto(addr19);
                  }
               }
            }
         }
         while(true)
         {
            this.§%4§ = param2;
            do
            {
               this.§>##§ = param2.length;
            }
            while(_loc4_);
            
            if(!(_loc3_ || param1))
            {
               continue;
            }
            if(!(_loc4_ && param2))
            {
               §§goto(addr54);
            }
            §§goto(addr74);
         }
      }
      
      public function loadItems(param1:int, param2:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:URLRequest = §<9§.§""I§(this.§&"7§);
         if(!(_loc6_ && this))
         {
            _loc3_.method = URLRequestMethod.POST;
         }
         while(true)
         {
            while(true)
            {
               _loc3_.contentType = "application/json";
               do
               {
                  _loc3_.data = JSON.stringify({
                     "index":param1,
                     "count":param2
                  });
               }
               while(!(_loc7_ || _loc3_));
               
               if(_loc6_ && _loc3_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc4_:URLLoader;
               (_loc4_ = this.createURLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
               var _loc5_:§6N§ = new §6N§(param1,param2,_loc4_,_loc3_);
               if(!_loc6_)
               {
                  this.§!!r§(_loc5_);
                  loop3:
                  while(true)
                  {
                     this.§4"_§.unshift(_loc5_);
                     while(true)
                     {
                        if(!(_loc6_ && param2))
                        {
                           if(!this.§4!0§)
                           {
                              if(_loc7_)
                              {
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                                 this.§+"i§();
                              }
                              addr110:
                              break;
                           }
                           break;
                        }
                        continue loop3;
                     }
                     return;
                  }
               }
               §§goto(addr110);
            }
         }
      }
      
      protected function createURLLoader() : URLLoader
      {
         return new §2,§();
      }
      
      protected function §+"i§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§4!0§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr104:
                        do
                        {
                           §§push(this.§4"_§.length == 0);
                           if(_loc2_ && _loc2_)
                           {
                              continue loop2;
                           }
                        }
                        while(!_loc2_);
                        
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        do
                        {
                           this.§4!0§ = this.§4"_§.pop();
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                           continue loop0;
                        }
                        while(!(_loc1_ || this));
                        
                        return;
                        addr57:
                     }
                     if(_loc1_)
                     {
                        break;
                     }
                     §§goto(addr104);
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      protected function §""#§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.parseResponse(this.§4!0§.§@"<§.data);
         if(_loc3_ || param1)
         {
            this.dataLoaded(_loc2_);
         }
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= (param1.items as Array).length)
            {
               loop1:
               while(param1.totalItemCount != this.§>##§)
               {
                  loop2:
                  while(_loc5_)
                  {
                     this.§>##§ = param1.totalItemCount;
                     while(_loc5_ || this)
                     {
                        dispatchEvent(new §2T§(§2T§.§&"g§,this.§>##§,this.§>##§));
                        if(!_loc4_)
                        {
                           if(!(_loc4_ && param1))
                           {
                              if(!_loc4_)
                              {
                                 if(true)
                                 {
                                    break loop1;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     _loc2_++;
                     break;
                  }
                  continue loop0;
               }
               var _loc3_:§6N§ = this.§4!0§;
               if(_loc5_ || param1)
               {
                  this.§;"%§(this.§4!0§);
                  while(true)
                  {
                     this.§4!0§ = null;
                     loop5:
                     for(; !_loc4_; while(!(_loc4_ && param1))
                     {
                        this.§+"i§();
                        §§goto(addr146);
                     })
                     {
                        if(this.§4"_§.length > 0)
                        {
                           continue;
                        }
                        loop8:
                        while(true)
                        {
                           dispatchEvent(new §2T§(§2T§.§-D§,_loc3_.§9#U§,_loc3_.§3!D§));
                           if(!_loc4_)
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                              continue loop5;
                           }
                           addr146:
                           while(true)
                           {
                              continue loop8;
                           }
                        }
                     }
                  }
               }
               return;
            }
            this.§%4§[this.§4!0§.§9#U§ + _loc2_] = param1.items[_loc2_];
            §§goto(addr98);
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§>##§;
      }
      
      protected function parseResponse(param1:Object) : Object
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_ || _loc3_)
         {
            §§pop().§§slot[2] = null;
            if(!_loc5_)
            {
               addr34:
               var data:Object = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(_loc4_ || _loc3_)
               {
                  §§pop().§§slot[2] = JSON.parse(String(data));
                  §§push(§§newactivation());
               }
            }
            catch(e:Error)
            {
               throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§8"x§.§`4§);
            }
            return §§pop().§§slot[2];
         }
         §§goto(addr34);
      }
      
      public function get data() : Array
      {
         return this.§%4§;
      }
      
      public function get isLoading() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§4!0§ == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      protected function §!!r§(param1:§6N§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            param1.§@"<§.addEventListener(Event.COMPLETE,this.§""#§);
            while(true)
            {
               param1.§@"<§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
               loop1:
               while(true)
               {
                  param1.§@"<§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
                  while(true)
                  {
                     param1.§@"<§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
                     while(_loc2_ || _loc3_)
                     {
                        continue loop1;
                        param1.§@"<§.addEventListener(§##[§.§>g§,dispatchEvent);
                        if(_loc2_)
                        {
                           return;
                           addr37:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      protected function §;"%§(param1:§6N§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.§@"<§.removeEventListener(Event.COMPLETE,this.§""#§);
            loop0:
            while(true)
            {
               param1.§@"<§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
               while(true)
               {
                  param1.§@"<§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
                  loop2:
                  while(_loc3_ || _loc2_)
                  {
                     if(_loc3_)
                     {
                        while(true)
                        {
                           param1.§@"<§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
                           do
                           {
                              param1.§@"<§.removeEventListener(§##[§.§>g§,dispatchEvent);
                           }
                           while(!(_loc3_ || this));
                           
                           if(!(_loc2_ && param1))
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§4!0§)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§;"%§(this.§4!0§);
                  try
                  {
                     addr43:
                     this.§4!0§.§@"<§.close();
                     if(!_loc2_)
                     {
                        addr71:
                        this.§4!0§ = null;
                     }
                  }
                  catch(e:Error)
                  {
                     §§goto(addr71);
                  }
               }
               §§goto(addr43);
            }
            return;
         }
         §§goto(addr43);
      }
   }
}
