package §6!Y§
{
   import §!e§.§function§;
   import §7@§.§?!7§;
   import §7X§.§!!5§;
   import §7X§.§+!p§;
   import §7X§.§7^§;
   import §]+§.§&!$§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §9!?§ extends EventDispatcher
   {
       
      
      protected var §%v§:Array;
      
      protected var §"<§:String;
      
      protected var §+!6§:Number = -1;
      
      protected var §;s§:§5t§;
      
      protected var §!!t§:Vector.<§5t§>;
      
      public function §9!?§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§%v§ = [];
            while(true)
            {
               this.§!!t§ = new Vector.<§5t§>(0);
            }
            addr86:
         }
         loop1:
         do
         {
            super();
            while(_loc2_)
            {
               this.§"<§ = param1;
               if(_loc2_ || _loc2_)
               {
                  continue loop1;
               }
            }
            §§goto(addr86);
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function §-#§(param1:int, param2:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:URLRequest = §+!p§.§`;§(this.§"<§);
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
                        _loc3_.data = §function§.encode({
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
         var _loc4_:§7^§;
         (_loc4_ = new §7^§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§5t§ = new §5t§(param1,param2,_loc4_,_loc3_);
         if(!_loc6_)
         {
            this.§]!d§(_loc5_);
            loop4:
            while(true)
            {
               this.§!!t§.unshift(_loc5_);
               while(!this.§;s§)
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
         this.§,!f§();
         §§goto(addr122);
      }
      
      protected function §,!f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§;s§);
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
                           §§push(this.§!!t§.length == 0);
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
                           this.§;s§ = this.§!!t§.pop();
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
         var _loc2_:Object = this.§<!u§(this.§;s§.§9o§.data);
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
                     if(param1.totalItemCount != this.§+!6§)
                     {
                        loop2:
                        while(true)
                        {
                           this.§+!6§ = param1.totalItemCount;
                           addr152:
                           while(true)
                           {
                              dispatchEvent(new §?!7§(§?!7§.§2!"§,this.§+!6§,this.§+!6§));
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
                        dispatchEvent(new §?!7§(§?!7§.§-t§,this.§;s§.§ !z§,this.§;s§.§"A§));
                        while(true)
                        {
                           this.§;!$§(this.§;s§);
                           loop7:
                           while(true)
                           {
                              this.§;s§ = null;
                              while(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    if(this.§!!t§.length <= 0)
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
                              this.§,!f§();
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            else
            {
               this.§%v§[this.§;s§.§ !z§ + _loc2_] = param1.items[_loc2_];
            }
            _loc2_++;
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§+!6§;
      }
      
      protected function §<!u§(param1:Object) : Object
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
                  §§pop().§§slot[2] = §function§.§8!^§(String(data));
                  §§push(§§newactivation());
               }
            }
            catch(e:Error)
            {
               throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§&!$§.§1!`§);
            }
            return §§pop().§§slot[2];
         }
         §§goto(addr34);
      }
      
      public function get data() : Array
      {
         return this.§%v§;
      }
      
      public function get §@B§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§;s§ == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      protected function §]!d§(param1:§5t§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.§9o§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
            loop0:
            while(true)
            {
               param1.§9o§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
               while(true)
               {
                  param1.§9o§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
                  loop2:
                  while(!(_loc3_ && this))
                  {
                     continue loop0;
                     while(true)
                     {
                        param1.§9o§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
                        do
                        {
                           param1.§9o§.addEventListener(§!!5§.§[!§,dispatchEvent);
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
      
      protected function §;!$§(param1:§5t§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            param1.§9o§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         }
         while(true)
         {
            param1.§9o§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
            while(!_loc3_)
            {
               param1.§9o§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
               do
               {
                  param1.§9o§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
                  do
                  {
                     param1.§9o§.removeEventListener(§!!5§.§[!§,dispatchEvent);
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
            if(this.§;s§)
            {
               if(_loc2_)
               {
                  addr48:
                  this.§;!$§(this.§;s§);
               }
               try
               {
                  this.§;s§.§9o§.close();
                  if(_loc2_)
                  {
                     addr70:
                     this.§;s§ = null;
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
