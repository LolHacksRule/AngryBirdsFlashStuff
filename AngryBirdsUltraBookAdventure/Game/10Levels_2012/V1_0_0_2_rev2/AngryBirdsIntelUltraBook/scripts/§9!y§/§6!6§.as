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
         if(_loc3_)
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!§1i§)
            {
               loop0:
               while(true)
               {
                  §1i§ = true;
                  loop1:
                  while(true)
                  {
                     §,Y§ = new §!e§();
                     loop2:
                     while(true)
                     {
                        §§push(§,Y§);
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,§#6§);
                           loop4:
                           while(!_loc1_)
                           {
                              §§push(§,Y§);
                              while(true)
                              {
                                 §§pop().addEventListener(IOErrorEvent.IO_ERROR,§5!`§);
                                 addr106:
                                 while(_loc2_ || _loc2_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop2;
                           addr88:
                           loop7:
                           for(; !(_loc1_ && §6!6§); if(_loc1_ && _loc2_)
                           {
                              continue;
                           },§§goto(addr59))
                           {
                              §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,§5!`§);
                              loop8:
                              do
                              {
                                 §§push(§,Y§);
                                 loop9:
                                 while(_loc2_)
                                 {
                                    §§pop().addEventListener(§3!^§.§2_§,§5!`§);
                                    while(true)
                                    {
                                       §§push(§,Y§);
                                       if(_loc2_)
                                       {
                                          continue loop7;
                                       }
                                       continue loop9;
                                       addr59:
                                       §§pop().load(§ v§.§<N§(AngryBirdsFP11.§8!`§ + "/claimvalentinebundle"));
                                       do
                                       {
                                          §'N§.§=!C§();
                                       }
                                       while(_loc1_);
                                       
                                       if(_loc2_)
                                       {
                                          continue loop8;
                                       }
                                    }
                                    continue loop7;
                                 }
                                 §§goto(addr102);
                              }
                              while(!(_loc2_ || _loc1_));
                              
                              if(_loc2_ || §6!6§)
                              {
                                 if(!_loc1_)
                                 {
                                    §§goto(addr20);
                                 }
                                 continue loop1;
                              }
                              §§goto(addr106);
                           }
                        }
                     }
                  }
               }
               addr148:
            }
            addr20:
            return;
         }
         §§goto(addr148);
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
               if(_loc2_ || _loc3_)
               {
                  addr45:
               }
               else
               {
                  addr57:
               }
               return;
            }
            if(_loc2_)
            {
               §@M§.§!!g§(§2v§.§'1§);
            }
            §§goto(addr57);
         }
         §§goto(addr45);
      }
      
      private static function §#6§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[1] = param1;
            if(_loc4_ || param1)
            {
               addr33:
               var parsingFailed:Boolean = false;
            }
            try
            {
               §4M§ = JSON.parse(§,Y§.data);
               if(!(_loc5_ && param1))
               {
                  addr82:
                  §§push(parsingFailed);
                  if(!(_loc5_ && §6!6§))
                  {
                     §§push(!§§pop());
                     if(!(_loc5_ && param1))
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              addr103:
                              §§pop();
                              if(_loc4_ || _loc2_)
                              {
                                 addr157:
                                 if(§4M§.success != true)
                                 {
                                    §@M§.§-5§();
                                    while(true)
                                    {
                                       addr116:
                                       loop1:
                                       while(true)
                                       {
                                          §,Y§ = null;
                                          if(_loc5_ && param1)
                                          {
                                             break;
                                          }
                                          if(!(_loc5_ && param1))
                                          {
                                             if(!_loc5_)
                                             {
                                                return;
                                             }
                                             addr158:
                                             while(true)
                                             {
                                                §@M§.§"&§();
                                             }
                                          }
                                          while(true)
                                          {
                                             continue loop1;
                                          }
                                       }
                                    }
                                    addr152:
                                 }
                                 §§goto(addr158);
                                 addr111:
                              }
                              §§goto(addr152);
                           }
                        }
                        §§goto(addr157);
                     }
                  }
                  §§goto(addr103);
               }
               §§goto(addr111);
            }
            catch(e:Error)
            {
               if(_loc4_ || _loc2_)
               {
                  parsingFailed = true;
               }
               §§goto(addr82);
            }
            §§goto(addr116);
         }
         §§goto(addr33);
      }
      
      private function §=T§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            do
            {
               close();
            }
            while(_loc1_);
            
         }
      }
   }
}
