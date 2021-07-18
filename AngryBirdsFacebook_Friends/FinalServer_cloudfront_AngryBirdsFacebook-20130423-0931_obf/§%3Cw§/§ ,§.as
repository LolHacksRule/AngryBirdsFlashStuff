package §<w§
{
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §9@§.§1!j§;
   import §;!d§.§+W§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class § ,§ extends EventDispatcher
   {
       
      
      protected var §+]§:Array;
      
      protected var §'!0§:String;
      
      protected var §7"Y§:Number = -1;
      
      protected var §83§:§@L§;
      
      protected var §^U§:Vector.<§@L§>;
      
      public function § ,§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+]§ = [];
         }
         while(true)
         {
            this.§^U§ = new Vector.<§@L§>(0);
            while(_loc2_ || this)
            {
               super();
               while(!_loc3_)
               {
                  this.§'!0§ = param1;
                  if(_loc2_ || this)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §`!I§(param1:int, param2:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:URLRequest = §9!7§.§,!l§(this.§'!0§);
         if(!(_loc7_ && param2))
         {
            _loc3_.method = URLRequestMethod.POST;
            while(true)
            {
               loop1:
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
                  while(!(_loc6_ || param2));
                  
                  if(!(_loc6_ || param1))
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc4_:§3d§;
                  (_loc4_ = new §3d§()).dataFormat = URLLoaderDataFormat.TEXT;
                  var _loc5_:§@L§ = new §@L§(param1,param2,_loc4_,_loc3_);
                  if(_loc6_)
                  {
                     this.§6"%§(_loc5_);
                  }
                  loop4:
                  while(true)
                  {
                     this.§^U§.unshift(_loc5_);
                     while(!this.§83§)
                     {
                        if(!_loc7_)
                        {
                           this.§']§();
                        }
                        if(!(_loc7_ && param1))
                        {
                           if(!_loc7_)
                           {
                              break;
                           }
                           continue loop4;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      protected function §']§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§83§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     addr98:
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr99:
                        while(true)
                        {
                           §§push(this.§^U§.length == 0);
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop5;
                        }
                     }
                     addr98:
                  }
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           this.§83§ = this.§^U§.pop();
                           addr72:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              if(_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                           }
                           continue loop1;
                        }
                     }
                     return;
                  }
               }
               §§goto(addr98);
            }
            addr93:
         }
         while(true)
         {
            §§push(this.§83§);
            if(_loc1_ || _loc1_)
            {
               §§pop().§;"5§.load(this.§83§.§9!X§);
               if(_loc1_)
               {
                  break;
               }
               §§goto(addr72);
            }
            else
            {
               §§goto(addr93);
            }
         }
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.§`"5§(this.§83§.§;"5§.data);
         if(_loc3_)
         {
            this.dataLoaded(_loc2_);
         }
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= (param1.items as Array).length)
            {
               loop1:
               while(true)
               {
                  if(param1.totalItemCount != this.§7"Y§)
                  {
                     loop2:
                     while(true)
                     {
                        this.§7"Y§ = param1.totalItemCount;
                        while(true)
                        {
                           dispatchEvent(new §+W§(§+W§.§&o§,this.§7"Y§,this.§7"Y§));
                           addr105:
                           while(!_loc3_)
                           {
                           }
                        }
                        loop7:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 this.§83§ = null;
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc4_ || _loc2_)
                                       {
                                          if(this.§^U§.length > 0)
                                          {
                                             if(_loc4_)
                                             {
                                                continue;
                                             }
                                             addr43:
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             §§goto(addr105);
                                          }
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    addr93:
                                    while(true)
                                    {
                                       this.§?"4§(this.§83§);
                                       continue loop7;
                                    }
                                 }
                                 return;
                              }
                              break;
                           }
                           continue loop2;
                        }
                        addr138:
                        if(!(_loc4_ || param1))
                        {
                           while(true)
                           {
                              _loc2_++;
                              §§goto(addr138);
                           }
                           addr160:
                        }
                        continue loop0;
                     }
                  }
                  while(true)
                  {
                     dispatchEvent(new §+W§(§+W§.§,!p§,this.§83§.§7?§,this.§83§.§@"C§));
                     §§goto(addr93);
                  }
               }
            }
            else
            {
               this.§+]§[this.§83§.§7?§ + _loc2_] = param1.items[_loc2_];
            }
            §§goto(addr160);
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§7"Y§;
      }
      
      protected function §`"5§(param1:Object) : Object
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_ || _loc3_)
         {
            §§pop().§§slot[2] = null;
            if(_loc4_)
            {
               addr44:
               var data:Object = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(_loc4_)
               {
                  §§pop().§§slot[2] = JSON.parse(String(data));
                  §§push(§§newactivation());
               }
            }
            catch(e:Error)
            {
               throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§1!j§.§%e§);
            }
            return §§pop().§§slot[2];
         }
         §§goto(addr44);
      }
      
      public function get data() : Array
      {
         return this.§+]§;
      }
      
      public function get §each §() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§83§ == null);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      protected function §6"%§(param1:§@L§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            param1.§;"5§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         }
         loop0:
         while(true)
         {
            param1.§;"5§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
            while(true)
            {
               param1.§;"5§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
               while(_loc2_)
               {
                  if(!_loc3_)
                  {
                     param1.§;"5§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
                     do
                     {
                        param1.§;"5§.addEventListener(§9G§.§33§,dispatchEvent);
                     }
                     while(!(_loc2_ || _loc2_));
                     
                     if(!(_loc3_ && this))
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      protected function §?"4§(param1:§@L§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            param1.§;"5§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
            while(true)
            {
               param1.§;"5§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
               while(_loc2_ || this)
               {
                  param1.§;"5§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
                  do
                  {
                     param1.§;"5§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
                     do
                     {
                        param1.§;"5§.removeEventListener(§9G§.§33§,dispatchEvent);
                     }
                     while(!(_loc2_ || _loc2_));
                     
                  }
                  while(!(_loc2_ || param1));
                  
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  return;
                  addr66:
               }
            }
         }
         §§goto(addr66);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§83§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§?"4§(this.§83§);
                  try
                  {
                     addr58:
                     this.§83§.§;"5§.close();
                     if(_loc3_ || this)
                     {
                        addr81:
                        this.§83§ = null;
                     }
                  }
                  catch(e:Error)
                  {
                     §§goto(addr81);
                  }
               }
               §§goto(addr58);
            }
            return;
         }
         §§goto(addr58);
      }
   }
}
