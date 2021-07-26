package §5!Y§
{
   import §%i§.§4"9§;
   import §,l§.§#!,§;
   import §1!t§.§!!G§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §^"F§.§8!§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §<r§ extends Popup
   {
       
      
      private var §!!l§:§3d§;
      
      private var §<!9§:String = "";
      
      public function §<r§(param1:§`_§, param2:StatePopupManager, param3:§8!§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(§ "<§.§%I§.Views.PopupView_ClaimBundlePopup[0],param1);
            loop0:
            while(true)
            {
               §§push(param1);
               §§push("MovieClip_ClaimBundle_");
               if(!_loc4_)
               {
                  §§push(§§pop() + param3.§[!2§);
               }
               §§push(§§pop().getItemByName(§§pop()));
               while(true)
               {
                  §§pop().setVisibility(true);
                  loop2:
                  while(_loc5_)
                  {
                     mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§if §);
                     while(true)
                     {
                        mClip.btnClaim.addEventListener(MouseEvent.CLICK,this.§7!S§);
                        addr126:
                        while(true)
                        {
                           §§push(param1.getItemByName("TextField_Header"));
                           loop5:
                           while(true)
                           {
                              (§§pop() as §4"9§).setText(param3.§?"7§);
                              addr110:
                              while(!(_loc4_ && param2))
                              {
                                 continue loop5;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  continue loop0;
                  if(_loc4_ && param2)
                  {
                     continue;
                  }
                  (§§pop() as §4"9§).setText(param3.description);
                  loop7:
                  while(true)
                  {
                     mClip.errorMessage.text = "";
                     for(; _loc5_ || this; loop9:
                     for(; !(_loc4_ && param1); while(true)
                     {
                        this.§,!$§();
                        if(_loc5_ || param1)
                        {
                           break;
                        }
                        continue loop9;
                     },return)
                     {
                        if(!_loc5_)
                        {
                           continue loop7;
                        }
                        if(_loc5_)
                        {
                           continue;
                        }
                        §§goto(addr145);
                     })
                     {
                        if(_loc5_)
                        {
                           this.§<!9§ = param3.§[!2§;
                           continue;
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr110);
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      private function §7!S§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.§-"!§();
            loop0:
            while(true)
            {
               mClip.errorMessage.text = "";
               loop1:
               while(true)
               {
                  this.§!!l§ = new §3d§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§!!l§);
                     loop3:
                     while(true)
                     {
                        §§pop().addEventListener(Event.COMPLETE,this.§9!y§);
                        loop4:
                        while(true)
                        {
                           §§push(this.§!!l§);
                           while(true)
                           {
                              §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.§?e§);
                              loop7:
                              while(!(_loc3_ && _loc3_))
                              {
                                 §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?e§);
                                 continue loop1;
                                 addr35:
                                 if(_loc3_ && this)
                                 {
                                    continue;
                                 }
                                 §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                                 if(!_loc3_)
                                 {
                                    if(_loc4_ || this)
                                    {
                                       addr54:
                                       if(_loc3_ && _loc2_)
                                       {
                                          continue loop1;
                                       }
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(true)
                                             {
                                                §§push(§9!7§);
                                                §§push(AngryBirdsFP11.§?8§ + "/claimfreebundle/");
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() + this.§<!9§);
                                                }
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§!!l§);
                                                loop12:
                                                while(true)
                                                {
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                         addr84:
                                                      }
                                                      §§pop().addEventListener(§9G§.§33§,this.§?e§);
                                                      while(true)
                                                      {
                                                         §§push(this.§!!l§);
                                                         if(_loc4_ || this)
                                                         {
                                                            continue;
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop7;
                                                   }
                                                   addr88:
                                                   while(true)
                                                   {
                                                      §§pop().addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§+!'§);
                                                      addr93:
                                                      while(_loc4_ || this)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr93);
                                                }
                                                continue loop3;
                                             }
                                             continue loop1;
                                             var _loc2_:URLRequest = §§pop().§,!l§(§§pop());
                                             if(_loc4_ || _loc3_)
                                             {
                                                _loc2_.method = URLRequestMethod.GET;
                                                this.§!!l§.load(_loc2_);
                                                addr221:
                                                if(_loc3_ && _loc2_)
                                                {
                                                   §§goto(addr221);
                                                }
                                             }
                                             return;
                                          }
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          continue loop7;
                                       }
                                    }
                                    §§goto(addr93);
                                 }
                                 §§goto(addr84);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr144);
      }
      
      private function §,!$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            (§[w§.getItemByName("MovieClip_Popup_Loading") as §!!G§).visible = false;
         }
      }
      
      private function §-"!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            (§[w§.getItemByName("MovieClip_Popup_Loading") as §!!G§).visible = true;
         }
      }
      
      private function §+!'§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.close();
         }
      }
      
      private function §9!y§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[2] = null;
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     §§pop().§§slot[1] = param1;
                     if(_loc4_ || this)
                     {
                        if(!_loc4_)
                        {
                           continue loop0;
                        }
                        this.§,!$§();
                        if(_loc4_ || param1)
                        {
                           if(true)
                           {
                              §§push(§§newactivation());
                           }
                           continue;
                           break;
                        }
                     }
                     try
                     {
                        addr71:
                        §§push(§§newactivation());
                        if(_loc4_ || _loc3_)
                        {
                           §§pop().§§slot[2] = JSON.parse(e.currentTarget.data);
                           if(_loc4_)
                           {
                              §§goto(addr127);
                           }
                           §§goto(addr137);
                        }
                     }
                     catch(e:Error)
                     {
                        if(!(_loc5_ && param1))
                        {
                           §;"G§({"errorMessage":"Something went wrong. Please try again later."});
                        }
                        return;
                     }
                     addr127:
                     if(jsonOb.errorCode)
                     {
                        if(!(_loc5_ && this))
                        {
                           addr137:
                           this.§;"G§(jsonOb);
                           if(_loc5_)
                           {
                           }
                           §§goto(addr148);
                        }
                     }
                     else
                     {
                        this.§&! §(jsonOb);
                     }
                     addr148:
                     return;
                  }
                  break;
               }
            }
         }
         if(§§pop().§§slot[1].currentTarget.data)
         {
            §§goto(addr71);
         }
         §§goto(addr137);
      }
      
      private function §?e§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§,!$§();
            do
            {
               this.§;"G§({"errorMessage":"Something went wrong. Please try again later."});
            }
            while(!_loc3_);
            
         }
      }
      
      private function §&! §(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §#!,§.§&"5§.§@J§();
         }
         do
         {
            this.close();
         }
         while(_loc2_);
         
      }
      
      private function §;"G§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            mClip.errorMessage.text = param1.errorMessage;
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§!!l§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     super.close();
                     if(!_loc2_)
                     {
                        addr67:
                        continue;
                     }
                     if(_loc2_)
                     {
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              return;
                           }
                           loop4:
                           while(true)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 addr131:
                                 §§push(this.§!!l§);
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       §§pop().removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?e§);
                                       while(true)
                                       {
                                          if(!(_loc2_ || _loc1_))
                                          {
                                             break loop5;
                                          }
                                          §§push(this.§!!l§);
                                          loop7:
                                          while(true)
                                          {
                                             §§pop().removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§+!'§);
                                             addr76:
                                             while(true)
                                             {
                                                §§push(this.§!!l§);
                                                if(!_loc1_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop7;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       addr87:
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this.§!!l§);
                                    continue loop4;
                                 }
                                 addr131:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(this.§!!l§);
                                 }
                                 addr124:
                              }
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§9!y§);
                                 §§goto(addr131);
                              }
                           }
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr76);
                  }
                  continue;
               }
               §§goto(addr124);
            }
         }
         §§goto(addr131);
      }
   }
}
