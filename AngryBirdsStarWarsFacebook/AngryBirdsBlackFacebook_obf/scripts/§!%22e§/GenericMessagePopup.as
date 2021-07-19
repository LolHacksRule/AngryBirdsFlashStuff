package §!"e§
{
   import §7!$§.§&$§;
   import §;! §.§!Z§;
   import §;"Y§.§&#X§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.TextEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class GenericMessagePopup extends AbstractPopup
   {
      
      public static const §%!h§:String = "GenericMessagePopup";
      
      public static const §>#$§:String = "shop";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%!h§ = "GenericMessagePopup";
            do
            {
               §>#$§ = "shop";
            }
            while(!_loc2_);
            
         }
      }
      
      private var §%n§:String;
      
      private var §3#+§:String;
      
      public function GenericMessagePopup(param1:String, param2:String, param3:int, param4:int)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param3,param4,§&$§.§@8§.Popups.Popup_GenericMessage[0],§%!h§);
         }
         loop0:
         while(true)
         {
            §§push(this);
            if(!(_loc6_ && param1))
            {
               §§push(param1);
               if(_loc5_ || param3)
               {
                  §§push(§§pop());
                  if(!_loc6_)
                  {
                     §§pop().§3#+§ = §§pop() || "";
                     §§goto(addr76);
                  }
                  §§goto(addr78);
               }
               addr76:
               do
               {
                  if(_loc6_)
                  {
                     continue loop0;
                  }
                  §§push(this);
                  if(_loc5_)
                  {
                     §§push(param2);
                     if(!_loc6_)
                     {
                        §§push(§§pop());
                        if(_loc5_)
                        {
                           addr33:
                           if(§§pop())
                           {
                              continue;
                           }
                        }
                        §§pop();
                        addr36:
                        §§push("");
                        continue;
                     }
                     §§goto(addr33);
                  }
                  §§goto(addr36);
               }
               while(§§pop().§%n§ = §§pop(), !(_loc5_ || this));
               
               return;
            }
            §§goto(addr78);
         }
      }
      
      override protected function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.init();
         }
         var _loc1_:MovieClip = §^c§.mClip.Container_Content.Title;
         if(_loc2_ || this)
         {
            _loc1_.Text.text = this.§3#+§;
            loop0:
            while(true)
            {
               §^c§.mClip.Container_Content.message.htmlText = this.§%n§;
               while(true)
               {
                  §^c§.mClip.addEventListener(TextEvent.LINK,this.§&q§,false,0,true);
                  addr48:
                  if(!(_loc3_ && _loc2_))
                  {
                     if(_loc2_)
                     {
                        return;
                        addr67:
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            _loc1_.goldenBg.mask = _loc1_.Text;
            while(_loc2_ || _loc1_)
            {
               §^c§.mClip.Container_Content.mask = §^c§.mClip.MovieClip_ContentMask;
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr48);
            }
         }
         §§goto(addr67);
      }
      
      private function §&q§(param1:TextEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.text == §>#$§)
            {
               loop0:
               while(true)
               {
                  §§push(§4#;§.singleton);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop().popupManager);
                     loop2:
                     while(true)
                     {
                        §§pop().§<"w§(true,false);
                        addr86:
                        while(true)
                        {
                           §§push(§4#;§.singleton);
                           if(_loc2_)
                           {
                              §§push(§§pop().popupManager);
                              if(!_loc3_)
                              {
                                 §§pop().openPopup(new §!Z§(§`"W§.§?z§,§+5§.TOP),true,true,true);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    continue loop0;
                                 }
                                 continue;
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                        addr65:
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr86);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2.toUpperCase();
         if(!(_loc6_ && param2))
         {
            if("NAVIGATE_OUT" === _loc4_)
            {
               addr54:
               §§push(0);
               if(_loc6_ && param1)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=absw"),"_top");
                  if(_loc5_)
                  {
                     return;
                  }
                  break;
               default:
                  super.onUIInteraction(param1,param2,param3);
            }
            return;
         }
         §§goto(addr54);
      }
   }
}
