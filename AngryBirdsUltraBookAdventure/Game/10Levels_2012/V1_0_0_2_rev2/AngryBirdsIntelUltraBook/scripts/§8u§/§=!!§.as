package §8u§
{
   import §0X§.§%'§;
   import §;!5§.§ v§;
   import §;!5§.§!e§;
   import §;!5§.§3!^§;
   import §;<§.§4!d§;
   import §<e§.§;!L§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §=!!§ extends EventDispatcher
   {
       
      
      protected var §++§:Array;
      
      protected var §1x§:String;
      
      protected var §3R§:Number = -1;
      
      protected var §8H§:§ ! §;
      
      protected var §4v§:Vector.<§ ! §>;
      
      public function §=!!§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§++§ = [];
            loop0:
            while(true)
            {
               this.§4v§ = new Vector.<§ ! §>(0);
               addr77:
               while(true)
               {
                  super();
                  continue loop0;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §'!w§(param1:int, param2:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:URLRequest = § v§.§<N§(this.§1x§);
         if(!_loc7_)
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
            addr93:
            var _loc4_:§!e§;
            (_loc4_ = new §!e§()).dataFormat = URLLoaderDataFormat.TEXT;
            var _loc5_:§ ! § = new § ! §(param1,param2,_loc4_,_loc3_);
            if(!(_loc7_ && this))
            {
               this.§0!b§(_loc5_);
            }
            loop3:
            while(true)
            {
               this.§4v§.unshift(_loc5_);
               while(true)
               {
                  if(!_loc7_)
                  {
                     if(this.§8H§)
                     {
                        break;
                     }
                     if(!(_loc6_ || param2))
                     {
                        break;
                     }
                     addr129:
                     continue;
                  }
                  continue loop3;
               }
               return;
            }
         }
      }
      
      protected function §?!b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§8H§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr109:
                        while(true)
                        {
                           §§push(this.§4v§.length == 0);
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop5;
                        }
                     }
                     addr108:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           this.§8H§ = this.§4v§.pop();
                           addr57:
                           while(true)
                           {
                              if(_loc2_ && _loc1_)
                              {
                                 continue loop2;
                              }
                              if(_loc1_ || this)
                              {
                                 continue loop0;
                              }
                           }
                           continue loop0;
                        }
                     }
                     if(!(_loc2_ && _loc1_))
                     {
                        break;
                     }
                     §§goto(addr109);
                  }
                  return;
               }
               §§goto(addr108);
            }
         }
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.§0k§(this.§8H§.§case§.data);
         if(!(_loc4_ && _loc2_))
         {
            this.dataLoaded(_loc2_);
         }
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= (param1.items as Array).length)
            {
               loop1:
               while(true)
               {
                  if(param1.totalItemCount != this.§3R§)
                  {
                     while(true)
                     {
                        this.§3R§ = param1.totalItemCount;
                        addr156:
                        while(true)
                        {
                           dispatchEvent(new §;!L§(§;!L§.§-I§,this.§3R§,this.§3R§));
                           addr128:
                           while(true)
                           {
                           }
                        }
                     }
                     addr152:
                  }
                  while(true)
                  {
                     dispatchEvent(new §;!L§(§;!L§.§<!s§,this.§8H§.§9L§,this.§8H§.§0&§));
                     continue loop1;
                  }
               }
            }
            else
            {
               this.§++§[this.§8H§.§9L§ + _loc2_] = param1.items[_loc2_];
            }
            §§goto(addr174);
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§3R§;
      }
      
      protected function §0k§(param1:Object) : Object
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_ || this)
         {
            §§pop().§§slot[2] = null;
            if(!(_loc5_ && this))
            {
               addr49:
               var data:Object = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(!(_loc5_ && _loc2_))
               {
                  §§pop().§§slot[2] = §4!d§.§6!p§(String(data));
                  §§push(§§newactivation());
               }
            }
            catch(e:Error)
            {
               throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§%'§.§<!D§);
            }
            return §§pop().§§slot[2];
         }
         §§goto(addr49);
      }
      
      public function get data() : Array
      {
         return this.§++§;
      }
      
      public function get §2Q§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§8H§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      protected function §0!b§(param1:§ ! §) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            param1.§case§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
            while(true)
            {
               param1.§case§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
               loop1:
               while(true)
               {
                  param1.§case§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
                  addr94:
                  while(true)
                  {
                     param1.§case§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
                     continue loop1;
                  }
               }
               if(_loc3_ && param1)
               {
                  continue;
               }
               §§goto(addr61);
            }
         }
         §§goto(addr86);
      }
      
      protected function § =§(param1:§ ! §) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.§case§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
            while(true)
            {
               param1.§case§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
               loop1:
               while(true)
               {
                  param1.§case§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
                  while(true)
                  {
                     param1.§case§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
                     loop3:
                     while(!(_loc3_ && _loc2_))
                     {
                        while(true)
                        {
                           param1.§case§.removeEventListener(§3!^§.§2_§,dispatchEvent);
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr56);
            }
         }
         §§goto(addr81);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§8H§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr48:
                  this.§ =§(this.§8H§);
               }
               try
               {
                  this.§8H§.§case§.close();
                  if(_loc2_)
                  {
                     addr70:
                     this.§8H§ = null;
                  }
               }
               catch(e:Error)
               {
                  §§goto(addr70);
               }
            }
            return;
         }
         §§goto(addr48);
      }
   }
}
