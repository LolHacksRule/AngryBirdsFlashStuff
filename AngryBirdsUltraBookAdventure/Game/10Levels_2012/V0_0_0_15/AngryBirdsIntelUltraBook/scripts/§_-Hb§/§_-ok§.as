package §_-Hb§
{
   import §_-0BH§.§_-FK§;
   
   public class §_-ok§
   {
      
      private static var §_-4z§:§_-9V§;
      
      private static var §_-ks§:§_-jA§;
      
      private static var §_-qP§:Boolean = true;
      
      public static var §_-FF§:String = "";
      
      public static var §_-CT§:XML;
      
      public static var §_-1v§:XML;
      
      public static const §_-g7§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-qP§ = true;
         }
         do
         {
            §_-FF§ = "";
            do
            {
               §_-g7§ = true;
            }
            while(_loc2_ && _loc2_);
            
         }
         while(_loc2_);
         
      }
      
      public function §_-ok§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function init(param1:String = null) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            if(§_-CT§ == null)
            {
               if(_loc7_)
               {
                  addr23:
                  §_-FK§.log("Server configuration not avaialble");
                  if(_loc7_ || _loc2_)
                  {
                     return;
                  }
               }
            }
            var _loc2_:XML = null;
            if(_loc7_ || _loc3_)
            {
               if(param1 != null)
               {
                  if(!_loc8_)
                  {
                     _loc2_ = §_-PW§(param1,§_-CT§);
                     §§goto(addr55);
                  }
                  §§goto(addr60);
               }
               addr55:
               if(_loc2_ == null)
               {
                  if(_loc7_)
                  {
                     addr60:
                     _loc2_ = §_-PW§(§_-CT§.Default[0].toString(),§_-CT§);
                  }
                  §§goto(addr105);
               }
               §§push(§_-FK§);
               §§push("Using connection profile:");
               if(!(_loc8_ && param1))
               {
                  §§push(§§pop() + _loc2_.Id[0]);
               }
               §§pop().log(§§pop());
               if(!(_loc8_ && param1))
               {
                  §_-1v§ = _loc2_;
               }
               §§goto(addr105);
            }
            addr105:
            var _loc3_:Class = §_-8O§[_loc2_.ConnectionType[0].toString()];
            var _loc4_:Class = §_-15§[_loc2_.ResponseType[0].toString()];
            var _loc5_:Number = Number(_loc2_.Port[0].toString());
            if(!_loc8_)
            {
               if(_loc2_.ServerType[0] != null)
               {
                  if(_loc7_ || §_-ok§)
                  {
                     §_-FF§ = _loc2_.ServerType[0].toString();
                  }
               }
            }
            var _loc6_:String = _loc2_.Address[0].toString();
            if(_loc7_)
            {
               §_-4z§ = new _loc3_(_loc6_,_loc5_);
               do
               {
                  §_-ks§ = new _loc4_();
                  do
                  {
                     §_-4z§.§_-Et§(§_-ks§.§_-Oi§,§_-ks§.§_-03N§);
                  }
                  while(_loc8_);
                  
               }
               while(!_loc7_);
               
            }
            return;
         }
         §§goto(addr23);
      }
      
      public static function §_-PW§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(_loc7_)
         {
            if(param1 != null)
            {
               §§goto(addr25);
            }
            return null;
         }
         addr25:
         var _loc4_:int = 0;
         var _loc5_:* = §_-CT§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!_loc6_)
               {
                  if(!_loc3_.Id[0])
                  {
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  else if(_loc3_.Id[0].toString().indexOf(param1) == 0)
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
               }
               continue;
            }
         }
         return _loc3_;
      }
      
      public static function §_-Ji§() : XML
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§_-1v§ == null);
            if(_loc1_ || §_-ok§)
            {
               if(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr95:
                     while(true)
                     {
                        §§push(!§_-1v§.Directories);
                        if(_loc1_ || _loc1_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr94:
               }
               while(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     return null;
                  }
                  if(_loc1_ || _loc2_)
                  {
                     addr81:
                     break;
                  }
                  §§goto(addr95);
               }
               return §_-1v§.Directories[0];
            }
            §§goto(addr94);
         }
         §§goto(addr81);
      }
      
      public static function §_-0-r§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §_-ks§.§_-0-r§(param1,param2);
         }
      }
      
      public static function §_-pa§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §_-ks§.§_-nZ§(param1).addCallback(param2);
         }
      }
      
      public static function §_-0--§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §_-ks§.§_-nZ§(param1).§_-tG§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:§_-5p§ = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         if(_loc10_)
         {
            §§push(§_-qP§);
            if(_loc10_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(§_-g7§);
                     addr131:
                     while(§§pop())
                     {
                        while(true)
                        {
                           §§push("");
                           addr133:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr134:
                              while(true)
                              {
                                 §_-FK§.log("URL sending...");
                                 continue loop0;
                              }
                           }
                        }
                     }
                     addr426:
                     _loc3_ = §_-ks§.§_-nZ§(param1);
                     if(_loc10_)
                     {
                        if(_loc3_.§_-r6§())
                        {
                           if(_loc10_)
                           {
                              §_-4z§.sendRequest(param1,param2);
                              if(!_loc10_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §_-FK§.log("[Server] WARNING: Trying to send request using a disabled command");
                        }
                     }
                  }
               }
               else
               {
                  §§push(§_-FK§);
                  §§push("[Server] WARNING: Currently disabled, not sending request for: ");
                  if(!(_loc11_ && param2))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               §§goto(addr240);
            }
            §§goto(addr131);
         }
         §§goto(addr132);
      }
      
      public static function §_-Ed§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-qP§ = true;
            do
            {
               §_-4z§.§_-4n§();
            }
            while(!_loc2_);
            
         }
      }
      
      public static function §_-Ov§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-qP§ = false;
            do
            {
               §_-4z§.§_-03a§();
            }
            while(_loc2_);
            
         }
      }
      
      public static function §_-051§() : Boolean
      {
         return §_-qP§;
      }
      
      public static function §break§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §_-ok§)
         {
            §_-ks§.§_-nZ§(param1).§_-9k§(true);
         }
      }
      
      public static function §_-mS§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §_-ks§.§_-nZ§(param1).§_-9k§(false);
         }
      }
      
      public static function §_-p3§() : String
      {
         return §_-4z§.§_-Os§();
      }
      
      public static function §_-UZ§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§_-CT§ == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
   }
}
