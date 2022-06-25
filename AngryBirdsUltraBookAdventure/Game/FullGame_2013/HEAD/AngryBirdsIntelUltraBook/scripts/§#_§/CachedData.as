package §#_§
{
   import §5=§.§8O§;
   import §=!i§.CachedDataEvent;
   import §>o§.§7b§;
   import §^!7§.§+!I§;
   import §^!7§.RetryingURLLoaderErrorEvent;
   import §^!7§.§[!<§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   [Event(name="securityError",type="flash.events.SecurityErrorEvent")]
   [Event(name="ioError",type="flash.events.IOErrorEvent")]
   [Event(name="progress",type="flash.events.ProgressEvent")]
   [Event(name="totalItemCountUpdated",type="com.angrybirds.friendsbar.events.CachedDataEvent")]
   [Event(name="dataLoaded",type="com.angrybirds.friendsbar.events.CachedDataEvent")]
   public class CachedData extends EventDispatcher
   {
       
      
      protected var §+p§:Array;
      
      protected var §`!C§:String;
      
      protected var §,!Q§:Number = -1;
      
      protected var §=!4§:§9k§;
      
      protected var §1I§:Vector.<§9k§>;
      
      public function CachedData(remoteServiceUrl:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§+p§ = [];
                  addr127:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      public function § !i§(itemIndex:int, itemCount:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         if(!(_loc6_ && urlRequest))
         {
            while(true)
            {
               while(!(_loc6_ && itemCount))
               {
                  loop4:
                  while(true)
                  {
                     addr51:
                     loop5:
                     while(_loc7_ || this)
                     {
                        if(!(_loc7_ || itemCount))
                        {
                           continue;
                        }
                        if(!_loc7_)
                        {
                           break loop4;
                        }
                        addr40:
                        if(_loc7_ || urlRequest)
                        {
                           if(false)
                           {
                              continue loop4;
                           }
                           var urlRequest:URLRequest = §+!I§.§[O§(this.§`!C§);
                           if(!_loc6_)
                           {
                              urlRequest.method = URLRequestMethod.POST;
                              urlRequest.contentType = "application/json";
                              addr142:
                              addr147:
                              addr154:
                              if(_loc7_)
                              {
                                 addr125:
                                 if(_loc7_)
                                 {
                                    addr102:
                                    urlRequest.data = §7b§.encode({
                                       "index":itemIndex,
                                       "count":itemCount
                                    });
                                    if(!(_loc6_ && this))
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc7_ || urlRequest)
                                          {
                                             if(!_loc6_)
                                             {
                                                addr100:
                                                if(false)
                                                {
                                                   §§goto(addr102);
                                                }
                                                var urlLoader:§[!<§ = new §[!<§();
                                                if(!(_loc6_ && itemIndex))
                                                {
                                                   addr182:
                                                   urlLoader.dataFormat = URLLoaderDataFormat.TEXT;
                                                   addr190:
                                                   if(_loc7_ || itemCount)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         addr180:
                                                         if(false)
                                                         {
                                                            §§goto(addr182);
                                                         }
                                                         var loadingOperation:§9k§ = new §9k§(itemIndex,itemCount,urlLoader,urlRequest);
                                                         if(_loc7_)
                                                         {
                                                            this.§[?§(loadingOperation);
                                                            this.§1I§.unshift(loadingOperation);
                                                            addr267:
                                                            addr292:
                                                            addr290:
                                                            if(_loc7_ || itemCount)
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  addr248:
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!this.§=!4§)
                                                                     {
                                                                        addr242:
                                                                        if(!_loc6_)
                                                                        {
                                                                           this.§,!8§();
                                                                           addr220:
                                                                           if(!(_loc6_ && itemIndex))
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!(_loc6_ && urlRequest))
                                                                                 {
                                                                                    if(_loc6_ && itemCount)
                                                                                    {
                                                                                       §§goto(addr220);
                                                                                    }
                                                                                    §§goto(addr202);
                                                                                 }
                                                                                 §§goto(addr267);
                                                                              }
                                                                           }
                                                                           §§goto(addr242);
                                                                        }
                                                                        §§goto(addr248);
                                                                     }
                                                                     addr202:
                                                                     return;
                                                                     addr250:
                                                                  }
                                                                  §§goto(addr292);
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                            addr284:
                                                            §§goto(addr284);
                                                         }
                                                         §§goto(addr250);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   addr188:
                                                   §§goto(addr188);
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr142);
                                          }
                                          §§goto(addr125);
                                       }
                                       §§goto(addr102);
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr154);
                              }
                              addr156:
                              §§goto(addr156);
                           }
                           §§goto(addr100);
                        }
                        else
                        {
                           while(true)
                           {
                              break loop5;
                              §§goto(addr40);
                           }
                           addr74:
                        }
                     }
                     while(true)
                     {
                        break loop4;
                        §§goto(addr51);
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      protected function §,!8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_ || _loc1_)
         {
            while(true)
            {
               §§push(this.§=!4§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc1_ || this)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr164:
                           do
                           {
                              §§push(this.§1I§.length == 0);
                              if(_loc1_)
                              {
                                 continue loop3;
                              }
                              addr138:
                           }
                           while(_loc1_ || _loc1_);
                           
                           continue loop2;
                        }
                     }
                     while(!§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           this.§=!4§ = this.§1I§.pop();
                           while(_loc1_)
                           {
                              while(_loc1_ || this)
                              {
                                 continue loop1;
                              }
                           }
                           §§goto(addr164);
                           addr148:
                           while(true)
                           {
                              continue loop6;
                           }
                        }
                     }
                     addr147:
                     return;
                  }
               }
               if(_loc1_ || _loc1_)
               {
                  return;
               }
            }
         }
         §§goto(addr148);
      }
      
      protected function onUrlLoaderComplete(e:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(!(_loc3_ && _loc3_))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  continue loop0;
                  addr35:
               }
            }
         }
         while(false)
         {
            §§goto(addr35);
         }
         var dataObj:Object = this.§]0§(this.§=!4§.urlLoader.data);
         if(!_loc3_)
         {
            while(true)
            {
               this.dataLoaded(dataObj);
               while(!(_loc3_ && dataObj))
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
                  return;
                  addr86:
               }
            }
         }
         §§goto(addr86);
      }
      
      protected function dataLoaded(dataObj:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_ || dataObj)
         {
         }
         loop0:
         while(true)
         {
            addr35:
            addr47:
            while(true)
            {
               continue loop0;
            }
            §§push(0);
            if(_loc4_ || dataObj)
            {
               §§push(int(§§pop()));
            }
            var i:* = §§pop();
            while(true)
            {
               §§push(i);
               if(!(_loc3_ && dataObj))
               {
                  if(_loc4_ || _loc3_)
                  {
                     if(_loc4_ || i)
                     {
                        if(§§pop() >= (dataObj.items as Array).length)
                        {
                           loop4:
                           for(; !_loc3_; if(_loc3_ && _loc3_)
                           {
                              continue;
                           },§§goto(addr110))
                           {
                              while(true)
                              {
                                 if(dataObj.totalItemCount != this.§,!Q§)
                                 {
                                    while(true)
                                    {
                                       while(!(_loc3_ && this))
                                       {
                                          this.§,!Q§ = dataObj.totalItemCount;
                                          while(true)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                dispatchEvent(new CachedDataEvent(CachedDataEvent.TOTAL_ITEM_COUNT_UPDATED,this.§,!Q§,this.§,!Q§));
                                                loop10:
                                                while(true)
                                                {
                                                   addr195:
                                                   while(true)
                                                   {
                                                      addr175:
                                                      while(true)
                                                      {
                                                         dispatchEvent(new CachedDataEvent(CachedDataEvent.DATA_LOADED,this.§=!4§.itemIndex,this.§=!4§.itemCount));
                                                         addr190:
                                                         while(!_loc3_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                             }
                                             if(_loc4_ || _loc3_)
                                             {
                                                continue loop4;
                                             }
                                          }
                                       }
                                       §§goto(addr286);
                                    }
                                 }
                                 §§goto(addr175);
                              }
                           }
                           continue;
                        }
                        §§goto(addr304);
                     }
                  }
                  §§goto(addr280);
               }
               §§goto(addr282);
            }
         }
      }
      
      public function get totalItemCount() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.§,!Q§;
      }
      
      protected function §]0§(data:Object) : Object
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
         }
         if(_loc4_ && _loc3_)
         {
         }
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[2] = null;
            while(true)
            {
               §§push(§§newactivation());
               if(!(_loc5_ || _loc3_))
               {
                  break;
               }
               §§pop().§§slot[1] = data;
               loop2:
               while(true)
               {
                  addr44:
                  while(true)
                  {
                     continue loop2;
                  }
                  try
                  {
                     addr91:
                     §§push(§§newactivation());
                     if(_loc5_ || this)
                     {
                        §§pop().§§slot[2] = §7b§.§#!a§(String(data));
                        if(_loc4_ && this)
                        {
                        }
                        §§push(§§newactivation());
                     }
                  }
                  catch(e:Error)
                  {
                     throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§8O§.§?6§);
                     addr117:
                  }
                  return §§pop().§§slot[2];
               }
            }
         }
      }
      
      public function get data() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.§+p§;
      }
      
      public function get §#]§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         §§push(this.§=!4§ == null);
         if(!(_loc1_ && _loc1_))
         {
            return !§§pop();
         }
      }
      
      protected function §[?§(loadOperation:§9k§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loadOperation.urlLoader.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
                  loop2:
                  while(_loc2_ || _loc3_)
                  {
                     while(true)
                     {
                        loadOperation.urlLoader.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
                        continue loop0;
                        addr63:
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc3_)
                           {
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    addr31:
                                    if(_loc2_ || _loc3_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 loop10:
                                 while(_loc2_ || _loc2_)
                                 {
                                    addr56:
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§goto(addr63);
                                    }
                                    else
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          addr103:
                                          addr119:
                                          while(!_loc3_)
                                          {
                                             loadOperation.urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
                                             while(true)
                                             {
                                                break loop10;
                                             }
                                          }
                                          while(true)
                                          {
                                             loadOperation.urlLoader.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                                 for(; _loc2_; §§goto(addr49))
                                 {
                                    if(!_loc3_)
                                    {
                                       loadOperation.urlLoader.addEventListener(RetryingURLLoaderErrorEvent.§6!O§,dispatchEvent);
                                       continue;
                                    }
                                    §§goto(addr103);
                                 }
                                 addr49:
                                 §§goto(addr100);
                              }
                              return;
                              addr82:
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      protected function §%!5§(loadOperation:§9k§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc2_)
         {
         }
         if(!(_loc3_ && _loc2_))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loadOperation.urlLoader.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
                  addr122:
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  loop9:
                  while(!_loc3_)
                  {
                     loadOperation.urlLoader.removeEventListener(RetryingURLLoaderErrorEvent.§6!O§,dispatchEvent);
                     while(_loc2_)
                     {
                        continue loop0;
                        if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           addr48:
                           if(!(_loc3_ && this))
                           {
                              addr55:
                              if(!(_loc3_ && this))
                              {
                                 return;
                              }
                              while(true)
                              {
                                 loadOperation.urlLoader.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
                                 §§goto(addr55);
                              }
                              addr172:
                           }
                           while(true)
                           {
                              loop5:
                              for(; _loc2_; if(!(_loc2_ || this))
                              {
                                 continue;
                              },§§goto(addr122))
                              {
                                 loadOperation.urlLoader.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
                                 loop6:
                                 while(true)
                                 {
                                    break loop9;
                                    addr108:
                                    while(true)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          continue loop5;
                                       }
                                       continue loop6;
                                    }
                                    continue loop1;
                                 }
                              }
                              addr183:
                              while(true)
                              {
                                 §§goto(addr172);
                              }
                              §§goto(addr48);
                           }
                        }
                        §§goto(addr108);
                     }
                  }
                  while(true)
                  {
                     loadOperation.urlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
                     §§goto(addr108);
                  }
               }
            }
         }
         §§goto(addr183);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && _loc2_))
         {
            loop0:
            while(this.§=!4§)
            {
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        this.§%!5§(this.§=!4§);
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr67);
      }
   }
}
