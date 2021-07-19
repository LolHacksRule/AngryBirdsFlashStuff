package §;! §
{
   import §!"W§.§="g§;
   import §!"e§.SyncPopup;
   import §!"e§.§`"W§;
   import §#!'§.§6"]§;
   import §,"N§.§@#B§;
   import §7K§.§,T§;
   import §="V§.§""v§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §2!P§
   {
      
      protected static var §>!9§:String;
      
      protected static var §5"s§:int;
      
      protected static var §;!'§:int;
      
      protected static var §[!B§:Boolean = false;
      
      protected static var §@!t§:Boolean = false;
      
      private static var §1J§:Timer;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §[!B§ = false;
         }
         do
         {
            §@!t§ = false;
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function §2!P§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §;%§(param1:§,T§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §[x§(param1);
            while(true)
            {
               §6"]§.§ "§(param1.itemID,param1.quantity,param1.price);
               while(!(_loc2_ && _loc2_))
               {
                  §@!t§ = true;
                  if(!_loc3_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      public static function §2"G§(param1:§,T§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §[x§(param1);
         }
         while(true)
         {
            §6"]§.§1"=§(param1.itemID,param1.quantity,param1.price);
            while(_loc2_)
            {
               §@!t§ = false;
               if(!(_loc3_ && §2!P§))
               {
                  return;
               }
            }
         }
      }
      
      protected static function §[x§(param1:§,T§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!§[!B§)
            {
               while(true)
               {
                  §""v§.addCallback("purchaseComplete",§#!I§);
                  addr114:
                  while(true)
                  {
                     §[!B§ = true;
                     addr107:
                     while(true)
                     {
                     }
                  }
               }
               addr110:
            }
            while(true)
            {
               §§push(§""v§);
               §§push("placeOrder");
               §§push(param1.itemID + "_");
               if(!_loc2_)
               {
                  §§push(§§pop() + param1.quantity);
               }
               §§pop().§&R§(§§pop(),§§pop());
               while(!(_loc2_ && _loc3_))
               {
                  §>!9§ = param1.itemID;
                  loop3:
                  do
                  {
                     if(_loc3_)
                     {
                        §5"s§ = param1.quantity;
                        while(!_loc2_)
                        {
                           §;!'§ = param1.price;
                           if(_loc3_ || _loc2_)
                           {
                              continue loop3;
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr110);
                     }
                  }
                  while(!(_loc3_ || §2!P§));
                  
                  if(_loc3_)
                  {
                     return;
                  }
               }
               §§goto(addr107);
            }
         }
         §§goto(addr114);
      }
      
      protected static function §#!I§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§[!j§ = new SyncPopup(§`"W§.ERROR,§+5§.DEFAULT);
         if(_loc2_)
         {
            §4#;§.singleton.popupManager.openPopup(_loc1_);
            loop0:
            while(true)
            {
               §1J§ = new Timer(2000);
               while(true)
               {
                  §1J§.addEventListener(TimerEvent.TIMER,§-K§);
                  loop2:
                  while(_loc2_ || _loc1_)
                  {
                     while(true)
                     {
                        §1J§.start();
                        if(!(_loc3_ && _loc1_))
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      private static function §-K§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §1J§.removeEventListener(TimerEvent.TIMER,§-K§);
            while(true)
            {
               §1J§.stop();
               addr142:
               addr61:
               while(true)
               {
                  §1J§ = null;
               }
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               addr78:
               loop7:
               while(true)
               {
                  §§push(§@#B§(§4#;§.singleton.dataModel).§1!f§);
                  if(!_loc3_)
                  {
                     §§pop().addEventListener(§="g§.§>#9§,§&B§);
                     addr54:
                     if(!_loc3_)
                     {
                        addr38:
                        if(_loc2_ || _loc2_)
                        {
                           return;
                        }
                        loop6:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop7;
                           }
                           addr114:
                           while(true)
                           {
                              §6"]§.§#"c§(§>!9§,§5"s§,§;!'§);
                              continue loop6;
                           }
                        }
                        §§goto(addr142);
                     }
                     while(true)
                     {
                        if(!(_loc2_ || §2!P§))
                        {
                           break loop7;
                        }
                        §§goto(addr61);
                     }
                     addr54:
                  }
                  addr122:
                  while(true)
                  {
                     §§pop().§""i§();
                     while(true)
                     {
                        if(!§@!t§)
                        {
                           §6"]§.§%"B§(§>!9§,§5"s§,§;!'§);
                           break;
                        }
                        if(_loc2_ || _loc3_)
                        {
                           if(!(_loc2_ || _loc2_))
                           {
                              continue;
                           }
                           §@#B§(§4#;§.singleton.dataModel).§!!C§.reset();
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr54);
                  }
               }
               while(true)
               {
                  §§goto(addr122);
                  §§goto(addr54);
               }
               addr128:
            }
         }
         §§goto(addr128);
      }
      
      private static function §&B§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(§@#B§(§4#;§.singleton.dataModel).§1!f§);
            loop0:
            while(true)
            {
               if(!§§pop().§#[§)
               {
                  §1J§ = new Timer(10000);
                  loop1:
                  while(true)
                  {
                     §1J§.addEventListener(TimerEvent.TIMER,§-K§);
                     while(!(_loc2_ && param1))
                     {
                        if(!(_loc2_ && §2!P§))
                        {
                           §1J§.start();
                           if(_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 break loop0;
                              }
                              continue loop1;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                     addr95:
                     while(true)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr25:
                           return;
                           addr102:
                        }
                     }
                  }
               }
               addr121:
               while(true)
               {
                  §4#;§.singleton.popupManager.§,"o§(SyncPopup.§%!h§);
                  continue loop0;
               }
            }
            §§goto(addr25);
         }
         §§goto(addr102);
      }
   }
}
