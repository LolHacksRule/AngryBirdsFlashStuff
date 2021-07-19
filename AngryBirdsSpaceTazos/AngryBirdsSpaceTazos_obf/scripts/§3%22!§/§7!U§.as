package §3"!§
{
   import § !Y§.§&$§;
   import §!?§.ServerCallEvent;
   import §0N§.§0!g§;
   import §3C§.§1!x§;
   import §3C§.§9!;§;
   import §3C§.§^p§;
   import §5X§.§+!#§;
   import §6"4§.§&a§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §77§.§&!>§;
   import flash.events.MouseEvent;
   
   public class §7!U§ extends §9!;§
   {
      
      private static var §^!n§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^!n§ = §4"!§;
         }
      }
      
      private var §1!k§:§'"1§;
      
      public function §7!U§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §>"2§ = true;
            while(true)
            {
               §1"$§ = true;
               loop1:
               while(_loc1_ || _loc1_)
               {
                  while(true)
                  {
                     super(§1#§.§1">§,§8"6§.§ K§,§0!g§.§[!y§(§^!n§));
                     if(!(_loc2_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr77);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               this.updateTextFields();
               while(true)
               {
                  this.§1!k§ = new §'"1§();
                  addr144:
                  while(true)
                  {
                     §§push(this.§1!k§);
                     loop3:
                     while(true)
                     {
                        §§push(ServerCallEvent.§-U§);
                        addr125:
                        while(true)
                        {
                           §§pop().addEventListener(§§pop(),this.§,$§);
                           continue loop3;
                        }
                     }
                  }
                  if(!(_loc1_ || this))
                  {
                     continue;
                  }
                  (§[S§.getItemByName("TextField_UserNameFieldForgotPassword") as §&!>§).§ !'§.addEventListener(MouseEvent.CLICK,this.§'h§);
                  addr86:
                  if(!(_loc1_ || this))
                  {
                     addr55:
                     while(_loc1_ || this)
                     {
                        §§goto(addr62);
                        §§goto(addr86);
                     }
                     continue loop0;
                     addr55:
                  }
                  if(_loc1_)
                  {
                     return;
                     addr44:
                  }
                  §§goto(addr144);
               }
            }
         }
         while(true)
         {
            (§[S§.getItemByName("TextField_UserNameFieldForgotPassword") as §&!>§).§ !'§.restrict = §&a§.§'"<§;
            §§goto(addr55);
         }
         §§goto(addr44);
      }
      
      private function §'h§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1.target.parent == §[S§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
            {
               if(_loc2_)
               {
                  §[S§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
               }
            }
         }
      }
      
      private function §,$§(param1:ServerCallEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            close();
         }
         do
         {
            § !g§.§;!'§.§>";§.openPopup(new §1!x§());
         }
         while(_loc2_ && param1);
         
      }
      
      private function §!"$§(param1:ServerCallEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§1I§(param1.text);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:* = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc6_:* = §§pop();
            if(_loc8_ || this)
            {
               if("SEND_PASSWORD" === _loc6_)
               {
                  if(_loc8_)
                  {
                     addr130:
                     §§push(0);
                     if(!(_loc8_ || param3))
                     {
                        addr155:
                     }
                  }
                  else
                  {
                     addr142:
                     §§push(1);
                     if(!_loc7_)
                     {
                        §§goto(addr155);
                     }
                  }
                  addr160:
                  loop7:
                  switch(§§pop())
                  {
                     case 0:
                        §§push((§[S§.getItemByName("TextField_UserNameFieldForgotPassword") as §&!>§).§5!m§());
                        do
                        {
                           §§push(§§pop());
                           if(_loc8_)
                           {
                              §§push(§§pop());
                              while(true)
                              {
                                 _loc4_ = §§pop();
                              }
                              addr108:
                           }
                           while(true)
                           {
                              §§push(§§pop().toLowerCase());
                              addr111:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 break loop7;
                              }
                              continue loop0;
                           }
                        }
                        while(_loc7_);
                        
                        if(§§pop())
                        {
                           if(_loc8_ || param1)
                           {
                              this.§1I§(_loc5_);
                              if(_loc8_)
                              {
                                 addr24:
                                 break loop0;
                                 addr95:
                              }
                              break loop0;
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr24);
                     case 1:
                        close();
                        if(_loc8_ || param1)
                        {
                           if(!_loc7_)
                           {
                              if(true)
                              {
                                 break loop0;
                              }
                              while(true)
                              {
                                 §§push(this.§1!k§.§>!!§(_loc4_));
                                 if(!_loc8_)
                                 {
                                    continue loop0;
                                 }
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(_loc7_ && param1)
                                    {
                                       continue loop0;
                                    }
                                    §§push(§§pop());
                                    if(!_loc7_)
                                    {
                                       _loc5_ = §§pop();
                                       if(_loc7_ && param1)
                                       {
                                          continue loop0;
                                       }
                                       if(_loc8_)
                                       {
                                          §§goto(addr70);
                                       }
                                       §§goto(addr111);
                                    }
                                    §§goto(addr108);
                                 }
                                 §§goto(addr109);
                              }
                           }
                           break;
                        }
                  }
                  continue loop6;
               }
               if("CANCEL_SEND_PASSWORD" === _loc6_)
               {
                  §§goto(addr142);
               }
               else
               {
                  §§push(2);
               }
               §§goto(addr160);
               §§goto(addr142);
            }
            §§goto(addr130);
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super.hide(param1,param2);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§1!k§);
            loop0:
            while(true)
            {
               §§push(ServerCallEvent.§-U§);
               loop1:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§,$§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§1!k§);
                     while(_loc2_)
                     {
                        §§push(ServerCallEvent.§+!K§);
                        if(!(_loc1_ && this))
                        {
                           §§pop().removeEventListener(§§pop(),this.§!"$§);
                           while(true)
                           {
                              §§push(this.§1!k§);
                              if(!(_loc2_ || _loc1_))
                              {
                                 break;
                              }
                              §§pop().dispose();
                              addr50:
                              if(_loc2_ || _loc2_)
                              {
                                 if(_loc2_ || _loc1_)
                                 {
                                    (§[S§.getItemByName("TextField_UserNameFieldForgotPassword") as §&!>§).§ !'§.removeEventListener(MouseEvent.CLICK,this.§'h§);
                                    addr74:
                                    if(!_loc1_)
                                    {
                                       return;
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       if(_loc2_ || this)
                                       {
                                          §§goto(addr50);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§1!k§ = null;
                                             continue loop6;
                                          }
                                          addr86:
                                       }
                                    }
                                    continue;
                                 }
                                 continue loop2;
                              }
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      private function §1I§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §[S§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
            do
            {
               § !g§.§;!'§.§>";§.openPopup(new §^p§(param1,§^p§.§>F§));
            }
            while(_loc3_);
            
         }
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §&$§.§[!1§.updateTextFields(§[S§,"ForgotPassword_Popup");
         }
      }
   }
}
