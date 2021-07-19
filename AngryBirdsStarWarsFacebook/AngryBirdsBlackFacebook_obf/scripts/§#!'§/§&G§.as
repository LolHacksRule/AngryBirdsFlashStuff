package §#!'§
{
   import §="V§.§""v§;
   import §`!o§.§2,§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §&G§ extends EventDispatcher
   {
      
      protected static const §!"Q§:String = "https://graph.facebook.com/";
      
      protected static var §6"r§:String;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §!"Q§ = "https://graph.facebook.com/";
         }
      }
      
      private var §9v§:§2,§;
      
      private var §`#W§:String;
      
      private var §;!Z§:Object;
      
      private var §4!F§:Object;
      
      private var §]#K§:Boolean = false;
      
      public function §&G§(param1:String, param2:Object = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super();
            loop0:
            for(; !§6"r§; if(_loc4_ || param2)
            {
               throw new Error("Static access token has not been set yet.");
            })
            {
               if(!_loc3_)
               {
                  continue;
               }
               addr84:
               while(true)
               {
                  break loop0;
               }
            }
            while(true)
            {
               this.§`#W§ = param1;
               do
               {
                  this.§;!Z§ = param2;
               }
               while(_loc3_);
               
               if(_loc4_ || _loc3_)
               {
                  break;
               }
               §§goto(addr84);
            }
            return;
         }
         §§goto(addr84);
      }
      
      public static function set accessToken(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §6"r§ = param1;
         }
      }
      
      public function load() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         if(_loc6_ || _loc3_)
         {
            if(this.§9v§)
            {
               if(_loc6_)
               {
                  throw new Error("Loading operation is already in progress.");
               }
            }
            this.§4!F§ = null;
         }
         var _loc1_:URLRequest = new URLRequest(§!"Q§ + this.§`#W§);
         if(_loc6_)
         {
            _loc1_.method = URLRequestMethod.GET;
         }
         var _loc2_:URLVariables = new URLVariables();
         if(!(_loc7_ && _loc1_))
         {
            _loc2_.access_token = §6"r§;
            if(!_loc7_)
            {
               if(this.§;!Z§)
               {
                  addr78:
                  for(_loc3_ in this.§;!Z§)
                  {
                     if(!_loc7_)
                     {
                        _loc2_[_loc3_] = this.§;!Z§[_loc3_];
                     }
                  }
                  if(_loc6_)
                  {
                     addr183:
                     _loc1_.data = _loc2_;
                  }
                  while(true)
                  {
                     this.§9v§ = new §2,§();
                     loop1:
                     while(true)
                     {
                        §§push(this.§9v§);
                        addr147:
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,this.§0"L§);
                           continue loop1;
                        }
                     }
                     if(_loc7_ && _loc1_)
                     {
                        continue;
                     }
                     §§push(this.§9v§);
                     loop4:
                     for(; !_loc7_; §§push(this.§9v§),if(!_loc7_)
                     {
                        §§pop().load(_loc1_);
                        if(_loc7_)
                        {
                           §§goto(addr141);
                        }
                        return;
                     })
                     {
                        §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.§,#Y§);
                        while(!_loc7_)
                        {
                           continue loop4;
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr147);
                  }
               }
               §§goto(addr183);
            }
         }
         §§goto(addr78);
      }
      
      private function §,#Y§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this.§]#K§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this.§]#K§ = true;
               }
               §""v§.addCallback("accessTokenRenewed",this.§ j§);
               loop0:
               while(true)
               {
                  §""v§.§&R§("renewAccessToken");
                  addr48:
                  addr55:
                  while(_loc3_ && this)
                  {
                     continue loop0;
                  }
                  §§goto(addr19);
               }
               addr86:
            }
            else
            {
               §""v§.§&R§("requestAuthorization");
               if(_loc2_)
               {
                  if(_loc3_)
                  {
                     §§goto(addr86);
                  }
                  addr19:
                  return;
               }
            }
            §§goto(addr48);
         }
         §§goto(addr55);
      }
      
      protected function §0"L§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc5_ && _loc3_))
         {
            §§pop().§§slot[2] = null;
            if(!_loc5_)
            {
               addr34:
               var e:Event = param1;
            }
            try
            {
               var response:Object = JSON.parse(this.§9v§.data);
               if(_loc4_ || this)
               {
                  this.§]#K§ = false;
                  if(_loc4_)
                  {
                     this.§4!F§ = response;
                     do
                     {
                        dispatchEvent(new Event(Event.COMPLETE));
                     }
                     while(!(_loc4_ || _loc3_));
                     
                     addr93:
                  }
                  return;
               }
            }
            catch(e:Error)
            {
               throw new Error("Invalid JSON from " + §!"Q§ + §`#W§ + ":\n" + §9v§.data);
            }
            §§goto(addr93);
         }
         §§goto(addr34);
      }
      
      public function get §3!U§() : Object
      {
         return this.§4!F§;
      }
      
      protected function § j§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            accessToken = param1;
            while(true)
            {
               §""v§.§&z§("accessTokenRenewed",this.§ j§);
               while(_loc3_)
               {
                  this.§9v§ = null;
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        this.load();
                        if(!_loc2_)
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
         §§goto(addr46);
      }
      
      public function §1!d§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§9v§)
            {
               try
               {
                  §§goto(addr36);
               }
               catch(e:Error)
               {
               }
               §§goto(addr63);
            }
            §§goto(addr68);
         }
         addr36:
         this.§9v§.close();
         if(_loc2_)
         {
            addr63:
            this.§9v§ = null;
            if(_loc2_)
            {
               addr68:
               this.§]#K§ = false;
            }
         }
      }
   }
}
