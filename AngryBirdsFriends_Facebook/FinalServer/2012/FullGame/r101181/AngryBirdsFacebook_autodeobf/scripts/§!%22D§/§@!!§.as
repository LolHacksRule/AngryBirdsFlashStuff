package §!"D§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import §'!s§.Popup;
   import §'!s§.StatePopupManager;
   import §3!7§.§?!F§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §@!!§ extends Popup
   {
      
      public static const §8"8§:String = "Halloween2012BuyerBonus";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §8"8§ = "Halloween2012BuyerBonus";
         }
      }
      
      private var §1!_§:Boolean = false;
      
      private var §]D§:§0]§;
      
      public function §@!!§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(§ "A§.§4[§.Views.PopupView_ExtraBirdGift[0],param1);
            do
            {
               mClip.Button_ClaimNow.addEventListener(MouseEvent.CLICK,this.claimGift);
               do
               {
                  this.§]!-§();
               }
               while(_loc4_);
               
            }
            while(_loc4_ && param2);
            
         }
      }
      
      private function claimGift(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!this.§1!_§)
            {
               loop0:
               while(true)
               {
                  this.§1!_§ = true;
                  addr180:
                  loop11:
                  while(true)
                  {
                     this.§]D§ = new §0]§();
                     addr166:
                     addr173:
                     while(!(_loc3_ || _loc3_))
                     {
                        continue loop11;
                     }
                     §§push(this.§]D§);
                     loop5:
                     while(true)
                     {
                        §§pop().addEventListener(Event.COMPLETE,this.§5!^§);
                        loop6:
                        while(!_loc2_)
                        {
                           §§push(this.§]D§);
                           loop8:
                           while(true)
                           {
                              §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.§0"1§);
                              addr132:
                              while(true)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    break loop8;
                                 }
                                 continue loop6;
                              }
                           }
                           §§push(this.§]D§);
                           loop4:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue loop5;
                                 }
                                 §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0"1§);
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(this.§]D§);
                                       while(!(_loc3_ || _loc2_))
                                       {
                                          continue loop4;
                                          §§goto(addr123);
                                       }
                                       addr123:
                                       addr91:
                                       §§pop().addEventListener(§+!D§.§25§,this.§0"1§);
                                       while(true)
                                       {
                                          if(_loc2_ && _loc3_)
                                          {
                                             continue loop9;
                                          }
                                          §§push(this.§]D§);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             break;
                                          }
                                          §§goto(addr74);
                                          §§goto(addr91);
                                       }
                                       addr74:
                                       §§push(§-!l§);
                                       §§push(AngryBirdsFP11.§76§ + "/claimfreebundle/");
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop() + §8"8§);
                                       }
                                       §§pop().load(§§pop().§%""§(§§pop()));
                                       addr70:
                                       while(true)
                                       {
                                          this.§]!-§();
                                          if(_loc2_ && this)
                                          {
                                             continue;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          §§goto(addr96);
                                       }
                                       addr96:
                                       return;
                                       addr48:
                                       addr29:
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr127);
                              }
                              §§goto(addr132);
                           }
                           addr127:
                           addr139:
                        }
                        §§goto(addr166);
                     }
                  }
               }
            }
            §§goto(addr29);
         }
         §§goto(addr180);
      }
      
      private function §]!-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            mClip.Movieclip_Loading.visible = !mClip.Movieclip_Loading.visible;
         }
      }
      
      private function §0"1§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §%?§.§6!7§(§-d§.§+""§);
         }
      }
      
      private function §5!^§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §?!F§.§;"§.§-Y§();
         }
         do
         {
            this.close();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            mClip.Button_ClaimNow.removeEventListener(MouseEvent.CLICK,this.claimGift);
            do
            {
               super.close();
            }
            while(_loc2_);
            
         }
      }
   }
}
