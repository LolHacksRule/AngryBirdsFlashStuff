package §?N§
{
   import §,B§.Popup;
   import §7X§.§!!5§;
   import §7X§.§+!p§;
   import §7X§.§7^§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import §]+§.§@!J§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §@!1§ extends Popup
   {
      
      private static var §>+§:Boolean;
      
      private static var §]!"§:§7^§;
      
      private static var §^!s§:Object;
       
      
      public function §@!1§(param1:§4`§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(§ !I§.§3!a§.Views.PopupView_Valentine[0],param1);
            do
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§-!C§);
            }
            while(!_loc4_);
            
         }
      }
      
      public static function sendRequest() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(!§>+§)
            {
               while(true)
               {
                  §>+§ = true;
                  loop1:
                  while(true)
                  {
                     §]!"§ = new §7^§();
                     loop2:
                     while(true)
                     {
                        §§push(§]!"§);
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,§,r§);
                           continue loop2;
                           loop7:
                           while(_loc1_ || _loc1_)
                           {
                              §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,§6!_§);
                              loop8:
                              for(; _loc1_; while(true)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(_loc1_ || §@!1§)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr94);
                                    }
                                    break;
                                 }
                                 continue loop8;
                                 §§goto(addr47);
                              },§§goto(addr117))
                              {
                                 §§push(§]!"§);
                                 while(!(_loc2_ && §@!1§))
                                 {
                                    §§pop().addEventListener(§!!5§.§[!§,§6!_§);
                                    §§push(§]!"§);
                                    continue loop8;
                                    if(_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          addr47:
                                          §§pop().load(§+!p§.§`;§(AngryBirdsFP11.§;!1§ + "/claimvalentinebundle"));
                                          do
                                          {
                                             §@!J§.§>Z§();
                                          }
                                          while(_loc2_);
                                          
                                          if(_loc1_ || §@!1§)
                                          {
                                             §§goto(addr24);
                                          }
                                          continue loop8;
                                       }
                                       continue loop7;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop().addEventListener(IOErrorEvent.IO_ERROR,§6!_§);
                                    addr117:
                                    while(true)
                                    {
                                       continue loop7;
                                    }
                                    §§goto(addr57);
                                 }
                                 addr57:
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  §§goto(addr113);
                  §§push(§]!"§);
               }
            }
            addr24:
            return;
         }
         §§goto(addr117);
      }
      
      protected static function §6!_§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(param1.type != §!!5§.§[!§)
            {
               §]!e§.§-!1§();
               if(!_loc2_)
               {
                  addr56:
               }
               else
               {
                  addr73:
               }
               return;
            }
            if(_loc3_ || param1)
            {
               §]!e§.§>k§(§!!m§.§[!x§);
            }
            §§goto(addr73);
         }
         §§goto(addr56);
      }
      
      private static function §,r§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§pop().§§slot[1] = param1;
            if(_loc5_)
            {
               addr29:
               var parsingFailed:Boolean = false;
            }
            try
            {
               §^!s§ = JSON.parse(§]!"§.data);
               if(_loc5_ || _loc2_)
               {
                  addr78:
                  §§push(parsingFailed);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(!§§pop());
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§pop();
                              if(_loc5_)
                              {
                                 addr141:
                                 if(§^!s§.success == true)
                                 {
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §]!e§.§2L§();
                                       addr151:
                                       while(true)
                                       {
                                          §§goto(addr102);
                                       }
                                       addr151:
                                    }
                                    §§goto(addr151);
                                 }
                                 else
                                 {
                                    §]!e§.§-!1§();
                                 }
                                 while(true)
                                 {
                                    if(!(_loc4_ && §@!1§))
                                    {
                                       §§goto(addr136);
                                    }
                                    §§goto(addr102);
                                 }
                              }
                              §§goto(addr151);
                           }
                        }
                     }
                  }
                  §§goto(addr141);
               }
               §§goto(addr136);
            }
            catch(e:Error)
            {
               var _loc3_:* = e;
               if(!(_loc4_ && param1))
               {
                  parsingFailed = true;
               }
               §§goto(addr78);
            }
            addr102:
            loop1:
            while(true)
            {
               §]!"§ = null;
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
               continue loop0;
               addr136:
               while(true)
               {
                  continue loop1;
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      private function §-!C§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
            do
            {
               close();
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
   }
}
