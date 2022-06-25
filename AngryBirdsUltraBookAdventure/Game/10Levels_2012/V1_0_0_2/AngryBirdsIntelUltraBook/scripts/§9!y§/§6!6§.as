package §9!y§
{
   import §0X§.§'N§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §;!5§.§ v§;
   import §;!5§.§!e§;
   import §;!5§.§3!^§;
   import §[m§.Popup;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §6!6§ extends Popup
   {
      
      private static var §1i§:Boolean;
      
      private static var §,Y§:§!e§;
      
      private static var §4M§:Object;
       
      
      public function §6!6§(param1:§'!^§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super(§[!'§.§+@§.Views.PopupView_Valentine[0],param1);
         }
         do
         {
            mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§=T§);
         }
         while(_loc4_);
         
      }
      
      public static function sendRequest() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(!§1i§)
            {
               loop0:
               while(true)
               {
                  §1i§ = true;
                  while(true)
                  {
                     §,Y§ = new §!e§();
                     loop2:
                     for(; _loc1_; if(!(_loc1_ || §6!6§))
                     {
                        continue;
                     },§§goto(addr54))
                     {
                        §§push(§,Y§);
                        loop3:
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,§#6§);
                           loop4:
                           while(true)
                           {
                              §§push(§,Y§);
                              while(true)
                              {
                                 §§pop().addEventListener(IOErrorEvent.IO_ERROR,§5!`§);
                                 addr125:
                                 while(_loc1_ || _loc2_)
                                 {
                                    continue loop0;
                                 }
                                 addr81:
                                 continue loop4;
                                 if(!(_loc1_ || §6!6§))
                                 {
                                    continue;
                                 }
                                 §§pop().load(§ v§.§<N§(AngryBirdsFP11.§8!`§ + "/claimvalentinebundle"));
                                 while(!_loc2_)
                                 {
                                    §'N§.§=!C§();
                                    if(!_loc1_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc1_ || §6!6§))
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§,Y§);
                                          if(_loc1_ || §6!6§)
                                          {
                                             addr64:
                                             if(!(_loc1_ || _loc2_))
                                             {
                                                continue loop3;
                                             }
                                             §§goto(addr81);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop().addEventListener(§3!^§.§2_§,§5!`§);
                                                continue loop10;
                                             }
                                             addr100:
                                          }
                                       }
                                       addr24:
                                       return;
                                       addr54:
                                       addr104:
                                    }
                                    if(!(_loc2_ && §6!6§))
                                    {
                                       continue loop2;
                                    }
                                    §§goto(addr125);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr100);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr24);
         }
         §§goto(addr104);
      }
      
      protected static function §5!`§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.type != §3!^§.§2_§)
            {
               §@M§.§-5§();
               if(!(_loc3_ && param1))
               {
                  if(!(_loc2_ || param1))
                  {
                     addr68:
                     §@M§.§!!g§(§2v§.§'1§);
                     addr72:
                  }
                  return;
               }
               §§goto(addr72);
            }
         }
         §§goto(addr68);
      }
      
      private static function §#6§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc4_ && param1))
         {
            §§pop().§§slot[1] = param1;
            if(_loc5_)
            {
               addr34:
               var parsingFailed:Boolean = false;
            }
            try
            {
               §4M§ = JSON.parse(§,Y§.data);
               if(!(_loc4_ && _loc2_))
               {
                  addr78:
                  §§push(parsingFailed);
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                     if(_loc5_ || §6!6§)
                     {
                        addr90:
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              addr94:
                              §§pop();
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(§4M§.success == true);
                              }
                              loop2:
                              while(true)
                              {
                                 addr107:
                                 loop3:
                                 while(true)
                                 {
                                    §,Y§ = null;
                                    if(_loc4_ && _loc3_)
                                    {
                                       while(true)
                                       {
                                          if(!(_loc5_ || param1))
                                          {
                                             continue loop2;
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop3;
                                          }
                                          addr149:
                                          while(true)
                                          {
                                             §@M§.§"&§();
                                             continue loop2;
                                          }
                                          continue loop3;
                                       }
                                       addr134:
                                    }
                                    return;
                                 }
                              }
                              addr151:
                           }
                        }
                        if(!§§pop())
                        {
                           §@M§.§-5§();
                           §§goto(addr134);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr90);
               }
               §§goto(addr151);
            }
            catch(e:Error)
            {
               var _loc3_:* = e;
               if(!_loc4_)
               {
                  parsingFailed = true;
               }
               §§goto(addr78);
            }
            §§goto(addr107);
         }
         §§goto(addr34);
      }
      
      private function §=T§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.deActivate();
         }
         do
         {
            close();
         }
         while(_loc2_);
         
      }
   }
}
