package §5!Y§
{
   import §%i§.§4"9§;
   import §,l§.§#!,§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §<"F§.§["M§;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import mx.utils.StringUtil;
   
   public class §6y§ extends Popup
   {
       
      
      private var §>"P§:StatePopupManager;
      
      private var §!!l§:§3d§;
      
      public function §6y§(param1:§`_§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(§ "<§.§%I§.Views.PopupView_EndOfCompetitionWinnersPopup[0],param1);
         }
         while(true)
         {
            mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§if §);
            loop1:
            while(!_loc4_)
            {
               mClip.btnClaimNow.addEventListener(MouseEvent.CLICK,this.§ !W§);
               do
               {
                  mClip.TextField_ViewWinners.addEventListener(MouseEvent.CLICK,this.§[!+§);
                  while(_loc3_ || this)
                  {
                     this.§!T§();
                     while(!_loc4_)
                     {
                        this.§>"P§ = param2;
                        if(!(_loc3_ || param2))
                        {
                           continue;
                        }
                        §§goto(addr34);
                     }
                  }
                  continue loop1;
               }
               while(!_loc3_);
               
               return;
            }
         }
      }
      
      private function §!T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            (getItemByName("Textfield_CollectedUserEggs") as §4"9§).setText(StringUtil.substitute("We’d like to thank everyone for participating. \nYou personally collected {0} Easter Eggs. As a small thank you here’s 30 Bird Coins for participating.",§%"S§.§!C§.§9"%§.§7"T§.§-"5§.toString()));
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.open(param1);
         }
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.close();
         }
      }
      
      private function § !W§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.§!!l§ = new §3d§();
            while(true)
            {
               §§push(this.§!!l§);
               addr134:
               while(true)
               {
                  §§pop().addEventListener(Event.COMPLETE,this.§9!y§);
               }
            }
            addr144:
         }
         loop2:
         while(true)
         {
            §§push(this.§!!l§);
            loop3:
            while(true)
            {
               §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.§?e§);
               addr128:
               while(_loc4_)
               {
                  §§push(this.§!!l§);
                  continue loop3;
               }
               continue loop2;
            }
         }
      }
      
      protected function §+!'§(param1:Event) : void
      {
      }
      
      protected function §?e§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §9!y§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc5_ && param1))
         {
            §§pop().§§slot[2] = null;
            if(!_loc5_)
            {
               §§push(§§newactivation());
               if(!(_loc5_ && this))
               {
                  addr41:
                  §§pop().§§slot[1] = param1;
                  if(!_loc5_)
                  {
                     addr46:
                     if(e.currentTarget.data)
                     {
                        try
                        {
                           addr50:
                           §§push(§§newactivation());
                           if(!(_loc5_ && _loc2_))
                           {
                              §§pop().§§slot[2] = JSON.parse(e.currentTarget.data);
                              if(!_loc5_)
                              {
                                 §§push(AngryBirdsFP11.sUserProgress);
                                 if(!_loc5_)
                                 {
                                    if(!§§pop().hasTutorialBeenSeen(§#!$§.§1!g§ + §["M§.§0<§))
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          addr98:
                                          (AngryBirdsFP11.sUserProgress as §#!$§).saveTutorialSeen(§#!$§.§1!g§ + §["M§.§0<§);
                                          if(!(_loc5_ && param1))
                                          {
                                             addr113:
                                             §#!,§.§&"5§.§6"M§(jsonOb,false);
                                             if(_loc4_)
                                             {
                                                addr149:
                                                if(jsonOb.errorCode)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                   }
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr163);
                                             }
                                          }
                                          §9"6§.§#!o§();
                                          if(_loc4_)
                                          {
                                             addr163:
                                             this.close();
                                          }
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr98);
                              }
                              addr165:
                              return;
                           }
                        }
                        catch(e:Error)
                        {
                           §9"6§.§#!o§();
                           return;
                        }
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr50);
               }
            }
            §§goto(addr46);
         }
         §§goto(addr41);
      }
      
      private function §[!+§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §9"6§.§7"@§();
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§!!l§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§!!l§);
                     loop2:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§9!y§);
                        loop3:
                        while(true)
                        {
                           §§push(this.§!!l§);
                           while(true)
                           {
                              §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.§?e§);
                              loop5:
                              while(true)
                              {
                                 §§push(this.§!!l§);
                                 loop6:
                                 while(true)
                                 {
                                    §§pop().removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?e§);
                                    addr113:
                                    while(_loc1_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§!!l§);
                                          loop12:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§pop().removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§+!'§);
                                                while(true)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      §§push(this.§!!l§);
                                                      if(_loc1_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop3;
                                                }
                                                addr92:
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              if(_loc1_ || this)
                              {
                                 if(!_loc2_)
                                 {
                                    addr74:
                                    §§pop().removeEventListener(§9G§.§33§,this.§?e§);
                                    while(!_loc1_)
                                    {
                                       §§goto(addr92);
                                       §§goto(addr74);
                                    }
                                    while(true)
                                    {
                                       super.close();
                                       if(_loc1_ || _loc2_)
                                       {
                                          if(_loc1_ || this)
                                          {
                                             if(_loc1_ || this)
                                             {
                                                break;
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr113);
                                       }
                                       §§goto(addr79);
                                    }
                                    addr79:
                                    return;
                                    addr23:
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr23);
            }
         }
         §§goto(addr115);
      }
   }
}
