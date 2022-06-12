package §'!s§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §3!7§.§?!F§;
   import §<a§.§+!B§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §'!Y§ extends Popup
   {
      
      private static var §>!J§:Boolean;
      
      private static var §=F§:§0]§;
      
      private static var §"y§:Object;
       
      
      public function §'!Y§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super(§ "A§.§4[§.Views.PopupView_Valentine[0],param1);
         }
         do
         {
            mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§@"$§);
         }
         while(_loc4_ && param2);
         
      }
      
      public static function sendRequest() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(!§>!J§)
            {
               while(true)
               {
                  §>!J§ = true;
                  loop1:
                  while(true)
                  {
                     §=F§ = new §0]§();
                     addr164:
                     while(true)
                     {
                        §§push(§=F§);
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,§5!^§);
                           loop4:
                           while(true)
                           {
                              §§push(§=F§);
                              loop5:
                              while(true)
                              {
                                 §§pop().addEventListener(IOErrorEvent.IO_ERROR,§0"1§);
                                 addr144:
                                 while(!(_loc2_ && _loc1_))
                                 {
                                    §§push(§=F§);
                                    continue loop5;
                                 }
                                 continue loop4;
                              }
                           }
                           if(_loc2_ && §'!Y§)
                           {
                              continue;
                           }
                           §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,§0"1§);
                           §§goto(addr127);
                        }
                        if(_loc1_ || _loc1_)
                        {
                           if(_loc1_ || _loc1_)
                           {
                              §§goto(addr24);
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr164);
      }
      
      protected static function §0"1§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1.type != §+!D§.§25§)
            {
               §%?§.§4!>§();
               if(_loc3_ && §'!Y§)
               {
                  addr77:
               }
               return;
            }
            if(!(_loc3_ && param1))
            {
               addr73:
               §%?§.§6!7§(§-d§.§]x§);
            }
            §§goto(addr77);
         }
         §§goto(addr73);
      }
      
      private static function §5!^§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc4_ && _loc2_))
         {
            §§pop().§§slot[1] = param1;
            if(_loc5_)
            {
               addr34:
               var parsingFailed:Boolean = false;
            }
            try
            {
               §"y§ = JSON.parse(§=F§.data);
               if(_loc5_ || param1)
               {
                  addr78:
                  §§push(parsingFailed);
                  if(_loc5_ || param1)
                  {
                     §§push(!§§pop());
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              addr94:
                              §§pop();
                              if(!_loc4_)
                              {
                                 addr152:
                                 if(§"y§.success != true)
                                 {
                                    §%?§.§4!>§();
                                    loop0:
                                    while(true)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          while(true)
                                          {
                                             continue loop0;
                                          }
                                          addr140:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §?!F§.§;"§.§>G§(§"y§.items);
                                             addr147:
                                             while(true)
                                             {
                                                continue loop0;
                                             }
                                          }
                                          addr155:
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §%?§.§[x§();
                                    §§goto(addr155);
                                 }
                                 addr97:
                              }
                              §§goto(addr140);
                           }
                        }
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr94);
               }
               §§goto(addr97);
            }
            catch(e:Error)
            {
               var _loc3_:* = e;
               if(_loc5_)
               {
                  parsingFailed = true;
               }
               §§goto(addr78);
            }
            §§goto(addr102);
         }
         §§goto(addr34);
      }
      
      private function §@"$§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.deActivate();
         }
         do
         {
            close();
         }
         while(!_loc1_);
         
      }
   }
}
