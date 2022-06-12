package §'!s§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §!K§.Item;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §0p§.§3!D§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   
   public class §8"@§ extends Popup
   {
       
      
      private var §<0§:§0]§;
      
      private const §!!s§:String = "Type code here...";
      
      public function §8"@§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(§ "A§.§4[§.Views.PopupView_RedeemGreenDayCode[0],param1);
         }
         while(true)
         {
            mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!a§);
            loop1:
            while(_loc4_)
            {
               mClip.btnSend.addEventListener(MouseEvent.CLICK,this.§2" §);
               while(true)
               {
                  TextField(mClip.codeTextField).addEventListener(FocusEvent.FOCUS_IN,this.§&"9§);
                  while(!_loc3_)
                  {
                     mClip.errorMessage.text = "";
                     if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      private function §2" §(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            mClip.errorMessage.text = "";
         }
         var _loc2_:String = mClip.codeTextField.text;
         if(!_loc5_)
         {
            if(_loc2_ != this.§!!s§)
            {
               while(true)
               {
                  this.§<0§ = new §0]§();
                  loop1:
                  while(!(_loc5_ && _loc3_))
                  {
                     §§push(this.§<0§);
                     while(true)
                     {
                        §§pop().addEventListener(Event.COMPLETE,this.§2p§);
                        loop3:
                        while(!(_loc5_ && param1))
                        {
                           §§push(this.§<0§);
                           loop4:
                           while(true)
                           {
                              §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.§>%§);
                              addr123:
                              while(_loc4_ || param1)
                              {
                                 §§push(this.§<0§);
                                 continue loop4;
                              }
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      private function §+X§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §&"9§(param1:FocusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(TextField(mClip.codeTextField).text == this.§!!s§)
            {
               if(!(_loc2_ && this))
               {
                  addr49:
                  TextField(mClip.codeTextField).text = "";
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            close();
         }
      }
      
      private function §2p§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§pop().§§slot[2] = null;
            if(!(_loc5_ && this))
            {
               §§push(§§newactivation());
               if(!_loc5_)
               {
                  §§pop().§§slot[1] = param1;
                  if(_loc4_ || _loc2_)
                  {
                     §§goto(addr46);
                  }
                  §§goto(addr50);
               }
            }
            §§goto(addr46);
         }
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
                  if(_loc4_)
                  {
                     §§goto(addr109);
                  }
               }
            }
            catch(e:Error)
            {
               §"!8§({"errorMessage":"Something went wrong. Please try again later."});
               return;
            }
            addr109:
            if(jsonOb.errorCode)
            {
               if(_loc4_)
               {
                  this.§"!8§(jsonOb);
                  if(_loc5_ && _loc2_)
                  {
                  }
               }
            }
            else
            {
               this.§%!b§(jsonOb);
            }
            §§goto(addr130);
         }
         addr130:
      }
      
      private function §>%§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§"!8§({"errorMessage":"Something went wrong. Please try again later."});
         }
      }
      
      private function §%!b§(param1:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            close();
         }
         var _loc2_:Item = §3!D§.§ @§(param1.avatarParts[0]);
         if(!(_loc3_ && _loc2_))
         {
            §%?§.§&'§(_loc2_);
         }
      }
      
      private function §"!8§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.errorMessage.text = param1.errorMessage;
         }
      }
   }
}
