package §,@§
{
   import §-^§.§4-§;
   import §-^§.§45§;
   import §-^§.§7!6§;
   import §<-§.§"K§;
   import §@! §.§ !5§;
   import §@!Z§.§,Z§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §]![§ extends EventDispatcher
   {
       
      
      protected var §9%§:Array;
      
      protected var §9!a§:String;
      
      protected var §for §:Number = -1;
      
      protected var §&! §:§;!r§;
      
      protected var §#!N§:Vector.<§;!r§>;
      
      public function §]![§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9%§ = [];
            loop0:
            while(true)
            {
               this.§#!N§ = new Vector.<§;!r§>(0);
               while(true)
               {
                  super();
                  while(!_loc3_)
                  {
                     continue loop0;
                     this.§9!a§ = param1;
                     if(!_loc3_)
                     {
                        return;
                        addr49:
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §=$§(param1:int, param2:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:URLRequest = §7!6§.§7V§(this.§9!a§);
         if(!(_loc6_ && param2))
         {
            _loc3_.method = URLRequestMethod.POST;
            loop0:
            while(true)
            {
               addr50:
               while(true)
               {
                  _loc3_.contentType = "application/json";
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr50);
         }
         var _loc4_:§45§;
         (_loc4_ = new §45§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§;!r§ = new §;!r§(param1,param2,_loc4_,_loc3_);
         if(!(_loc6_ && _loc3_))
         {
            this.§0!O§(_loc5_);
            while(true)
            {
               this.§#!N§.unshift(_loc5_);
               addr130:
               if(_loc6_ && param2)
               {
                  continue;
               }
               §§goto(addr101);
            }
         }
         while(!this.§&! §)
         {
            if(!_loc6_)
            {
               this.§=b§();
            }
            if(!(_loc7_ || param1))
            {
               continue;
            }
            §§goto(addr130);
         }
         addr101:
      }
      
      protected function §=b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§&! §);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_ || this)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr114:
                        loop6:
                        while(true)
                        {
                           §§push(this.§#!N§.length == 0);
                           if(_loc1_ || _loc1_)
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc1_ || this)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(!(_loc1_ || this))
                                       {
                                          continue loop6;
                                       }
                                       addr42:
                                       while(!(_loc2_ && this))
                                       {
                                          continue loop0;
                                       }
                                    }
                                    continue loop6;
                                 }
                                 while(true)
                                 {
                                    this.§&! § = this.§#!N§.pop();
                                    §§goto(addr42);
                                 }
                                 continue loop6;
                              }
                              return;
                              addr73:
                           }
                        }
                     }
                     addr113:
                  }
                  §§goto(addr73);
               }
               §§goto(addr113);
            }
         }
         §§goto(addr114);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = this.§ else§(this.§&! §.§[!,§.data);
         if(!(_loc3_ && _loc2_))
         {
            this.dataLoaded(_loc2_);
         }
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= (param1.items as Array).length)
            {
               loop1:
               while(true)
               {
                  if(param1.totalItemCount != this.§for §)
                  {
                     loop2:
                     while(true)
                     {
                        this.§for § = param1.totalItemCount;
                        loop3:
                        while(true)
                        {
                           dispatchEvent(new § !5§(§ !5§.§7s§,this.§for §,this.§for §));
                           while(!(_loc4_ && _loc3_))
                           {
                              addr54:
                              if(_loc4_ && this)
                              {
                                 continue;
                              }
                              if(_loc4_)
                              {
                                 continue loop0;
                              }
                              if(this.§#!N§.length > 0)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          loop7:
                                          while(!(_loc4_ && this))
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   this.§&! § = null;
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§goto(addr54);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§1a§(this.§&! §);
                                                            continue loop7;
                                                         }
                                                         addr169:
                                                         addr104:
                                                      }
                                                   }
                                                   addr19:
                                                   return;
                                                   addr47:
                                                }
                                                §§goto(addr169);
                                                _loc2_++;
                                                continue loop0;
                                             }
                                             continue loop1;
                                          }
                                          continue loop3;
                                       }
                                       this.§=b§();
                                       addr42:
                                       §§goto(addr19);
                                    }
                                    §§goto(addr47);
                                 }
                                 §§goto(addr42);
                              }
                              §§goto(addr19);
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(true)
                  {
                     dispatchEvent(new § !5§(§ !5§.§%"!§,this.§&! §.§2!W§,this.§&! §.§ !#§));
                     §§goto(addr104);
                  }
               }
            }
            else
            {
               this.§9%§[this.§&! §.§2!W§ + _loc2_] = param1.items[_loc2_];
            }
            §§goto(addr169);
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§for §;
      }
      
      protected function § else§(param1:Object) : Object
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§pop().§§slot[2] = null;
            if(!_loc4_)
            {
               addr30:
               var data:Object = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(_loc5_)
               {
                  §§pop().§§slot[2] = §,Z§.§'o§(String(data));
                  §§push(§§newactivation());
               }
            }
            catch(e:Error)
            {
               throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§"K§.§6#§);
            }
            return §§pop().§§slot[2];
         }
         §§goto(addr30);
      }
      
      public function get data() : Array
      {
         return this.§9%§;
      }
      
      public function get §6;§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§&! § == null);
         if(_loc2_ || _loc2_)
         {
            return !§§pop();
         }
      }
      
      protected function §0!O§(param1:§;!r§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.§[!,§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
            while(true)
            {
               param1.§[!,§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
               §§goto(addr87);
            }
         }
         addr87:
         while(true)
         {
            param1.§[!,§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
            do
            {
               param1.§[!,§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
               do
               {
                  param1.§[!,§.addEventListener(§4-§.§4!m§,dispatchEvent);
               }
               while(_loc3_);
               
            }
            while(_loc3_ && _loc3_);
            
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §1a§(param1:§;!r§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.§[!,§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         }
         do
         {
            param1.§[!,§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
            do
            {
               param1.§[!,§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
               do
               {
                  param1.§[!,§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
                  do
                  {
                     param1.§[!,§.removeEventListener(§4-§.§4!m§,dispatchEvent);
                  }
                  while(!(_loc3_ || _loc3_));
                  
               }
               while(!_loc3_);
               
            }
            while(_loc2_ && _loc3_);
            
         }
         while(!_loc3_);
         
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§&! §)
            {
               if(!_loc2_)
               {
                  this.§1a§(this.§&! §);
                  try
                  {
                     addr48:
                     this.§&! §.§[!,§.close();
                     if(!_loc2_)
                     {
                        addr66:
                        this.§&! § = null;
                     }
                  }
                  catch(e:Error)
                  {
                     §§goto(addr66);
                  }
               }
               §§goto(addr48);
            }
            return;
         }
         §§goto(addr48);
      }
   }
}
