package §3C§
{
   import § !Y§.§&$§;
   import §0N§.§0!g§;
   import §4"§.§6!H§;
   import §5X§.§+!#§;
   import §7!0§.§]!e§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §9y§.§8"3§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §9!%§ extends §9!;§
   {
      
      private static var §6c§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §6c§ = §#u§;
         }
      }
      
      private var §;!O§:§]!e§;
      
      private var §8!2§:Boolean;
      
      public function §9!%§(param1:Boolean = true)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §>"2§ = true;
            while(true)
            {
               §1"$§ = true;
               addr53:
               if(_loc2_ && this)
               {
                  continue;
               }
               return;
               addr60:
            }
         }
         while(true)
         {
            super(§1#§.§7!F§,§8"6§.§ K§,§0!g§.§[!y§(§6c§));
            while(!(_loc2_ && param1))
            {
               this.§8!2§ = param1;
               do
               {
                  this.§;!O§ = new §]!e§();
               }
               while(_loc2_ && _loc2_);
               
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr53);
            }
         }
         §§goto(addr60);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            this.updateTextFields();
            loop1:
            while(true)
            {
               §[S§.getItemByName("Button_SendVerificationEmail").setVisibility(this.§8!2§);
               while(true)
               {
                  if(_loc1_)
                  {
                     if(this.§8!2§)
                     {
                        if(_loc1_ || _loc1_)
                        {
                           continue;
                        }
                        addr91:
                        while(true)
                        {
                           §§push(this.§;!O§);
                           loop4:
                           while(true)
                           {
                              §§push(§6!H§.§''§);
                              addr65:
                              while(true)
                              {
                                 §§pop().addEventListener(§§pop(),this.§%!x§);
                                 addr68:
                                 while(!_loc2_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     break;
                  }
                  continue loop1;
               }
               return;
            }
         }
      }
      
      private function §%!x§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(§ !g§.§;!'§);
            while(true)
            {
               (§§pop() as §`Y§).§>";§.closePopup(§1#§.§7!F§);
               §§goto(addr75);
            }
         }
         addr75:
         while(true)
         {
            §§push(§ !g§.§;!'§);
            if(_loc2_)
            {
               (§§pop() as §`Y§).§>";§.openPopup(new §,J§());
               if(!(_loc3_ && _loc2_))
               {
                  break;
               }
               continue;
            }
            continue loop0;
         }
      }
      
      private function §;S§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§ !g§.§;!'§);
            while(true)
            {
               (§§pop() as §`Y§).§>";§.closePopup(§1#§.§7!F§);
               §§goto(addr75);
            }
         }
         addr75:
         while(true)
         {
            §§push(§ !g§.§;!'§);
            if(_loc3_ || this)
            {
               (§§pop() as §`Y§).§>";§.openPopup(new §^p§(§8"3§.VERIFICATION_EMAIL_RESEND_ERROR,§^p§.§>F§));
               if(_loc3_)
               {
                  break;
               }
               continue;
            }
            continue loop0;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || this)
         {
            if("VERIFY_CLOSE" !== _loc4_)
            {
               if("SEND_VERIFICATION_EMAIL" === _loc4_)
               {
                  §§goto(addr73);
               }
               else
               {
                  §§push(2);
               }
               addr91:
               switch(§§pop())
               {
                  case 0:
                     close();
                     if(!(_loc6_ && param2))
                     {
                        break;
                     }
                     break;
                  case 1:
                     this.§;!O§.§@9§();
                     if(!(_loc6_ && param3))
                     {
                        break;
                     }
               }
               return;
            }
            if(!_loc6_)
            {
               §§push(0);
               if(!_loc5_)
               {
                  addr86:
               }
            }
            else
            {
               addr73:
               §§push(1);
               if(_loc5_)
               {
                  §§goto(addr86);
               }
            }
            §§goto(addr91);
         }
         §§goto(addr73);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.hide(param1,param2);
         }
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&$§.§[!1§.updateTextFields(§[S§,"VerifyAccount_Popup");
         }
         while(this.§8!2§)
         {
            if(_loc1_ && this)
            {
               break;
            }
            addr64:
            if(!(_loc2_ || _loc2_))
            {
               continue;
            }
            this.§9!#§();
            §§goto(addr64);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§8!2§)
            {
               loop3:
               while(true)
               {
                  §§push(this.§;!O§);
                  loop4:
                  while(true)
                  {
                     §§push(§6!H§.§''§);
                     loop5:
                     while(true)
                     {
                        §§pop().removeEventListener(§§pop(),this.§%!x§);
                        addr91:
                        while(true)
                        {
                           §§push(this.§;!O§);
                           if(_loc1_)
                           {
                              §§push(§6!H§.§3!b§);
                              if(_loc1_ || this)
                              {
                                 break;
                              }
                              continue loop5;
                           }
                           continue loop4;
                        }
                        addr61:
                        §§pop().removeEventListener(§§pop(),this.§;S§);
                        addr70:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              if(_loc1_ || this)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           §§goto(addr91);
                        }
                     }
                  }
               }
               addr84:
            }
            while(true)
            {
               super.dispose();
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr61);
               §§goto(addr70);
            }
            return;
         }
         §§goto(addr84);
      }
      
      private function §#I§(param1:TextField) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         §§push(_loc3_.x + _loc3_.width - _loc2_.x);
         if(!(_loc5_ && _loc2_))
         {
            return §§pop() + _loc2_.width / 2;
         }
      }
      
      public function §9!#§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:TextField = §[S§.getItemByName("Button_SendVerificationEmail").mClip.text;
         var _loc2_:MovieClip = §[S§.getItemByName("Button_SendVerificationEmail").mClip.MovieClip_Verification_Underline;
         var _loc3_:MovieClip = §[S§.getItemByName("Button_SendVerificationEmail").mClip.MouseHitArea;
         if(_loc4_ || _loc2_)
         {
            _loc2_.width = this.§#I§(_loc1_);
            while(true)
            {
               _loc3_.width = _loc2_.width;
               while(_loc4_)
               {
                  this.§45§(_loc1_);
                  if(_loc4_)
                  {
                     return;
                     addr65:
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      private function §45§(param1:TextField) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TextFormat = new TextFormat();
         if(_loc4_)
         {
            _loc2_.italic = true;
            do
            {
               param1.setTextFormat(_loc2_);
            }
            while(_loc3_);
            
         }
      }
   }
}
