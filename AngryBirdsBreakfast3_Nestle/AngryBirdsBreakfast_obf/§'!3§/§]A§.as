package §'!3§
{
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §'"!§.§<!7§;
   import §1!c§.§%!<§;
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §24§.§4!H§;
   import §2u§.§,6§;
   import §2u§.§]"%§;
   import §4!i§.§@"#§;
   import §;!p§.§+! §;
   import §;!p§.§^!%§;
   import §;!p§.§`!>§;
   import §;V§.§%c§;
   import §[!Z§.§>D§;
   import §[+§.§3!O§;
   import §[+§.§6!p§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §]A§ extends §;!o§
   {
      
      private static var § each§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § each§ = §+^§;
         }
      }
      
      private var §!!=§:§+! §;
      
      private var §<P§:§+! §;
      
      private var mParentContainer:§,6§;
      
      private var §[!I§:§6!p§;
      
      private var §%"8§:§]"%§;
      
      private var §[!j§:§]"%§;
      
      public function §]A§(param1:§,6§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §9p§ = false;
            loop0:
            while(true)
            {
               §]G§ = false;
               addr80:
               while(true)
               {
                  §^J§ = true;
                  addr63:
                  while(_loc2_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            super(§`!t§.§class§,§4z§.DEFAULT,this.§'!,§());
            for(; !_loc3_; this.mParentContainer = param1,if(!_loc3_)
            {
               return;
            })
            {
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr80);
            }
            §§goto(addr63);
         }
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §4!H§.§7o§(§ each§);
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            while(true)
            {
               this.updateTextFields();
               §§goto(addr85);
            }
         }
         addr85:
         while(true)
         {
            this.§+!,§();
            do
            {
               §29§.getItemByName("Button_Play").setVisibility(false);
               do
               {
                  §29§.getItemByName("MovieClip_SoundOff").setVisibility(!§ !4§.§4E§());
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(!_loc2_);
            
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §+!,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§[!I§ = (§ !4§.§%"7§ as AngryBirdsCustom).§6!g§;
            while(true)
            {
               this.§1"2§();
               §§goto(addr59);
            }
         }
         addr59:
         while(true)
         {
            §-p§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
            if(!_loc2_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §1"2§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = null;
         var _loc1_:MovieClip = §29§.getItemByName("Container_CountrySelection").mClip;
         _loc2_ = this.§[!I§.§;&§();
         if(_loc4_)
         {
            if(!this.§!!=§)
            {
               loop0:
               while(true)
               {
                  this.§!!=§ = new §+! §(_loc1_.width,_loc1_.height,§29§.getItemByName("Container_CountrySelection") as §,6§,_loc2_,§`!>§,0,0);
                  while(true)
                  {
                     _loc1_.addChild(this.§!!=§.§"]§);
                     loop2:
                     for(; _loc4_ || _loc1_; while(true)
                     {
                        this.§^!_§();
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     },return)
                     {
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr38);
         }
         §§goto(addr69);
      }
      
      private function §,!v§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = null;
         var _loc2_:MovieClip = §29§.getItemByName("Container_LanguageSelection").mClip;
         if(_loc6_ || _loc3_)
         {
            §§push(this.§<P§);
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     addr42:
                     this.§<P§.dispose();
                     if(!(_loc5_ && param1))
                     {
                        addr50:
                        _loc2_.removeChild(this.§<P§.§"]§);
                     }
                  }
                  §§goto(addr50);
               }
               _loc3_ = this.§[!I§.§,!$§(param1);
               if(_loc6_ || _loc2_)
               {
                  this.§<P§ = new §+! §(_loc2_.width,_loc2_.height,§29§.getItemByName("Container_LanguageSelection") as §,6§,_loc3_,§^!%§,0,0);
               }
               while(true)
               {
                  while(true)
                  {
                     _loc2_.addChild(this.§<P§.§"]§);
                     do
                     {
                        this.§0!X§();
                     }
                     while(_loc5_);
                     
                     if(_loc5_ && param1)
                     {
                        break;
                     }
                     if(false)
                     {
                        continue;
                     }
                     var _loc4_:§]"%§ = this.§<P§.§2!E§(0);
                     if(_loc6_ || this)
                     {
                        this.§@"7§(_loc4_);
                        do
                        {
                           if(_loc3_.length <= 1)
                           {
                              §29§.getItemByName("Container_SelectLanguageWindow").setVisibility(false);
                              if(!_loc5_)
                              {
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                              }
                              else
                              {
                                 addr176:
                              }
                           }
                           continue;
                           return;
                        }
                        while(!(_loc6_ || this));
                        
                     }
                     §29§.getItemByName("Container_SelectLanguageWindow").setVisibility(true);
                     §§goto(addr176);
                  }
               }
            }
            §§goto(addr42);
         }
         §§goto(addr50);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:* = false;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc6_:* = §§pop();
            if(_loc8_ || this)
            {
               if("SCROLL_COUNTRY_UP" === _loc6_)
               {
                  if(_loc8_ || param1)
                  {
                     §§push(0);
                     if(_loc7_)
                     {
                        addr396:
                     }
                  }
                  else
                  {
                     addr360:
                     §§push(2);
                     if(!(_loc8_ || param2))
                     {
                        addr410:
                     }
                  }
               }
               else if("SCROLL_COUNTRY_DOWN" === _loc6_)
               {
                  if(!_loc7_)
                  {
                     §§push(1);
                     if(!(_loc8_ || param1))
                     {
                        addr424:
                     }
                  }
                  else
                  {
                     addr374:
                     §§push(3);
                     if(_loc7_)
                     {
                        §§goto(addr396);
                     }
                  }
               }
               else
               {
                  if("SCROLL_LANGUAGE_DOWN" === _loc6_)
                  {
                     if(_loc8_)
                     {
                        §§goto(addr360);
                     }
                     addr446:
                     switch(§§pop())
                     {
                        case 0:
                           this.§=!K§(-this.§!!=§.§]v§);
                           §>D§.§9!q§("Menu_Confirm");
                           break;
                           addr314:
                        case 1:
                           this.§=!K§(this.§!!=§.§]v§);
                           addr298:
                           if(_loc7_)
                           {
                              break;
                           }
                           §>D§.§9!q§("Menu_Confirm");
                           addr289:
                           break loop0;
                           addr289:
                           break;
                        case 2:
                           this.§>>§(this.§<P§.§]v§);
                           §>D§.§9!q§("Menu_Confirm");
                           break loop0;
                           addr284:
                           addr275:
                        case 3:
                           this.§>>§(-this.§<P§.§]v§);
                           §>D§.§9!q§("Menu_Confirm");
                           addr260:
                           break loop0;
                           addr260:
                           addr270:
                        case 4:
                           continue;
                        case 5:
                           this.§@"7§(param3 as §]"%§);
                           loop1:
                           for(; _loc8_; while(true)
                           {
                              if(!(_loc7_ && param2))
                              {
                                 break loop0;
                              }
                              continue loop1;
                           })
                           {
                              if(_loc8_ || param2)
                              {
                                 if(_loc8_ || param1)
                                 {
                                    this.§7[§();
                                    while(true)
                                    {
                                       §>D§.§9!q§("Menu_Confirm");
                                       continue loop1;
                                    }
                                    addr166:
                                 }
                                 else
                                 {
                                    this.§,!v§(_loc4_);
                                    §@"#§.§,2§.§7!3§(_loc4_.toUpperCase());
                                    addr235:
                                    addr255:
                                 }
                              }
                              this.§%`§(param3 as §]"%§);
                              if(_loc8_)
                              {
                                 if(_loc8_)
                                 {
                                    this.§7[§();
                                    break;
                                 }
                                 §§goto(addr314);
                              }
                              else
                              {
                                 §§goto(addr260);
                              }
                           }
                           §>D§.§9!q§("Menu_Confirm");
                           addr196:
                           if(!_loc7_)
                           {
                              break loop0;
                           }
                           §§goto(addr289);
                           break;
                        case 6:
                           addr133:
                           § !4§.§%"7§.§7"6§(§%!<§.§8"%§);
                           if(!(_loc7_ && param3))
                           {
                              if(_loc8_ || param2)
                              {
                                 §>D§.§9!q§("Menu_Confirm");
                                 addr125:
                                 if(!_loc7_)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr196);
                              }
                              else
                              {
                                 §§goto(addr298);
                              }
                           }
                           else
                           {
                              §§goto(addr209);
                           }
                           §§goto(addr196);
                        case 7:
                           §§push(§ !4§.§4E§());
                           if(_loc8_)
                           {
                              §§push(!§§pop());
                           }
                           _loc5_ = §§pop();
                           for(; _loc8_; while(_loc8_ || param1)
                           {
                              loop4:
                              while(true)
                              {
                                 §29§.getItemByName("MovieClip_SoundOff").setVisibility(!_loc5_);
                                 while(true)
                                 {
                                    if(!(_loc7_ && param1))
                                    {
                                       if(_loc8_ || param3)
                                       {
                                          if(_loc8_ || this)
                                          {
                                             §>D§.§9!q§("Menu_Confirm");
                                             if(!_loc7_)
                                             {
                                                if(!(_loc8_ || param3))
                                                {
                                                   continue;
                                                }
                                                if(_loc7_)
                                                {
                                                   break loop4;
                                                }
                                                if(_loc8_ || param1)
                                                {
                                                   if(_loc8_ || param2)
                                                   {
                                                      if(true)
                                                      {
                                                         break loop0;
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr235);
                                                }
                                                else
                                                {
                                                   §§goto(addr155);
                                                }
                                             }
                                             break loop0;
                                          }
                                          §§goto(addr284);
                                       }
                                       break;
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr275);
                              }
                           })
                           {
                              if(_loc8_)
                              {
                                 if(!(_loc7_ && param3))
                                 {
                                    §§push(§ !4§.§%"7§);
                                    if(_loc8_)
                                    {
                                       (§§pop() as AngryBirdsCustom).setSoundsEnabled(_loc5_);
                                       continue;
                                    }
                                    §§goto(addr133);
                                 }
                                 else
                                 {
                                    §§goto(addr270);
                                 }
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr125);
                     }
                     break;
                  }
                  if("SCROLL_LANGUAGE_UP" === _loc6_)
                  {
                     if(_loc8_)
                     {
                        §§goto(addr374);
                     }
                     else
                     {
                        addr388:
                        §§push(4);
                        if(_loc7_ && param2)
                        {
                           §§goto(addr424);
                        }
                        §§goto(addr446);
                     }
                  }
                  else
                  {
                     if("SCROLLITEM_COUNTRY_CLICK" === _loc6_)
                     {
                        if(_loc8_ || param1)
                        {
                           §§goto(addr388);
                        }
                        else
                        {
                           addr402:
                           §§push(5);
                           if(_loc8_ || param1)
                           {
                              §§goto(addr410);
                           }
                           §§goto(addr446);
                        }
                     }
                     else
                     {
                        if("SCROLLITEM_LANGUAGE_CLICK" === _loc6_)
                        {
                           if(!_loc7_)
                           {
                              §§goto(addr402);
                           }
                        }
                        else if("BUTTON_PLAY" === _loc6_)
                        {
                           if(_loc8_ || param3)
                           {
                              addr421:
                              §§push(6);
                              if(!_loc7_)
                              {
                                 §§goto(addr424);
                              }
                           }
                        }
                        else if("TOGGLE_SOUNDS" !== _loc6_)
                        {
                           §§goto(addr446);
                           §§push(8);
                        }
                        §§goto(addr446);
                     }
                     §§goto(addr446);
                  }
                  §§goto(addr446);
                  §§push(7);
                  if(!_loc8_)
                  {
                  }
               }
               §§goto(addr446);
            }
            §§goto(addr421);
         }
      }
      
      private function §%`§(param1:§]"%§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§<!7§ = null;
         if(_loc6_ || _loc3_)
         {
            if(this.§%"8§)
            {
               §§goto(addr30);
            }
            §§goto(addr144);
         }
         addr30:
         var _loc3_:int = 0;
         for each(_loc2_ in (§29§.getItemByName("Container_CountrySelection") as §,6§).§,_§)
         {
            if(!(_loc5_ && param1))
            {
               if(_loc2_ is §]"%§)
               {
                  if(_loc6_ || _loc3_)
                  {
                     if(_loc2_.mName == this.§%"8§.mName)
                     {
                        if(!(_loc5_ && this))
                        {
                           (_loc2_ as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           if(_loc5_)
                           {
                              continue;
                           }
                        }
                        _loc2_.setEnabled(true);
                     }
                  }
               }
            }
         }
         if(!_loc5_)
         {
            addr144:
            param1.setEnabled(false);
            loop0:
            while(true)
            {
               param1.setComponentState(§-!g§.§+O§);
               while(true)
               {
                  this.§%"8§ = param1;
                  while(!_loc5_)
                  {
                     if(_loc6_)
                     {
                        this.§!!=§.§7!5§ = param1.mName;
                        if(_loc6_)
                        {
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private function §@"7§(param1:§]"%§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§<!7§ = null;
         var _loc2_:String = param1.mName.substr("ScrollItem_".length);
         if(_loc7_ || _loc3_)
         {
            this.§>0§(_loc2_);
            if(_loc7_ || this)
            {
               addr44:
               if(this.§[!j§)
               {
                  addr47:
                  for each(_loc3_ in (§29§.getItemByName("Container_LanguageSelection") as §,6§).§,_§)
                  {
                     if(!_loc6_)
                     {
                        if(!(_loc3_ is §]"%§))
                        {
                           continue;
                        }
                        if(_loc7_)
                        {
                           if(_loc3_.mName != this.§[!j§.mName)
                           {
                              continue;
                           }
                           if(!(_loc7_ || _loc3_))
                           {
                              continue;
                           }
                        }
                        (_loc3_ as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        if(!(_loc7_ || this))
                        {
                           continue;
                        }
                     }
                     _loc3_.setEnabled(true);
                  }
                  if(_loc7_)
                  {
                     addr171:
                     param1.setEnabled(false);
                     while(true)
                     {
                        param1.setComponentState(§-!g§.§+O§);
                        loop2:
                        for(; !(_loc6_ && _loc2_); while(!(_loc6_ && this))
                        {
                           this.§<P§.§7!5§ = param1.mName;
                           if(!(_loc6_ && param1))
                           {
                              return;
                           }
                        })
                        {
                           while(true)
                           {
                              this.§[!j§ = param1;
                              continue loop2;
                           }
                        }
                     }
                  }
                  §§goto(addr170);
               }
               §§goto(addr171);
            }
            §§goto(addr47);
         }
         §§goto(addr44);
      }
      
      private function §=!K§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(param1 != 0)
            {
               loop0:
               while(true)
               {
                  this.§!!=§.scroll(param1);
                  addr68:
                  while(true)
                  {
                     this.§^!_§();
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr34);
               }
            }
            addr34:
            return;
         }
         §§goto(addr68);
      }
      
      private function §>>§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(param1 != 0)
            {
               if(!_loc2_)
               {
                  this.§<P§.scroll(param1);
                  do
                  {
                     this.§0!X§();
                  }
                  while(!(_loc3_ || this));
                  
                  addr69:
               }
               §§goto(addr69);
            }
            return;
         }
         §§goto(addr69);
      }
      
      private function §^!_§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§!!=§.offset == 0);
         if(!_loc4_)
         {
            §§push(!§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.§!!=§.offset == this.§!!=§.data.length - this.§!!=§.§]v§);
         if(_loc5_ || _loc2_)
         {
            §§push(!§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc5_)
         {
            §§push(true);
            if(!(_loc4_ && _loc3_))
            {
               var _loc3_:*;
               §§push(_loc3_ = §§pop());
               if(_loc5_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc4_)
                  {
                     addr74:
                     _loc2_ = §§pop();
                     §§push(_loc3_);
                  }
                  if(!_loc4_)
                  {
                     addr79:
                     §§push(Boolean(§§pop()));
                  }
                  _loc1_ = §§pop();
                  if(_loc5_ || _loc1_)
                  {
                     §29§.getItemByName("Button_Country_ArrowUp").setVisibility(_loc1_);
                  }
                  do
                  {
                     §29§.getItemByName("Button_Country_ArrowDown").setVisibility(_loc2_);
                  }
                  while(!_loc5_);
                  
                  return;
                  addr111:
               }
               §§goto(addr74);
            }
            §§goto(addr79);
         }
         §§goto(addr111);
      }
      
      private function §0!X§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§<P§.offset == 0);
         if(_loc5_)
         {
            §§push(!§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.§<P§.offset == this.§<P§.data.length - this.§<P§.§]v§);
         if(!_loc4_)
         {
            §§push(!§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(true);
            if(!_loc4_)
            {
               var _loc3_:*;
               §§push(_loc3_ = §§pop());
               if(!_loc4_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc5_ || _loc3_)
                  {
                     addr69:
                     _loc2_ = §§pop();
                     §§push(_loc3_);
                  }
                  if(_loc5_ || _loc1_)
                  {
                     addr79:
                     §§push(Boolean(§§pop()));
                  }
                  _loc1_ = §§pop();
                  if(!_loc4_)
                  {
                     §29§.getItemByName("Button_Language_ArrowUp").setVisibility(_loc1_);
                  }
                  do
                  {
                     §29§.getItemByName("Button_Language_ArrowDown").setVisibility(_loc2_);
                  }
                  while(!(_loc5_ || _loc1_));
                  
                  return;
                  addr111:
               }
               §§goto(addr69);
            }
            §§goto(addr79);
         }
         §§goto(addr111);
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§@"#§.§,2§);
            while(true)
            {
               §§pop().updateTextFields(§29§,"SelectCountry_Popup");
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            §§push(§@"#§.§,2§);
            if(!(_loc1_ && this))
            {
               §§pop().updateTextFields(this.mParentContainer,"CountrySelectionState");
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue;
            }
            continue loop0;
         }
      }
      
      private function §>0§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §@"#§.§,2§.setLanguage(param1);
            do
            {
               §8&§.setLanguage(param1);
               do
               {
                  §29§.getItemByName("Button_Play").setVisibility(true);
               }
               while(_loc3_);
               
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      private function §"5§(param1:uint) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§3!O§ = null;
         var _loc2_:String = String.fromCharCode(param1).toLocaleLowerCase();
         var _loc3_:* = 0;
         var _loc4_:§3!O§ = null;
         var _loc5_:int = 0;
         while(_loc5_ < this.§!!=§.data.length)
         {
            if((_loc6_ = this.§!!=§.data[_loc5_]).name.charAt(0).toLocaleLowerCase() == _loc2_)
            {
               if(_loc8_ || _loc3_)
               {
                  §§push(_loc5_);
                  if(_loc8_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc3_ = §§pop();
                  if(_loc8_ || _loc3_)
                  {
                     _loc4_ = _loc6_;
                     if(_loc8_)
                     {
                        break;
                     }
                     §§goto(addr108);
                  }
               }
            }
            else
            {
               _loc5_++;
            }
         }
         if(!_loc4_)
         {
            if(_loc8_)
            {
               return;
            }
         }
         addr108:
         this.§=!K§(this.§!!=§.§="4§ + _loc3_);
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:RegExp = /[A-Za-z]/;
         if(!_loc4_)
         {
            if(String.fromCharCode(param1.charCode).match(_loc2_))
            {
               if(!_loc4_)
               {
                  this.§"5§(param1.charCode);
               }
               addr118:
            }
            else if(param1.keyCode == Keyboard.UP)
            {
               if(!(_loc4_ && this))
               {
                  this.§=!K§(-this.§!!=§.§]v§);
                  addr94:
               }
               §§goto(addr94);
            }
            else if(param1.keyCode == Keyboard.DOWN)
            {
               if(!(_loc4_ && this))
               {
                  if(_loc3_ || _loc3_)
                  {
                     this.§=!K§(this.§!!=§.§]v§);
                  }
                  else
                  {
                     §§goto(addr118);
                  }
                  §§goto(addr24);
               }
               if(_loc4_ && _loc3_)
               {
                  §§goto(addr94);
               }
            }
            addr24:
            return;
         }
         §§goto(addr94);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §-p§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
            do
            {
               super.dispose();
            }
            while(!_loc1_);
            
         }
      }
      
      private function §7[§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§@"#§.§,2§.§0!x§());
         if(!(_loc5_ && this))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§@"#§.§,2§.§2"2§());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_ || this)
         {
            §§push(§§pop() + "_");
            if(_loc4_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §%c§.§6"§("onFlashLanguageChange",_loc3_);
         }
      }
   }
}
