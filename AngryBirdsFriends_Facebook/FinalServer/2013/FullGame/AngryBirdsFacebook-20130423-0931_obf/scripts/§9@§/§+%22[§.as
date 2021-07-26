package §9@§
{
   import §2<§.§3d§;
   import §30§.§'"+§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §+"[§ extends EventDispatcher
   {
      
      protected static const §5!6§:String = "https://graph.facebook.com/";
      
      protected static var §1"I§:String;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §5!6§ = "https://graph.facebook.com/";
         }
      }
      
      private var §2!H§:§3d§;
      
      private var §]f§:String;
      
      private var §#!+§:Object;
      
      private var §;"3§:Object;
      
      private var §+"2§:Boolean = false;
      
      public function §+"[§(param1:String, param2:Object = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               if(§1"I§)
               {
                  loop1:
                  do
                  {
                     this.§]f§ = param1;
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           this.§#!+§ = param2;
                           if(_loc3_ || param2)
                           {
                              continue loop1;
                           }
                           continue;
                        }
                     }
                     continue loop0;
                  }
                  while(_loc4_ && _loc3_);
                  
                  return;
                  addr61:
               }
               throw new Error("Static access token has not been set yet.");
            }
         }
         §§goto(addr61);
      }
      
      public static function set accessToken(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §1"I§ = param1;
         }
      }
      
      public function load() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         if(_loc7_)
         {
            if(this.§2!H§)
            {
               if(!_loc6_)
               {
                  §§goto(addr27);
               }
            }
            this.§;"3§ = null;
            var _loc1_:URLRequest = new URLRequest(§5!6§ + this.§]f§);
            if(!_loc6_)
            {
               _loc1_.method = URLRequestMethod.GET;
            }
            var _loc2_:URLVariables = new URLVariables();
            if(!_loc6_)
            {
               _loc2_.access_token = §1"I§;
               if(_loc7_ || _loc3_)
               {
                  addr66:
                  if(this.§#!+§)
                  {
                     §§goto(addr69);
                  }
                  §§goto(addr174);
               }
               addr69:
               for(_loc3_ in this.§#!+§)
               {
                  if(!_loc6_)
                  {
                     _loc2_[_loc3_] = this.§#!+§[_loc3_];
                  }
               }
               if(_loc7_)
               {
                  addr174:
                  _loc1_.data = _loc2_;
                  loop1:
                  while(true)
                  {
                     this.§2!H§ = new §3d§();
                     loop2:
                     while(true)
                     {
                        §§push(this.§2!H§);
                        addr158:
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,this.§9!y§);
                           addr163:
                           while(_loc7_)
                           {
                              if(!_loc7_)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               loop5:
               while(true)
               {
                  §§push(this.§2!H§);
                  while(_loc7_)
                  {
                     §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.§-!R§);
                     while(true)
                     {
                        §§push(this.§2!H§);
                        if(!(_loc7_ || _loc1_))
                        {
                           break;
                        }
                        §§pop().load(_loc1_);
                        if(_loc6_ && _loc1_)
                        {
                           continue;
                        }
                        if(_loc7_)
                        {
                           break loop5;
                        }
                        §§goto(addr163);
                     }
                  }
                  §§goto(addr158);
               }
               return;
            }
            §§goto(addr66);
         }
         addr27:
         throw new Error("Loading operation is already in progress.");
      }
      
      private function §-!R§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§+"2§)
            {
               §'"+§.§'!#§("requestAuthorization");
               if(_loc3_ && _loc3_)
               {
                  while(true)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        if(_loc2_ || param1)
                        {
                           break;
                        }
                        addr93:
                        while(true)
                        {
                           this.§+"2§ = true;
                           addr96:
                           while(true)
                           {
                              §'"+§.addCallback("accessTokenRenewed",this.§?i§);
                           }
                        }
                     }
                     while(_loc3_)
                     {
                        §§goto(addr96);
                     }
                     §'"+§.§'!#§("renewAccessToken");
                  }
                  addr80:
               }
               return;
            }
            §§goto(addr93);
         }
         §§goto(addr80);
      }
      
      protected function §9!y§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc5_ && param1))
         {
            §§pop().§§slot[2] = null;
            if(_loc4_)
            {
               addr34:
               var e:Event = param1;
            }
            try
            {
               var response:Object = JSON.parse(this.§2!H§.data);
               if(!(_loc5_ && param1))
               {
                  this.§+"2§ = false;
                  if(!(_loc5_ && param1))
                  {
                     this.§;"3§ = response;
                     do
                     {
                        dispatchEvent(new Event(Event.COMPLETE));
                     }
                     while(_loc5_);
                     
                     addr108:
                  }
                  return;
               }
            }
            catch(e:Error)
            {
               throw new Error("Invalid JSON from " + §5!6§ + §]f§ + ":\n" + §2!H§.data);
            }
            §§goto(addr108);
         }
         §§goto(addr34);
      }
      
      public function get §8§() : Object
      {
         return this.§;"3§;
      }
      
      protected function §?i§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            accessToken = param1;
            loop0:
            while(true)
            {
               §'"+§.§"!6§("accessTokenRenewed",this.§?i§);
               do
               {
                  this.§2!H§ = null;
                  continue loop0;
               }
               while(_loc2_ && _loc3_);
               
            }
         }
      }
      
      public function §=!z§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§2!H§)
            {
               try
               {
                  addr32:
                  this.§2!H§.close();
                  if(!_loc2_)
                  {
                     addr49:
                     this.§2!H§ = null;
                     if(_loc2_)
                     {
                     }
                  }
               }
               catch(e:Error)
               {
                  §§goto(addr49);
               }
               §§goto(addr57);
            }
            this.§+"2§ = false;
            addr57:
            return;
         }
         §§goto(addr32);
      }
   }
}
