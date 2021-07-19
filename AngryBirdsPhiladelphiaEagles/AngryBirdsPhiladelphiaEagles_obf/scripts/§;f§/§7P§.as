package §;f§
{
   import §`K§.§ L§;
   
   public class §7P§
   {
      
      private static var § in§:§00§;
      
      private static var §",§:§1p§;
      
      private static var §9!@§:Boolean = true;
      
      public static var §7v§:String = "";
      
      public static var §6C§:XML;
      
      public static var §1G§:XML;
      
      public static const §;C§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §7P§)
         {
            §9!@§ = true;
         }
         while(true)
         {
            §7v§ = "";
            while(!(_loc1_ && §7P§))
            {
               §;C§ = true;
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §7P§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function init(param1:String = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            if(§6C§ == null)
            {
               if(!(_loc7_ && _loc3_))
               {
                  addr29:
                  § L§.log("Server configuration not avaialble");
                  if(!(_loc7_ && _loc3_))
                  {
                     return;
                  }
               }
            }
            var _loc2_:XML = null;
            if(_loc8_ || param1)
            {
               if(param1 != null)
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     addr60:
                     _loc2_ = §;!?§(param1,§6C§);
                     addr66:
                     if(_loc2_ == null)
                     {
                        if(_loc8_ || _loc2_)
                        {
                           addr76:
                           _loc2_ = §;!?§(§6C§.Default[0].toString(),§6C§);
                           addr86:
                           §§push(§ L§);
                           §§push("Using connection profile:");
                           if(!(_loc7_ && §7P§))
                           {
                              §§push(§§pop() + _loc2_.Id[0]);
                           }
                           §§pop().log(§§pop());
                           if(!_loc7_)
                           {
                              addr113:
                              §1G§ = _loc2_;
                           }
                           var _loc3_:Class = §2!A§[_loc2_.ConnectionType[0].toString()];
                           var _loc4_:Class = §5!3§[_loc2_.ResponseType[0].toString()];
                           var _loc5_:Number = Number(_loc2_.Port[0].toString());
                           if(!(_loc7_ && §7P§))
                           {
                              if(_loc2_.ServerType[0] != null)
                              {
                                 if(!_loc7_)
                                 {
                                    §7v§ = _loc2_.ServerType[0].toString();
                                 }
                              }
                           }
                           var _loc6_:String = _loc2_.Address[0].toString();
                           if(_loc8_)
                           {
                              § in§ = new _loc3_(_loc6_,_loc5_);
                           }
                           while(true)
                           {
                              §",§ = new _loc4_();
                              while(!(_loc7_ && _loc2_))
                              {
                                 § in§.§ 8§(§",§.§!T§,§",§.§>§);
                                 if(_loc8_ || _loc3_)
                                 {
                                    return;
                                 }
                              }
                           }
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr76);
               }
               §§goto(addr66);
            }
            §§goto(addr60);
         }
         §§goto(addr29);
      }
      
      public static function §;!?§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(!_loc7_)
         {
            if(param1 != null)
            {
               §§goto(addr24);
            }
            return null;
         }
         addr24:
         var _loc4_:int = 0;
         var _loc5_:* = §6C§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!(_loc6_ || param2))
               {
                  break;
               }
               if(!_loc3_.Id[0])
               {
                  if(!(_loc6_ || param1))
                  {
                     break;
                  }
               }
               else if(_loc3_.Id[0].toString().indexOf(param1) == 0)
               {
                  if(_loc6_)
                  {
                     break;
                  }
               }
               continue;
            }
         }
         return _loc3_;
      }
      
      public static function §'g§() : XML
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§1G§ == null);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(§§pop())
                  {
                     if(_loc1_)
                     {
                        return null;
                     }
                     if(_loc1_)
                     {
                        break;
                     }
                     addr80:
                     loop3:
                     while(true)
                     {
                        §§push(!§1G§.Directories);
                        if(_loc1_ || _loc2_)
                        {
                           continue loop0;
                        }
                        addr79:
                        while(true)
                        {
                           §§pop();
                           continue loop3;
                        }
                     }
                  }
                  return §1G§.Directories[0];
                  addr65:
               }
               §§goto(addr79);
            }
         }
         §§goto(addr80);
      }
      
      public static function §-e§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §",§.§-e§(param1,param2);
         }
      }
      
      public static function §#!5§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §",§.§1!P§(param1).addCallback(param2);
         }
      }
      
      public static function §6G§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §",§.§1!P§(param1).§=&§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:§+!@§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         §§push(§9!@§);
         if(_loc10_)
         {
            if(§§pop())
            {
               loop0:
               while(true)
               {
                  §§push(§;C§);
                  addr121:
                  addr390:
                  while(§§pop())
                  {
                     §§push("");
                     continue loop0;
                  }
                  addr390:
                  _loc3_ = §",§.§1!P§(param1);
                  if(!(_loc11_ && _loc3_))
                  {
                     if(_loc3_.§%-§())
                     {
                        if(_loc10_)
                        {
                           § in§.sendRequest(param1,param2);
                           if(_loc10_ || param1)
                           {
                           }
                           addr445:
                           return;
                           addr432:
                        }
                     }
                     else
                     {
                        § L§.log("[Server] WARNING: Trying to send request using a disabled command");
                     }
                  }
                  §§goto(addr432);
               }
            }
            else
            {
               §§push(§ L§);
               §§push("[Server] WARNING: Currently disabled, not sending request for: ");
               if(!(_loc11_ && param1))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
            }
            §§goto(addr445);
         }
         §§goto(addr121);
      }
      
      public static function §5u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §9!@§ = true;
         }
         do
         {
            § in§.§2C§();
         }
         while(!(_loc1_ || §7P§));
         
      }
      
      public static function §@X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9!@§ = false;
            do
            {
               § in§.§`h§();
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public static function §!"§() : Boolean
      {
         return §9!@§;
      }
      
      public static function §&!#§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §",§.§1!P§(param1).§8>§(true);
         }
      }
      
      public static function §'f§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §",§.§1!P§(param1).§8>§(false);
         }
      }
      
      public static function §?%§() : String
      {
         return § in§.§`P§();
      }
      
      public static function §3#§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§6C§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
   }
}
