package §+k§
{
   import §&!4§.§ !J§;
   import §&!h§.§4!<§;
   import §4!C§.§"!m§;
   import §4!C§.§]!X§;
   import §4!C§.§^!g§;
   import §>§.§7!]§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §-9§ extends EventDispatcher
   {
       
      
      protected var §0A§:Array;
      
      protected var §8l§:String;
      
      protected var §#!$§:Number = -1;
      
      protected var §`!u§:§9W§;
      
      protected var §84§:Vector.<§9W§>;
      
      public function §-9§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§0A§ = [];
            while(true)
            {
               this.§84§ = new Vector.<§9W§>(0);
            }
            addr86:
         }
         loop1:
         do
         {
            super();
            while(_loc2_)
            {
               this.§8l§ = param1;
               if(_loc2_ || _loc2_)
               {
                  continue loop1;
               }
            }
            §§goto(addr86);
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function §`!5§(param1:int, param2:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:URLRequest = §]!X§.§#l§(this.§8l§);
         if(!(_loc6_ && param1))
         {
            _loc3_.method = URLRequestMethod.POST;
            loop0:
            while(true)
            {
               while(true)
               {
                  _loc3_.contentType = "application/json";
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        _loc3_.data = § !J§.encode({
                           "index":param1,
                           "count":param2
                        });
                        if(_loc7_ || param2)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  addr50:
               }
            }
         }
         while(false)
         {
            §§goto(addr50);
         }
         var _loc4_:§"!m§;
         (_loc4_ = new §"!m§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§9W§ = new §9W§(param1,param2,_loc4_,_loc3_);
         if(!_loc6_)
         {
            this.§>!s§(_loc5_);
            loop4:
            while(true)
            {
               this.§84§.unshift(_loc5_);
               while(!this.§`!u§)
               {
                  if(_loc6_)
                  {
                     break;
                  }
                  addr122:
                  if(!_loc6_)
                  {
                     continue loop4;
                  }
               }
               return;
            }
         }
         this.§&![§();
         §§goto(addr122);
      }
      
      protected function §&![§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§`!u§);
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
                        addr120:
                        do
                        {
                           §§push(this.§84§.length == 0);
                           if(_loc1_ && _loc1_)
                           {
                              continue loop2;
                           }
                        }
                        while(_loc2_ || _loc2_);
                        
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        do
                        {
                           this.§`!u§ = this.§84§.pop();
                           while(true)
                           {
                              if(_loc2_ || this)
                              {
                                 continue loop0;
                              }
                           }
                           continue loop0;
                        }
                        while(_loc1_ && this);
                        
                        return;
                     }
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     §§goto(addr120);
                  }
               }
            }
         }
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.§@!P§(this.§`!u§.§ for§.data);
         if(_loc3_ || _loc2_)
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
                  if(_loc4_)
                  {
                     if(param1.totalItemCount != this.§#!$§)
                     {
                        loop2:
                        while(true)
                        {
                           this.§#!$§ = param1.totalItemCount;
                           addr152:
                           while(true)
                           {
                              dispatchEvent(new §7!]§(§7!]§.§=!p§,this.§#!$§,this.§#!$§));
                              addr113:
                              do
                              {
                                 if(_loc3_)
                                 {
                                    continue loop2;
                                 }
                              }
                              while(!(_loc3_ && _loc3_));
                              
                              continue loop0;
                           }
                        }
                     }
                     while(true)
                     {
                        dispatchEvent(new §7!]§(§7!]§.§?X§,this.§`!u§.§%!L§,this.§`!u§.§%;§));
                        while(true)
                        {
                           this.§&!S§(this.§`!u§);
                           loop7:
                           while(true)
                           {
                              this.§`!u§ = null;
                              while(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    if(this.§84§.length <= 0)
                                    {
                                       return;
                                    }
                                    addr20:
                                    if(_loc4_ || this)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop7;
                                       }
                                       continue;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr113);
                           }
                           if(!(_loc3_ && this))
                           {
                              this.§&![§();
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            else
            {
               this.§0A§[this.§`!u§.§%!L§ + _loc2_] = param1.items[_loc2_];
            }
            _loc2_++;
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§#!$§;
      }
      
      protected function §@!P§(param1:Object) : Object
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§pop().§§slot[2] = null;
            if(!(_loc5_ && param1))
            {
               addr34:
               var data:Object = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(!(_loc5_ && param1))
               {
                  §§pop().§§slot[2] = § !J§.§!!R§(String(data));
                  §§push(§§newactivation());
               }
            }
            catch(e:Error)
            {
               throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§4!<§.§ 5§);
            }
            return §§pop().§§slot[2];
         }
         §§goto(addr34);
      }
      
      public function get data() : Array
      {
         return this.§0A§;
      }
      
      public function get §6j§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§`!u§ == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      protected function §>!s§(param1:§9W§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.§ for§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
            loop0:
            while(true)
            {
               param1.§ for§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
               while(true)
               {
                  param1.§ for§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
                  loop2:
                  while(!(_loc3_ && this))
                  {
                     continue loop0;
                     while(true)
                     {
                        param1.§ for§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
                        do
                        {
                           param1.§ for§.addEventListener(§^!g§.§]P§,dispatchEvent);
                        }
                        while(_loc3_ && this);
                        
                        if(_loc2_ || _loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      protected function §&!S§(param1:§9W§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            param1.§ for§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         }
         while(true)
         {
            param1.§ for§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
            while(!_loc3_)
            {
               param1.§ for§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
               do
               {
                  param1.§ for§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
                  do
                  {
                     param1.§ for§.removeEventListener(§^!g§.§]P§,dispatchEvent);
                  }
                  while(_loc3_);
                  
               }
               while(_loc3_ && _loc3_);
               
               if(!(_loc3_ && _loc3_))
               {
                  return;
               }
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            if(this.§`!u§)
            {
               if(_loc2_)
               {
                  addr48:
                  this.§&!S§(this.§`!u§);
               }
               try
               {
                  this.§`!u§.§ for§.close();
                  if(_loc2_)
                  {
                     addr70:
                     this.§`!u§ = null;
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
