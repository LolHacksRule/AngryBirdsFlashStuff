package §_-0EZ§
{
   import §_-AZ§.§_-Vh§;
   import §_-Hb§.§_-P-§;
   import §_-Hb§.§_-a5§;
   import §_-Hb§.§_-ur§;
   import §_-eS§.§_-4E§;
   import §_-py§.§_-bu§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-SI§ extends EventDispatcher
   {
       
      
      protected var §_-WB§:Array;
      
      protected var final:String;
      
      protected var §_-Wu§:Number = -1;
      
      protected var §_-U5§:§_-UE§;
      
      protected var §_-mu§:Vector.<§_-UE§>;
      
      public function §_-SI§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-WB§ = [];
         }
         loop0:
         while(true)
         {
            this.§_-mu§ = new Vector.<§_-UE§>(0);
            do
            {
               super();
               continue loop0;
            }
            while(!(_loc3_ || param1));
            
            return;
         }
      }
      
      public function §_-0-C§(param1:int, param2:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:URLRequest = §_-P-§.§_-0Ak§(this.final);
         if(_loc6_)
         {
            _loc3_.method = URLRequestMethod.POST;
         }
         loop0:
         while(true)
         {
            addr44:
            addr71:
            while(true)
            {
               _loc3_.contentType = "application/json";
               continue loop0;
            }
            var _loc4_:§_-ur§;
            (_loc4_ = new §_-ur§()).dataFormat = URLLoaderDataFormat.TEXT;
            var _loc5_:§_-UE§ = new §_-UE§(param1,param2,_loc4_,_loc3_);
            if(!_loc7_)
            {
               this.§_-Tj§(_loc5_);
               loop3:
               while(true)
               {
                  this.§_-mu§.unshift(_loc5_);
                  while(!this.§_-U5§)
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                     addr121:
                     addr121:
                     if(!_loc7_)
                     {
                        continue loop3;
                     }
                  }
                  return;
               }
            }
            §§goto(addr121);
         }
      }
      
      protected function §_-3s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-U5§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr99:
                        loop5:
                        while(true)
                        {
                           §§push(this.§_-mu§.length == 0);
                           if(_loc2_ && _loc1_)
                           {
                              continue;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop2:
                                 while(true)
                                 {
                                    this.§_-U5§ = this.§_-mu§.pop();
                                    addr57:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop2;
                                       }
                                       if(_loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              return;
                              continue loop5;
                           }
                        }
                     }
                     addr98:
                  }
                  §§goto(addr87);
               }
               §§goto(addr98);
            }
         }
         §§goto(addr99);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.§_-1G§(this.§_-U5§.§_-5T§.data);
         if(!_loc4_)
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
               while(true)
               {
                  if(param1.totalItemCount != this.§_-Wu§)
                  {
                     while(true)
                     {
                        this.§_-Wu§ = param1.totalItemCount;
                        addr141:
                        while(true)
                        {
                           dispatchEvent(new §_-Vh§(§_-Vh§.§_-SO§,this.§_-Wu§,this.§_-Wu§));
                           addr111:
                           while(_loc3_)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§goto(addr19);
                              }
                           }
                           continue loop0;
                        }
                     }
                     addr137:
                  }
                  while(true)
                  {
                     dispatchEvent(new §_-Vh§(§_-Vh§.§_-04P§,this.§_-U5§.§_-1E§,this.§_-U5§.§_-6Q§));
                     loop6:
                     while(_loc3_)
                     {
                        this.§_-sc§(this.§_-U5§);
                        loop7:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              this.§_-U5§ = null;
                              while(this.§_-mu§.length > 0)
                              {
                                 if(_loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop7;
                                    }
                                    continue;
                                 }
                                 addr51:
                                 if(!_loc3_)
                                 {
                                    continue loop6;
                                 }
                                 §§goto(addr53);
                              }
                              addr19:
                              return;
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr141);
                  }
               }
            }
            else
            {
               this.§_-WB§[this.§_-U5§.§_-1E§ + _loc2_] = param1.items[_loc2_];
            }
            §§goto(addr159);
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§_-Wu§;
      }
      
      protected function §_-1G§(param1:Object) : Object
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[2] = null;
            if(_loc4_ || _loc3_)
            {
               addr34:
               var data:Object = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(!(_loc5_ && param1))
               {
                  §§pop().§§slot[2] = §_-bu§.§_-aW§(String(data));
                  §§push(§§newactivation());
               }
            }
            catch(e:Error)
            {
               throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§_-4E§.§_-ju§);
            }
            return §§pop().§§slot[2];
         }
         §§goto(addr34);
      }
      
      public function get data() : Array
      {
         return this.§_-WB§;
      }
      
      public function get §_-Er§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§_-U5§ == null);
         if(_loc1_ || _loc1_)
         {
            return !§§pop();
         }
      }
      
      protected function §_-Tj§(param1:§_-UE§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            param1.§_-5T§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
            while(true)
            {
               param1.§_-5T§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
               loop1:
               while(_loc2_)
               {
                  param1.§_-5T§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
                  while(true)
                  {
                     param1.§_-5T§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
                     loop3:
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           param1.§_-5T§.addEventListener(§_-a5§.§_-Gy§,dispatchEvent);
                           if(_loc2_ || param1)
                           {
                              if(!_loc3_)
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
               }
            }
         }
         §§goto(addr74);
      }
      
      protected function §_-sc§(param1:§_-UE§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.§_-5T§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         }
         loop0:
         do
         {
            param1.§_-5T§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
            while(true)
            {
               param1.§_-5T§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
               while(_loc3_)
               {
                  param1.§_-5T§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
                  do
                  {
                     param1.§_-5T§.removeEventListener(§_-a5§.§_-Gy§,dispatchEvent);
                  }
                  while(!(_loc3_ || this));
                  
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc3_);
         
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§_-U5§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§_-sc§(this.§_-U5§);
                  addr38:
               }
               try
               {
                  this.§_-U5§.§_-5T§.close();
                  if(!(_loc3_ && _loc3_))
                  {
                     addr75:
                     this.§_-U5§ = null;
                  }
               }
               catch(e:Error)
               {
                  §§goto(addr75);
               }
            }
            return;
         }
         §§goto(addr38);
      }
   }
}
