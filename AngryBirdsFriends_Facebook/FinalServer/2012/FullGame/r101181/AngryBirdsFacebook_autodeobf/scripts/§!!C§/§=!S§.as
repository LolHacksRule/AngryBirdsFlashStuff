package §!!C§
{
   import § !9§.§'!J§;
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §,"2§.§"-§;
   import §<a§.§!!m§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §=!S§ extends EventDispatcher
   {
       
      
      protected var §>">§:Array;
      
      protected var §+U§:String;
      
      protected var §8"6§:Number = -1;
      
      protected var §7"F§:§#!^§;
      
      protected var §3"8§:Vector.<§#!^§>;
      
      public function §=!S§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>">§ = [];
            loop0:
            while(true)
            {
               this.§3"8§ = new Vector.<§#!^§>(0);
               while(true)
               {
                  super();
                  addr44:
                  while(_loc3_)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§+U§ = param1;
            if(_loc3_)
            {
               break;
            }
            §§goto(addr44);
         }
      }
      
      public function §%!e§(param1:int, param2:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:URLRequest = §-!l§.§%""§(this.§+U§);
         if(_loc6_ || _loc3_)
         {
            _loc3_.method = URLRequestMethod.POST;
            loop0:
            while(true)
            {
               addr49:
               while(true)
               {
                  _loc3_.contentType = "application/json";
                  addr53:
                  while(!_loc7_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            _loc3_.data = §'!J§.encode({
               "index":param1,
               "count":param2
            });
            if(!(_loc7_ && this))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr49);
            }
            §§goto(addr53);
         }
         var _loc4_:§0]§;
         (_loc4_ = new §0]§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§#!^§ = new §#!^§(param1,param2,_loc4_,_loc3_);
         if(_loc6_ || param2)
         {
            this.§+%§(_loc5_);
            loop4:
            while(true)
            {
               this.§3"8§.unshift(_loc5_);
               do
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     if(this.§7"F§)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop4;
               }
               while(if(!(_loc7_ && _loc3_))
               {
                  this.§=j§();
               }, !(_loc6_ || this));
               
               return;
            }
         }
         §§goto(addr129);
      }
      
      protected function §=j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§7"F§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr119:
                        while(true)
                        {
                           §§push(this.§3"8§.length == 0);
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop5;
                        }
                     }
                     addr118:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           this.§7"F§ = this.§3"8§.pop();
                           addr67:
                           while(true)
                           {
                              if(!(_loc1_ || _loc2_))
                              {
                                 continue loop2;
                              }
                              if(_loc1_)
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
                     §§goto(addr119);
                  }
                  return;
               }
               §§goto(addr118);
            }
         }
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = this.§=9§(this.§7"F§.§1!e§.data);
         if(_loc4_)
         {
            this.dataLoaded(_loc2_);
         }
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= (param1.items as Array).length)
            {
               loop1:
               while(true)
               {
                  if(param1.totalItemCount != this.§8"6§)
                  {
                     while(true)
                     {
                        this.§8"6§ = param1.totalItemCount;
                        addr150:
                        while(true)
                        {
                           dispatchEvent(new §"-§(§"-§.§`"=§,this.§8"6§,this.§8"6§));
                           addr122:
                           while(true)
                           {
                           }
                        }
                     }
                     addr146:
                  }
                  while(true)
                  {
                     dispatchEvent(new §"-§(§"-§.§;!t§,this.§7"F§.§7A§,this.§7"F§.§%!K§));
                     continue loop1;
                  }
               }
            }
            else
            {
               this.§>">§[this.§7"F§.§7A§ + _loc2_] = param1.items[_loc2_];
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr153);
            }
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§8"6§;
      }
      
      protected function §=9§(param1:Object) : Object
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[2] = null;
            if(!_loc5_)
            {
               addr29:
               var data:Object = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(!_loc5_)
               {
                  §§pop().§§slot[2] = §'!J§.§0!>§(String(data));
                  §§push(§§newactivation());
               }
            }
            catch(e:Error)
            {
               throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§!!m§.§4H§);
            }
            return §§pop().§§slot[2];
         }
         §§goto(addr29);
      }
      
      public function get data() : Array
      {
         return this.§>">§;
      }
      
      public function get §6I§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§7"F§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      protected function §+%§(param1:§#!^§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            param1.§1!e§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
            loop0:
            while(true)
            {
               param1.§1!e§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
               loop1:
               do
               {
                  param1.§1!e§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
                  while(true)
                  {
                     param1.§1!e§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
                     while(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           param1.§1!e§.addEventListener(§+!D§.§25§,dispatchEvent);
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
               while(_loc2_);
               
            }
         }
      }
      
      protected function §+1§(param1:§#!^§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.§1!e§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
            loop0:
            while(true)
            {
               param1.§1!e§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
               while(true)
               {
                  param1.§1!e§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
                  continue loop0;
                  addr54:
                  if(_loc2_ || param1)
                  {
                     return;
                     addr61:
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            if(this.§7"F§)
            {
               if(!(_loc2_ && this))
               {
                  this.§+1§(this.§7"F§);
                  try
                  {
                     addr58:
                     this.§7"F§.§1!e§.close();
                     if(!(_loc2_ && _loc2_))
                     {
                        addr81:
                        this.§7"F§ = null;
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
